import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DBOperation.DBOperation;
import DBOperation.student;
import javax.servlet.RequestDispatcher;

public class deleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DBOperation dbo = new DBOperation();
        student s = new student();
        String idInsert = request.getParameter("idDelete");
        s.setId(idInsert);
        boolean success = dbo.deleteRecord(s);
        if(success){
            RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
            rd.forward(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("unsuccess.jsp");
            rd.forward(request, response);
        }
    }
}
