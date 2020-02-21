<%-- 
    Document   : insertRecordJSP
    Created on : Feb 20, 2020, 11:56:08 AM
    Author     : SODANE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Record</title>
    </head>
    <body>
        <form action="insertRecordServlet" method="post">
            ID: <input type="text" name="id">
            Name: <input type="text" name="sname">
            <input type="submit" name="Submit">
        </form>
    </body>
</html>
