import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

public class DBOperation {
    Connection connection;

    DBOperation() {
    }

    public void getConnection() throws ClassNotFoundException, SQLException {
        if (connection == null) {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/mvc";
            String username = "root";
            String password = "";
            connection = DriverManager.getConnection(url, username, password);
        }
    }

    public boolean deleteRecord(Student student)  {

        try{
            String sql = "delete from student where sno=?";

            getConnection();

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1,student.getId());
            return ps.executeUpdate()>0;

        }

        catch (ClassNotFoundException | SQLException e){}
        return false;
    }
}
