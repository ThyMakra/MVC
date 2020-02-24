<%-- 
    Document   : index
    Created on : Feb 24, 2020, 8:46:12 PM
    Author     : limch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="style.css" rel="stylesheet" type="text/css">
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register Student</title>
</head>
<body>
<div class="wrapper fadeInDown">
    <div id="formContent">
        <!-- Tabs Titles -->
        <h2 class="active"> Sign In </h2>
        <h2 class="inactive underlineHover">Sign Up </h2>
        
        <form action="login" method="post">
            <input type="text" id="login" class="fadeIn second" name="username" placeholder="login">
            <input type="text" id="password" class="fadeIn third" name="password" placeholder="password">
            <input type="submit" class="fadeIn fourth" value="Log In">
        </form>

        <!-- Remind Passowrd -->
        <div id="formFooter">
            <a class="underlineHover" href="#">Forgot Password?</a>
        </div>

    </div>
</div>
</body>
</html>