package ocinz.database;

import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ResultSetTest {
    @Test
    void testCreateResultSet() throws SQLException {
        Connection connection = ConnectionUtil.getConnection();
        Statement statement = connection.createStatement();

        String sql = """
                       SELECT * FROM customers;
                       """;
        ResultSet resultSet = statement.executeQuery(sql);

        while (resultSet.next()){
            String id = resultSet.getString("id");
            String name = resultSet.getString("name");
            String email = resultSet.getString("email");
            System.out.println(
                    String.join(", ", id, name, email)
            );
        }
        resultSet.close();
        statement.close();
        connection.close();
    }
}
