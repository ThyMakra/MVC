import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DBOperation.DBOperation;
import DBOperation.student;
import javax.servlet.RequestDispatcher;

public class DeleteServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DBOperation dbo = new DBOperation();
        student s = new student();
        String idInsert = request.getParameter("idDelete");
        s.setId(idInsert);
        boolean success = dbo.deleteRecord(s);
//        boolean success = true;
        if (success){
//            RequestDispatcher rd = request.getRequestDispatcher("ViewAllServlet");
//            rd.forward(request, response);
            response.sendRedirect("ViewAllServlet");
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("unsuccess.jsp");
            rd.forward(request, response);
        }
    }
}