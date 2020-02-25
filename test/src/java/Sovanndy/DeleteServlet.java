//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//public class DeleteServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        int id = 10;
//
//        Student student = new Student();
//        student.setId(id);
//
//        DBOperation dbOperation = new DBOperation();
//        if(dbOperation.deleteRecord(student)){
//            RequestDispatcher rd = request.getRequestDispatcher("Success.jsp");
//            rd.forward(request,response);
//        }
//        else{
//            RequestDispatcher rd = request.getRequestDispatcher("Failed.jsp");
//            rd.forward(request,response);
//        }
//    }
//}
