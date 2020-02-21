import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class insertRecordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException{
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String sname = request.getParameter("sname");
            
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/classdb";
            String username = "root";
            String password = "";
            Connection c = DriverManager.getConnection(url,username,password);
            
            PreparedStatement ps = c.prepareStatement("insert into mvc values(?,?)");
            ps.setInt(1, id);
            ps.setString(2, sname);
            ps.execute();
            
            PrintWriter out = response.getWriter();
            out.println("Success");
            
            System.out.println("Success insert data");
            
        } catch (Exception ex) {
            PrintWriter out = response.getWriter();
            out.println("Success");
            System.out.println("Error doPost block");
        }
    }
}