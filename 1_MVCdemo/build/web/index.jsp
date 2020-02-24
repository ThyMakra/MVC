<%-- 
    Document   : index
    Created on : Feb 18, 2020, 11:01:22 AM
    Author     : makra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register Student</title>
</head>
<body>
<form action="ValidateServlet" method="POST">
    ID : <input type="text" name="id">
    Name : <input type="text" name="name"/>
    <input type="submit" value="Enter"/>
</form>
</body>
</html>
