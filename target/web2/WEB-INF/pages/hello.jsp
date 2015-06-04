<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<%--<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>--%>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<title>Web mvc form</title>
	<style type="text/css">
		.error {
			color: red;
		}
	</style>
	<script language="JavaScript">
		function pprint(){
			var namee = document.getElementById("name").value;
			var agee = document.getElementById("age").value;
			if(namee != "" || agee != "") {
				if (namee != "") {
					document.getElementById("print").innerHTML = "Hello<p></p>" + "My name is " + document.getElementById("name").value + ".";
				}
				else {
					document.getElementById("error1").innerHTML = "<div class='error'>Error</div>";
				}
				if (parseInt(agee) >= 0 && parseInt(agee) <= 99) {
					document.getElementById("print2").innerHTML = "I'm " + document.getElementById("age").value + " years old.";
				}
				else {
					document.getElementById("error2").innerHTML = "<div class ='error'>Error</div>"
				}
			}
			else{
				document.getElementById("error1").innerHTML = "<div class='error'>Error</div>";
				document.getElementById("error2").innerHTML = "<div class='error'>Error</div>";
			}
			return ;
		}

		//		function check(){
		//			return true;
		//		}
	</script>
</head>
<body>
<form action ="page2.html" method="get" align="center">
	<center><h1>${message}</h1></center>
	<table align="center">
		<tr>
			<td>
				Name :
			</td>
			<td>
				<input type="text" class="form-control" id="name">
			</td>
			<td>
				<div id="error1"></div>
			</td>
		</tr>
		<tr>
			<td>
				Age :
			</td>
			<td>
				<input type="text" class="form-control" id="age">
			</td>
			<td>
				<div id="error2"></div>
			</td>
		</tr>
	</table>
	<p><input type="submit" value="Submit" onclick="return pprint()"> </p>
	<p id = "print"></p>
	<p id = "print2"></p>
</form>
</body>
</html>