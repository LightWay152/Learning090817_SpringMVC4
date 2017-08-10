<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>Insert title here</title>
</head>
<body>
	<h1>STUDENT</h1>
	${message}
	<form:form action="insert.php" modelAttribute="stu">
		<div>
			<label>Name: </label>
			<form:input path="name"/>
			<form:errors path="name"></form:errors>
		</div>
		<div>
			<label>Age: </label>
			<form:input path="age"/>
			<form:errors path="age"></form:errors>
		</div>
		<div>
			<label>Email: </label>
			<form:input path="email"/>
			<form:errors path="email"></form:errors>
		</div>
		<div>
			<button>Insert</button>
		</div>
	</form:form>
</body>
</html>