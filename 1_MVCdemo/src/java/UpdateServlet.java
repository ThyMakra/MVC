import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        Student student = new Student(id,name);

        DBOperation_LH dbOperation = new DBOperation_LH();
        boolean success = dbOperation.updateData(student);

//        if(success){
//            RequestDispatcher rd = request.getRequestDispatcher("Success.jsp");
//            rd.forward(request,response);
//        }
//        else{
//            RequestDispatcher rd = request.getRequestDispatcher("Failed.jsp");
//            rd.forward(request,response);
//        }
    }
}

class DBOperation_LH {
    Connection connection;

    public void getConnection() throws ClassNotFoundException, SQLException {
        if (connection == null) {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/classdb";
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
                PreparedStatement prepareStatement = connection.prepareStatement("insert into mvc values(?, ?)");
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

    public boolean updateData(Student s){
        boolean rowUpdated = false;
        try{
            String sql = "update students set id=?, firstName=? where id="+s.getId();
            getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1,s.getId());
            ps.setString(2,s.getName());
            ps.close();
            connection.close();

            rowUpdated = ps.executeUpdate()>0;
        }
        catch (SQLException | ClassNotFoundException e){}
        return rowUpdated;
    }
}
