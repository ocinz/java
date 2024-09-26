package ocinz.database;

import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TestSQLInjection {
    @Test
    void testLoginSucceed() throws SQLException {
        Connection connection = ConnectionUtil.getConnection();
        Statement statement = connection.createStatement();

        String username = "admin";
        String password = "admin";
        String sql = "SELECT * FROM admin WHERE username='" +username+ "' AND password='"+password+"';";
        ResultSet resultSet = statement.executeQuery(sql);

        if (resultSet.next()){
            System.out.println("sukses login: "+ resultSet.getString("username"));
        }else {
            System.out.println("gagal");
        }
        resultSet.close();
        statement.close();
        connection.close();
    }

    @Test
    void testSQLInjection() throws SQLException {
        Connection connection = ConnectionUtil.getConnection();
        Statement statement = connection.createStatement();

        String username = "admin'; #";
        String password = "wrong password";
        String sql = "SELECT * FROM admin WHERE username='" +username+ "' AND password='"+password+"';";
        ResultSet resultSet = statement.executeQuery(sql);

        if (resultSet.next()){
            System.out.println("sukses login: "+ resultSet.getString("username"));
        }else {
            System.out.println("gagal");
        }
        resultSet.close();
        statement.close();
        connection.close();
    }
}
