<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Intranet for 2. semester hold B</h1>

<c:if test="${empty(sessionScope.user)}">
   <p>Du kan logge på her: <a href="login.jsp">Login</a></p>
</c:if>

<c:if test="${sessionScope.user != null}">
    Status på login: ${requestScope.message}
    <p>${sessionScope.user.login} ${sessionScope.user.password} ${sessionScope.user.role}</p>
    <p><a href="classlist">Se klasseliste</a></p>
</c:if>

<br/>
<a href="hello-servlet">Hello Servlet</a><br/>

</body>
</html>