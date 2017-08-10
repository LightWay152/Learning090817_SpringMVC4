<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
	<base href="/SpringMVC4/"/>
	<meta charset=utf-8>
	<title>Spring MVC</title>
	<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
	
	<script>
		$(function(){
			$("#stu").validate({
				rules:{
					name:{minlength:5},
					age:{range:[16,65]},
					email:{email:true, required:true}
				},
				messages:{
					name:{minlength:'<s:message code="Length.stu.name"/>'},
					age:{range:'<s:message code="Range.stu.age"/>'},
					email:{
						email:'<s:message code="Email.stu.email"/>', 
						required:'<s:message code="NotEmpty.stu.email"/>'
					}
				}
			});
		});
	</script>
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