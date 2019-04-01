package sample;

import Connection.ConnectionPool;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;


import java.sql.*;

import Connection.Cleaner;
import javafx.scene.control.Button;

import static sample.ControllerHome.getUserName;

public class ControllerOpponent{

    private static Connection connection = null;
    private static Statement statement = null;
    private static ResultSet rs = null;
    private PreparedStatement pstmt = null;

    private String username = getUserName();
    private String opponentUsername = null;
    private int opponentOnline = 0;
    private static int gameId;


    @FXML
    public TextField opponent;
    public Button challenge;
    public Label usernameWrong;
    public Label challengeYou;
    public Label userOffline;

    public void sceneHome(ActionEvent event) { //home button
        ChangeScene.change(event, "Game.fxml");
    }

    public void findOpponent(ActionEvent event) {

        try{
            connection = ConnectionPool.getConnection();
            usernameWrong.setVisible(false);
            challengeYou.setVisible(false);

            //gets the opponents username, using a prepared statment beacause it's user input
            String insertSql = "SELECT username, online FROM Player WHERE username =?;";
            pstmt = connection.prepareStatement(insertSql);
            pstmt.setString(1, (opponent.getText().toLowerCase())); //toLowerCase
            rs = pstmt.executeQuery();

            //if it is a registered username
            if(rs.next()){
                opponentUsername = rs.getString("username");
                opponentOnline = rs.getInt("Online");
                if(opponentUsername.equals(username)) {
                    setVisible(challengeYou);
                } else if(opponentOnline == 0){
                    setVisible(userOffline);
                } else {
                    makeGame(username, opponentUsername);
                    ChangeScene.change(event, "Wait.fxml");
                }
            }
            //if the username doesn't exsist
            else {
                setVisible(usernameWrong);
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }finally {
            Cleaner.close(pstmt, rs, connection);
        }
    }

    private boolean makeGame(String player1, String player2) {
        Statement statement = null;
        ResultSet rsGameId = null;

        try{
            connection = ConnectionPool.getConnection();
            statement = connection.createStatement();

            //Checks if the player you are trying to challenge is already challenged
            String sqlCheckIfPlayerAlreadyChallenged = "SELECT gameId FROM `Player` WHERE `Player`.`username` = '" + player2 + "'";
            rsGameId = statement.executeQuery(sqlCheckIfPlayerAlreadyChallenged);
            rsGameId.next();
            int opponentGameId = rsGameId.getInt("gameId");

            if(opponentGameId != 0){ // If the opponent has a gameId it means they are challenged by another player
                Cleaner.close(statement, rsGameId, connection);
                return false;
            }

            //Creates a new game
            String sqlInsert = "INSERT INTO Game(player1, player2, p1Points, p2Points) VALUES('"+ player1 + "', '" + player2 + "', 0, 0);";
            statement.executeUpdate(sqlInsert, Statement.RETURN_GENERATED_KEYS);
            rsGameId = statement.getGeneratedKeys();
            rsGameId.next();
            gameId = rsGameId.getInt(1);

            //Updates both players with a gameId that points to the new game
            sqlInsert = "UPDATE `Player` SET `gameId` = " + gameId + " WHERE `Player`.`username` = '" + player1 + "'";
            statement.executeUpdate(sqlInsert);

            sqlInsert = "UPDATE `Player` SET `gameId` = " + gameId + " WHERE `Player`.`username` = '" + player2 + "'";
            statement.executeUpdate(sqlInsert);

            Cleaner.close(statement, rsGameId, connection);
            return true;

        }catch (SQLException e) {
            e.printStackTrace();
            return false;
        }finally {
            Cleaner.close(statement, rsGameId, connection);
        }
    }

   public static void resetGameId(){
        gameId = 0;
   }

   private void setVisible(Label label){
       usernameWrong.setVisible(false);
       userOffline.setVisible(false);
       challengeYou.setVisible(false);

       label.setVisible(true);
   }

    public static int getGameId() {
        if(gameId != 0) return gameId;
        else{
            ResultSet rsGameId = null;
            try {
                connection = ConnectionPool.getConnection();
                statement = connection.createStatement();

                String username = getUserName();

                //Checks if the player you are trying to challenge is already challenged
                String sqlGetGameIdFromPlayer = "SELECT gameId FROM `Player` WHERE `Player`.`username` = '" + username + "'";
                rsGameId = statement.executeQuery(sqlGetGameIdFromPlayer);
                rsGameId.next();
                gameId = rsGameId.getInt("gameId");
                return  gameId;
            }
            catch (Exception e){
                e.printStackTrace();
                return  0;
            }finally {
                Cleaner.close(statement, rsGameId, connection);
            }
        }
    }
}