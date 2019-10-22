
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE>
<html>

<head>
<title>HOME PAGE</title>

</head>
<body>
<h2>THIS IS HOME PAGE</h2>




<!-- display userid and role -->
<p>
User: <security:authentication property="principal.username"/><br>
Role(s): <security:authentication property="principal.authorities"/>
</p>

 
<!--  LOGOUT BUTTON -->
<form:form method="POST" action="${pageContext.request.contextPath}/logout">
<input type="submit" value="Logout"/>
</form:form>


<!-- only visible to managers -->
<security:authorize access="hasRole('MANAGER')">
<a href="${pageContext.request.contextPath}/leaders">Managers section</a> <br>
</security:authorize>


<!-- only visible to admins -->
<security:authorize access="hasRole('ADMIN')">
<a href="${pageContext.request.contextPath}/system">Admins section</a>
</security:authorize>


</body>

</html>