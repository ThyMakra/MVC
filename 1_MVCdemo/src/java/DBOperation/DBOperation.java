package DBOperation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DBOperation {
    Connection con = null;
    public Connection getCon() throws ClassNotFoundException, SQLException {
        String url = "jdbc:postgresql://localhost:5432/student";
        String user = "postgres";
        String password = "1234";
//        String user = "root";
//        String password = "";
        if (con == null){
            Class.forName("org.postgresql.Driver");
//            Class.forName("com.mysql.jdbc.Driver");
//            String url = "jdbc:postgresql://127.0.0.1:63921/student?user=postgres&password=1234&ssl=true";
//            String url = "jdbc:mysql://localhost:3306/kit";
            con = DriverManager.getConnection(url, user, password);
//            Class.forName("com.mysql.jdbc.Driver");
//            con = DriverManager.getConnection("jdbc:mysql://localhost:3308/kit?autoReconnect=true&useSSL=false","root","");
        }
        return con;
    }
    public boolean insertRecord(student student){
        String id = student.getId();
        String name = student.getName();
        try {
            getCon();
            PreparedStatement ps = con.prepareStatement("insert into student values (?,?)");
            ps.setString(1,id);
            ps.setString(2,name);
            ps.execute();
            return true;
        } catch (ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
        return false;
    } 
    public boolean deleteRecord(student student){
        String id = student.getId();
        try{
            getCon();
            Statement st = con.createStatement();
            String sql = String.format("delete from student where id = '%s' ", id);
            st.execute(sql);
            return true;
        } catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
        return false;
    }
    public boolean updateRecord(student student){
        String id = student.getId();
        String name = student.getName();
        try{
            getCon();
            Statement st = con.createStatement();
            String sql = String.format("update student set name = '%s' where id = '%s';", name,id);
            st.executeUpdate(sql);
            return true;
        } catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
        return false;
    }
    public void ViewRecord() throws SQLException{
        ResultSet rs;
        try{
            getCon();
            Statement st = con.createStatement();
            student student = new student();
            String sql = String.format("select * from student where  id = '%s' ", student.getId());
//            String sql = String.format("select name from student where id = '1' ");
            rs = st.executeQuery(sql);
            while(rs.next()){
                System.out.println(rs.getString("id") + " : " + rs.getString("name"));
            }
        } catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
    }
    public ArrayList<student> viewAllRecords() throws SQLException, ClassNotFoundException{
        ArrayList<student> studentList = new ArrayList<student>();
        String sql = "select * from student";
        try{
            getCon();
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                String id = resultSet.getString("id");
                String sname = resultSet.getString("name");
                student student = new student(id, sname);
                studentList.add(student);
            }
            resultSet.close();
            statement.close();
            con.close();
            return studentList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return studentList;
    }
    public boolean checkUser(String user, String pass){
        boolean st = false;
        try{
            getCon();
            PreparedStatement ps = con.prepareStatement("select * from register where username=? and password=?");
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            st = rs.next();
        } catch (ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
        return st;
    }
}
