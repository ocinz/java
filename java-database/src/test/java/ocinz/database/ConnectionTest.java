package ocinz.database;

import com.mysql.cj.jdbc.Driver;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionTest {
    @BeforeAll
    static void beforeAll() throws SQLException {
        Driver mysqlDriver = new Driver();
        DriverManager.registerDriver(mysqlDriver);
    }

    @Test
    void testConnection() throws SQLException {
        String url = "jdbc:mysql://ocinz.tech:3306/java_learn?serverTimezone=Asia/Jakarta";
        String user = "root";
        String password = "password2315";
        Connection connection = DriverManager.getConnection(url, user , password);

        System.out.println("Connection Success!");
    }
}
