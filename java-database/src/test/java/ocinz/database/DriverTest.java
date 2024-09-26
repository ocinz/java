package ocinz.database;

import com.mysql.cj.jdbc.Driver;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

import java.sql.DriverManager;
import java.sql.SQLException;

public class DriverTest {
    @Test
    void testDriver() throws SQLException {
        Driver mysqlDriver = new Driver();
        DriverManager.registerDriver(mysqlDriver);
    }

}
