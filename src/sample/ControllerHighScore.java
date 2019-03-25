package sample;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import Connection.Cleaner;
import Connection.ConnectionPool;

import java.util.ArrayList;

public class ControllerHighScore {

    @FXML
    public Label userCol;
    public Label scoreCol;

    public void initialize(){ highscoreTable(); }

    public void sceneGame(ActionEvent event) { //hjemknapp
        ChangeScene.change(event, "Game.fxml");
    }

    public void highscoreTable(){

        Connection connection = null;
        Statement statement = null;
        ResultSet hs = null;

        String sqlHighScoreUser = "SELECT username FROM `Player` ORDER BY points desc LIMIT 5;";
        String sqlHighScorePoints = "SELECT points FROM `Player` ORDER BY points desc LIMIT 5;";

        ArrayList<String> usernameList = new ArrayList<>();
        ArrayList<String> pointsList = new ArrayList<>();

        try {
            connection = ConnectionPool.getConnection();
            statement = connection.createStatement();

            //Legger navn i tabellen highScoreList
            hs = statement.executeQuery(sqlHighScoreUser);
            while(hs.next()){
                usernameList.add( hs.getString("username"));
            }

            //Legger til poeng i highScoreList
            hs = statement.executeQuery(sqlHighScorePoints);

            while(hs.next()){
                pointsList.add( Integer.toString(hs.getInt("points")));
            }

            String userText = "";
            for(String name : usernameList){
                userText += name +"\n\n";
            }
            String pointsText = "";
            for(String points : pointsList){
                pointsText += points +"\n\n";
            }
            userCol.setText(userText);
            scoreCol.setText(pointsText);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Cleaner.close(statement, hs, connection);
        }
    }
}
