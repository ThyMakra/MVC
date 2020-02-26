<%@page import="DBOperation.student"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="student_cards">
    <div class="carousel-inner">
    <% 
        ArrayList<student> students = null;
        students = (ArrayList<student>)request.getAttribute("studentList");
    %>
    <%
        int count = 0;
        for (student student : students) {
            
    %>
        <div class="carousel-item<% if (count == 0) { %> active<% } %>">
            <div class="card-container">
                <img src="static/img/<%= student.profile_pic %>" alt="user"/>
                <h3 class="student-name"><%= student.getName() %></h3>
                <h6 class="student-id">ID: <%= student.getId() %></h6>

                <div class="student-information" style="height: 250px;background: black!important;"></div>
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
                <div class="buttons" style="background-color: #1F1A36;">
                    <button class="student-card-button ghost">
                        <a href="ViewOneServlet?idView=<%= student.getId() %>" style="color: white">
                            View
                        </a>
                    </button>
                    <button class="student-card-button" style="background-color: #d92121;">
                        <a href="DeleteServlet?idDelete=<%= student.getId() %>" style="color: white">
                            Delete
                        </a>
                    </button>
                </div>
            </div>
        </div>

    <%
            count++;
        }
    %>
    </div>
</c:set>
<c:set var="indicators">
    <% 
        ArrayList<student> new_students = null;
        new_students = (ArrayList<student>)request.getAttribute("studentList");
        for (int i = 0; i < new_students.size(); i++) { 
    %>
        <li data-target="#carouselExampleIndicators" data-slide-to="<%= i %>" class="<% if (i == 0) { %>active<% } %>"></li>
    <% } %>
</c:set>
        
<t:template>
    <jsp:body>
        
    <div class="content fifth-content"  style="background: transparent">
        <div class="mycss">
            <div id="carouselExampleIndicators" class="carousel slide student-card" 
                data-ride="carousel" style="width: 70%;height:758px;margin-left: 90px;">
                <ol class="carousel-indicators" style="background: transparent">
                    ${indicators}
                </ol>
                
                ${student_cards}

            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next" style="margin-right: 20px;">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    </jsp:body>
</t:template>
