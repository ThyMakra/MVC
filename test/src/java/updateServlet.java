import DBOperation.DBOperation;
import DBOperation.student;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class updateServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DBOperation dbo = new DBOperation();
        student s = new student();
        String id = request.getParameter("idUpdate");
        String newName = request.getParameter("nameUpdate");
        s.setId(id);
        s.setName(newName);
        boolean success = dbo.updateRecord(s);
        if(success){
            RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
            rd.forward(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("unsuccess.jsp");
            rd.forward(request, response);
        }
    }
}
