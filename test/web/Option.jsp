<%-- 
    Document   : index
    Created on : Feb 20, 2020, 11:34:23 AM
    Author     : limch
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DBOperation.DBOperation" %>
<%@page import="DBOperation.student" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MVC_Task</title>
    </head>
    <style>
        table{border: black 2px solid; }
    </style>
    <body>
        <form method="post" action="NewServlet">
            <select id="option" onchange="change()" name="option">
                <option></option>
                <option value="insert">Insert</option>
                <option value="update">Update</option>
                <option value="delete">Delete</option>
                <option value="select">Select</option>
                <option value="selectAll">Select All</option>
            </select>
            <div id="formInsert" style="display: none">
                <input type="text" placeholder="id" name="idInsert"> <br>
                <input type="text" placeholder="name" name="nameInsert"> <br>
                <input type="submit" value="insert">
            </div>
            <div id="formUpdate" style="display: none">
                <p>In case you want to update your name in database</p>
                Your ID: <input type="text" placeholder="id" name="idUpdate"> <br>
                New name: <input type="text" placeholder="name" name="nameUpdate"> <br>
                <input type="submit" value="update">
            </div>
            <div id="formDelete" style="display: none">
                <input type="text" placeholder="id" name="idDelete"> <br>
                <input type="submit" value="Delete">
            </div>
             <div id="formSelect" style="display: none">
                <input type="text" placeholder="idSelect"> <br>
                <input type="submit" value="Select">
            </div>
            <div id="formSelectAll" style="display: none">
               <table>
                <% DBOperation dop = new DBOperation();
                    ResultSet rs =  dop.viewAllRecords();
                     while (rs.next()) {%>
                     <tr>
                         <td><%=rs.getString("id")%></td>
                         <td><%=rs.getString("name")%></td>
                     </tr>
                <%}%>
                </table>
            </div>
        </form>
  <script>
    function change() {
      const choice = document.getElementById("option").value;
      if (choice === "insert" ) {
        document.getElementById("formInsert").style.display = "block";
        document.getElementById("formUpdate").style.display = "none";
        document.getElementById("formDelete").style.display = "none";
        document.getElementById("formSelect").style.display = "none";
        document.getElementById("formSelectAll").style.display = "none";
      } else if (choice === "update"){
        document.getElementById("formInsert").style.display = "none";
        document.getElementById("formUpdate").style.display = "block";
        document.getElementById("formDelete").style.display = "none";
        document.getElementById("formSelect").style.display = "none";
        document.getElementById("formSelectAll").style.display = "none"; 
      } else if (choice === "delete"){
        document.getElementById("formInsert").style.display = "none";
        document.getElementById("formUpdate").style.display = "none";
        document.getElementById("formDelete").style.display = "block";
        document.getElementById("formSelect").style.display = "none";
        document.getElementById("formSelectAll").style.display = "none"; 
      } else if (choice === "select"){
        document.getElementById("formInsert").style.display = "none";
        document.getElementById("formUpdate").style.display = "none";
        document.getElementById("formDelete").style.display = "none";
        document.getElementById("formSelect").style.display = "block";
        document.getElementById("formSelectAll").style.display = "none"; 
      } else{
        document.getElementById("formInsert").style.display = "none";
        document.getElementById("formUpdate").style.display = "none";
        document.getElementById("formDelete").style.display = "none";
        document.getElementById("formSelect").style.display = "none";
        document.getElementById("formSelectAll").style.display = "block"; 
      }
    }
  </script>
    </body>
</html>
