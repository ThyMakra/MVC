<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:wrapper>
    <h1>Welcome</h1>
</t:wrapper>

<t:userpage userName="${user.fullName}">
  <p>
    First Name: ${user.firstName} <br/>
    Last Name: ${user.lastName} <br/>
    Phone: ${user.phone}<br/>
  </p>
  <a href="template/index.html">go to index</a>
  <a href="template/index-test-added-1-page.html">go to index-test-added-1-page</a>
  
  <a href="template/index-test-added-1-page.html">go to index-test-added-1-page</a>
</t:userpage>