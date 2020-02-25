<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! ArrayList<String> students = new ArrayList(Arrays.asList("Makra", "Annie", "Nora")); %>
    
<c:set var="student">
    <%
        int count = 0;
        for (String student: students) {    
        
    %>
    
        <div class="carousel-item<% if (count == 0) { %> active<% }%>">
            <div class="card-container">
                <img src="static/img/author_image.png" alt="user"/>
                <h3 class="student-name">(<%= student %>)</h3>
                <h6 class="student-id">ID: </h6>

                <div class="student-information" style="height: 250px;background: black!important;">

                </div>
                <div class="student-skills"  style="background-color: #1F1A36;">
                    <h6>Skills</h6>
                    <ul>
                        <li>Docker</li>
                        <li>React</li>
                        <li>Django</li>
                        <li>NextJS</li>
                    </ul>
                </div>
                <div class="buttons" style="background-color: #1F1A36;">
                    <button class="student-card-button ghost">
                        Update
                    </button>
                    <button class="student-card-button" style="background-color: #d92121;">
                        Delete
                    </button>
                </div>
            </div>
        </div>
    <%
            count++;
        }
    %>
</c:set>
<t:all_students>
    <%@ variable name-given="x" scope="NESTED" %>
    <jsp:attribute name="indicators">
      
    </jsp:attribute>
      
    <jsp:attribute name="student_cards">
      ${student}
    </jsp:attribute>
    
</t:all_students>
<%-- callingpage.jsp --%>
<c:set var="x" value="1"/>
${x} <%-- (x == 1) --%>
<my:example>
    ${x} <%-- (x == 2) --%>
</my:example>
${x} <%-- (x == 1) --%>
<%-- example.tag --%>
<%@ variable name-given="x" scope="NESTED" %>
${x} <%-- (x == null) --%>
<c:set var="x" value="2"/>
<jsp:doBody/>
${x} <%-- (x == 2) --%>
<c:set var="x" value="4"/>