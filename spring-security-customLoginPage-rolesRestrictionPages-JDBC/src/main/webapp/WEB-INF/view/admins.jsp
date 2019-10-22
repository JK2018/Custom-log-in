
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE>
<html>

<head>
<title>ADMINS PAGE</title>

</head>
<body>
<h2>THIS PAGE IS ONLY ACCESSIBLE TO ADMINISTRATORS</h2>




<!-- display userid and role -->
<p>
User: <security:authentication property="principal.username"/><br>
Role(s): <security:authentication property="principal.authorities"/>
</p>


<p> EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - 
EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - 
EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - 
EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE - EXAMPLE PAGE -  </p>


<!--  LOGOUT BUTTON -->
<form:form method="POST" action="${pageContext.request.contextPath}/logout">
<input type="submit" value="Logout"/>
</form:form>



<a href="${pageContext.request.contextPath}/">Home Page</a> <br>




</body>

</html>