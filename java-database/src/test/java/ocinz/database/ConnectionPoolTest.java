package ocinz.database;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.SQLException;

public class ConnectionPoolTest {
    @Test
    void testHikariCP() throws SQLException {
        HikariConfig config = new HikariConfig();
        config.setDriverClassName("com.mysql.cj.jdbc.Driver");
        config.setJdbcUrl("jdbc:mysql://ocinz.tech:3306/java_learn?serverTimezone=Asia/Jakarta");
        config.setUsername("root");
        config.setPassword("password2315");

        config.setMaximumPoolSize(10);
        config.setMinimumIdle(5);
        config.setIdleTimeout(60_000);
        config.setMaxLifetime(10 * 60_000);

        HikariDataSource dataSource = new HikariDataSource(config);

        Connection connection = dataSource.getConnection();

        //return connection to pool
        connection.close();

        //close all connection
        dataSource.close();
    }

    @Test
    void testUtil() throws SQLException{
        Connection connection = ConnectionUtil.getDataSource().getConnection();
    }
}
