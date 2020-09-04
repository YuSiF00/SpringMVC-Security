<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>

<head>
<title>luv2code Company Home Page</title>
</head>

<body>

	<h2>luv2code Company Home Page</h2>
	<br>

	<p>Welcome to the luv2code Company Home Page</p>

	<hr>

	<!-- display user name and role -->

	<p>
		User:
		<security:authentication property="principal.username" />
		<br>
		<br> Role(s):
		<security:authentication property="principal.authorities" />
	</p>

	<hr>


	<security:authorize access="hasRole ('MANAGER')">

		<!-- Add a link to point to /leaders ... this is for the managers -->

		<p>
			<a href="${pageContext.request.contextPath}/leaders">LeaderShip
				Meeting</a> (Only for the Manager peeps)

		</p>

	</security:authorize>

	<hr>

	<security:authorize access="hasRole ('ADMIN')">

		<!-- Add a link to point to /systems ... this is for the Admin -->

		<p>
			<a href="${pageContext.request.contextPath}/systems">IT Systems
				Meeting</a> (Only for the Admin peeps)

		</p>

	</security:authorize>
	<hr>


	<!-- Add a logOut button -->

	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">

		<input type="button" value="Logout">


	</form:form>

</body>

</html>