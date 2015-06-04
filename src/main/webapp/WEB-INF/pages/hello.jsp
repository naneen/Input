<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <%--<script src="${pageContext.request.contextPath}/js/jquery.js"></script>--%>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
    <script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>

    <link rel="stylesheet" href="http://jqueryvalidation.org/files/demo/site-demos.css">

    <title>Index</title>

    <style>
        body{
            color: white;
            text-align: center;
            background: #8CBEB2;
            padding: 40px;
        }
        h1{
            color: #dc6344;
        }
        div{
            margin-left: auto;
            margin-right: auto;
            width: 60%;
        }
        button{
            width: 40%;
            background-color: orange;
        }
    </style>
</head>
<body>
<h1>${message}</h1>
<form action ="result.html" method="get" align="center">
    <div>
        <label for="name" class="required">Name:</label>
        <input type="text" class="form-control" id="name" name="name" required>
    </div>
    <br>
    <div>
        <label for="age">Age:</label>
        <input type="number" class="form-control" id="age" name="age" required>
    </div>
    <br>
    <br>
    <input type="submit" value="Submit" onclick="return checkValid()">
    <br>
    <br>
    <p id="printName"></p>
    <p id="printAge"></p>

</form>

<script>
    // just for the demos, avoids form submit
    jQuery.validator.setDefaults({
        debug: true,
        success: "valid"
    });
    var form = $( "#myform" );
    form.validate({
        rules: {
            age: {
                min: 0,
                max: 99
            }
        }
    });

    function checkValid() {
        var varName = $("#name").val();
        var varAge = $("#age").val();
        if( varName == '' && varAge == '' ) {
            alert("Enter Some Text In Input Field");
            return false;
        }
        else if( !(varAge < 100 && varAge >= 0) ){
            alert("Age : 0-99");
            return false;
        }
        else{
            return true;
        }
    };
</script>

</body>
</html>