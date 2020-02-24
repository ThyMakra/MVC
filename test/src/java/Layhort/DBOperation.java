import java.sql.*;
import java.util.ArrayList;

public class DBOperation {
    Connection connection;

    public void getConnection() throws ClassNotFoundException, SQLException {
        if (connection == null) {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/mvc";
            String username = "root";
            String password = "";
            connection = DriverManager.getConnection(url, username, password);
        }
    }

    public boolean updateData(Student s){
        try{
            String sql = "update students set firstName=? where id=?";
            getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setString(1,s.getName());
            ps.setInt(2,s.getId());

            ps.close();
            connection.close();

            return ps.executeUpdate()>0;
        }
        catch (SQLException | ClassNotFoundException e){}
        return false;
    }

    public boolean checkUser(String username, String password){
        try{
            getConnection();
            PreparedStatement ps = connection.prepareStatement("select * from student where email=?, password=?");
            ps.setString(1,username);
            ps.setString(2,password);

            ResultSet res = ps.executeQuery();
            return res.next();
        }
        catch (SQLException | ClassNotFoundException e){}
        return false;
    }
}
