import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DBOperation.DBOperation;
import DBOperation.student;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author limch
 */
public class insertServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            DBOperation dbo = new DBOperation();
            student s = new student();
            String idInsert = request.getParameter("idInsert");
            String nameInsert = request.getParameter("nameInsert");
            s.setId(idInsert);
            s.setName(nameInsert);
            dbo.insertRecord(s);
            response.sendRedirect("ViewAllServlet");
    }
}