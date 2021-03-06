package Connection;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * The class Connection is used when creating a connection to the database.
 */

public class ConnectionPool {
    // Hikari pool needs a configuration in order to run
    private static HikariConfig config = new HikariConfig();
    private static HikariDataSource ds;

    static {
        // Gets user directory for the program to find the Password file
        String path = System.getProperty("user.dir");
        File file = new File(path + "/src/password.txt");
        /*
          All the details for the connection are set as static so they persist
          and can be used by different classes without creating an object
         */
        config.setJdbcUrl("jdbc:mysql://mysql.stud.iie.ntnu.no:3306/iaevange");
        config.setUsername("iaevange");
        config.setPassword(readPassword(file));
        config.setDriverClassName("com.mysql.cj.jdbc.Driver");
        config.addDataSourceProperty("cachePrepStmts", "true");
        config.addDataSourceProperty("prepStmtCacheSize", "250");
        config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");
        config.setMaxLifetime(600000);
        ds = new HikariDataSource(config);
    }

    /**
     * The static method is used when creating a connection.
     * @return the connection.
     */
    public static Connection getConnection() throws SQLException{
        return ds.getConnection();
    }

    /**
     * The static method reads password from file.
     * @param filename the name of the file.
     * @return the connection.
     */
    public static String readPassword(File filename) {
        String password = null;
        FileReader fr = null;
        BufferedReader br = null;
        try {
            fr = new FileReader(filename);
            br = new BufferedReader(fr);
            password = br.readLine();
            br.close();
        }
        catch (IOException e) {
            e.printStackTrace();
            br.close();
        }
        catch (Exception e) {
            e.printStackTrace();
            br.close();
        } finally {
            return password;

        }
    }
}
