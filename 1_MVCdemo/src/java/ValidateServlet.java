import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ValidateServlet extends HttpServlet {
//    something
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        Student student = new Student(id, name);
        DBOperation db = new DBOperation();
        boolean success = db.insertRecord(student);
        if (success) {
            req.setAttribute("student", student);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("user");
            requestDispatcher.forward(req, resp);
        } else {
            
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }
}
