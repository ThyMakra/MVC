<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance" prefix="layout"%>

<layout:extends name="base.jsp">
    <layout:put name="header" type="REPLACE">
        <h2>This is an example about layout management with JSP Template Inheritance</h2>
    </layout:put>
    <layout:put name="contents">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin porta,
        augue ut ornare sagittis, diam libero facilisis augue, quis accumsan enim velit a mauris.
    </layout:put>
</layout:extends>