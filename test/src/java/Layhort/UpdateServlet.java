//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//public class UpdateServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        int id = Integer.parseInt(request.getParameter("id"));
//        String name = request.getParameter("name");
//        Student student = new Student(id,name);
//
//        DBOperation dbOperation = new DBOperation();
//        boolean success = dbOperation.updateData(student);
//
//        if(success){
//            request.setAttribute("student",student);
//            RequestDispatcher rd = request.getRequestDispatcher("Success.jsp");
//            rd.forward(request,response);
//        }
//        else{
//            RequestDispatcher rd = request.getRequestDispatcher("Failed.jsp");
//            rd.forward(request,response);
//        }
//    }
//}
