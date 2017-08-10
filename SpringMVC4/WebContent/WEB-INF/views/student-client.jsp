<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
					email:{email:true,required:true}
				},
				messages:{
					name:{minlength:"The length at least 5 letters"},
					age:{range:"Must be between 16 and 65"},
					email:{email:"Incorrect email format",required:"Do not leave the email blank"}
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
		</div>
		<div>
			<label>Age: </label>
			<form:input path="age"/>
		</div>
		<div>
			<label>Email: </label>
			<form:input path="email"/>
		</div>
		<div>
			<button>Insert</button>
		</div>
	</form:form>
</body>
</html>