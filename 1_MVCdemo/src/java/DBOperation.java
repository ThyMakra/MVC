import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.*;

public class DBOperation {
    Connection con;
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
    
    public boolean insertRecord(Student student) {
        int id = student.getId();
        String name = student.getName();
        try {
            getConnection(); // establish the connection
            // insert DAO to the table
            PreparedStatement prepareStatement = connection.prepareStatement("insert into student values(?, ?)");
            prepareStatement.setInt(1, id);
            prepareStatement.setString(2, name);
            prepareStatement.execute();
            return true;
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
            return false;
        }
    }
    public int insertRecords(ArrayList<Student> students) {
        int records_number = 0;
        int id;
        String name;
        try {
            getConnection(); // establish the connection
            // insert DAO to the table
                PreparedStatement prepareStatement = connection.prepareStatement("insert into student values(?, ?)");
                for (Student student : students) {
                    id = student.getId();
                    name = student.getName();
                    prepareStatement.setInt(1, id);
                    prepareStatement.setString(2, name);
                    prepareStatement.addBatch();
                    records_number++;
                }
                prepareStatement.executeBatch();
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
        }
        return records_number;
    }
public ArrayList<Student> viewAll(){
        ArrayList<Student> studentList = new ArrayList<Student>();
        String sql = "select * from student";
        try{
            getCon();
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                int sno = Integer.parseInt(resultSet.getString("sno"));
                String firstName = resultSet.getString("firstName");
                Student student = new Student(sno,firstName);
                studentList.add(student);
            }
            resultSet.close();
            statement.close();
            con.close();
            return studentList;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return studentList;
    }
    private void getCon() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
