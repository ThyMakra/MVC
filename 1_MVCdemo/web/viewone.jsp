<%@page import="DBOperation.student"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="student_cards">
    <div class="carousel-inner">
    <% 
        student student = (student)request.getAttribute("student");
    %>
        <!--<div class="carousel-item">-->
            <div class="card-container">
                <img src="static/img/<%= student.profile_pic %>" alt="user"/>
                <h3 class="student-name">
                    <%= student.getName() %>
                </h3>
                <h6 class="student-id">ID: <%= student.getId() %></h6>

        <%--                <div class="student-information" style="height: 250px;background: black!important;"></div>--%>
                <form id="UpdateForm" action="UpdateServlet" method="POST" style="margin-top: 100px; margin-bottom: 50px">
                    <input type="text" name="student_name" placeholder="Update your name">
                    <input type="text" name="student_id" placeholder="Update your id">
                </form>
                <div class="student-skills"  style="background-color: #1F1A36;">
                    <h6>Skills</h6>
                    <ul>
                        <li>UI / UX</li>
                        <li>CSS</li>
                        <li>JavaScript</li>
                        <li>React</li>
                        <li>Node</li>
                    </ul>
                </div>
                <div class="buttons" style="background-color: #1F1A36; ">
                    <button class="student-card-button ghost" style="padding: 0 20px!important">
                        <!--<a href="" style="color: white">-->
                        <input type="submit" class="button" form="UpdateForm" value="UPDATE" style="margin-bottom: 0px; background: #1F1A36;padding-left: 0px" >
                            <!--Update-->
                        <!--</a>-->
                    </button>
                    <button class="student-card-button" style="background-color: #d92121; ">
                         <a href="DeleteServlet?idDelete=<%= student.getId() %>" style="color: white"> 
                            Delete
                        </a>
                    </button>
                </div>
            </div>
        <!--</div>-->
    </div>
</c:set>

        
<t:template>
    <jsp:body>
        
    <div class="content fifth-content"  style="background: transparent">
        <div class="mycss">
            ${student_cards}
        </div>
    </div>
    </jsp:body>
</t:template>