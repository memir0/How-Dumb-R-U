package sample;

import Connection.ConnectionClass;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;

import javafx.scene.control.TextField;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;


public class ControllerButton extends ChangeScene{

    @FXML
    public TextField textField;
    public TextField email;
    public TextField password;

    public void sceneInfo(ActionEvent event) throws IOException {
       super.change(event, "Info.fxml"); //bruker super-metode
    }

    public void sceneHome(ActionEvent event) throws IOException {
        super.change(event, "Main.fxml"); //bruker super-metode
    }

    public void register(ActionEvent event) throws IOException {
        super.change(event, "Register.fxml"); //bruker super-metode
    }

    public void feedback(ActionEvent event) throws IOException {
        super.change(event, "Feedback.fxml"); //bruker super-metode
    }

    public void reg() {
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();

        String sql = "INSERT INTO navn VALUES('" + textField.getText() + "')";
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(sql);
        }catch (SQLException e){
            e.printStackTrace();
        }

        connection.close();

    }

    public boolean login() {
		ConnectionClass connectionClass = new ConnectionClass();
		Connection connection = connectionClass.getConnection();

		String sql = "SELECT log_password FROM log_user WHERE log_username =" + email.getText()  + ";";
		try {
			Statement statement = connection.createStatement();
			statement.executeUpdate(sql);
		}catch (SQLException e){
			e.printStackTrace();
		}

        connection.close();
	}
}
