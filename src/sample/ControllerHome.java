package sample;

import Connection.Cleaner;
import Connection.ConnectionPool;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TextField;
import javafx.scene.control.Label;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ControllerHome {

    private Connection connection = null;
    private ResultSet rs = null;
    private PreparedStatement pstmt = null;
    private static String userName;

    @FXML
    private TextField username;
    public TextField password;
    public Label visibility;

    public boolean sceneInfo(ActionEvent event) { //trykker på infoknapp
        ChangeScene.change(event, "Info.fxml"); //bruker super-metode
        return true;
    }

    public boolean sceneHome(ActionEvent event) { //feedback knapp
        ChangeScene.change(event, "Main.fxml");
        return true;
    }

    public boolean register(ActionEvent event) { //trykker registrer
        ChangeScene.change(event, "Register.fxml");
        return true;
    }

    public boolean feedback(ActionEvent event) { //feedback knapp
        ChangeScene.change(event, "Feedback.fxml");
        return true;
    }

    public void playerLogin(ActionEvent event) {

		String sql = "SELECT username, online, password, salt FROM Player WHERE username = ?;";
		try {
		    connection = ConnectionPool.getConnection();
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, username.getText());
            rs = pstmt.executeQuery();

            if (!(rs.next())) {
                ChangeScene.changeVisibility(true, visibility); //her skal en pop-up komme
            }
            else if (username.getText().isEmpty() || password.getText().isEmpty()) {
                ChangeScene.changeVisibility(true, visibility); //her skal en pop-up komme
            }
            else if (rs.getBoolean("online")) {
                ChangeScene.changeVisibility(true, visibility); //her skal en pop-up komme
            }
            else {
                String salt = rs.getString("salt");
                String realPassword = rs.getString("password");
                String inputPassword = password.getText();

                HashSalt hashedSaltedPass = new HashSalt();
                byte[] byteSalt = hashedSaltedPass.decodeHexString(salt);
                String hashedPassword = hashedSaltedPass.genHashSalted(inputPassword, byteSalt);

                if (realPassword.equals(hashedPassword)) {
                    setUserName(username.getText());
                    Logout.logIn();
                    ChangeScene.change(event, "Game.fxml");
                } else {
                    ChangeScene.changeVisibility(true, visibility); //her skal en pop-up komme
                }
            }
            }catch(Exception e){
                e.printStackTrace();
            }finally{
                Cleaner.close(pstmt, rs, connection);
            }
	}

    public void setUserName(String username){
        this.userName = username;
    }

    public static String getUserName(){
        return userName;
    }
}
