import DBOperation.DBOperation;
import DBOperation.student;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class viewServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
            DBOperation dbo = new DBOperation();
            student s = new student();
            String id = request.getParameter("idSelect");
            s.setId(id);
            boolean success  dbo.ViewRecord(s);
            if (success){
                RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
                rd.forward(request,response);
            } else{
                RequestDispatcher rd = request.getRequestDispatcher("unsuccess.jsp");
                rd.forward(request,response);
            }
    }
}
