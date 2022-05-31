<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2021/2/17
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>registered</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
    <link href="${pageContext.request.contextPath}/jsp/css/login.css" rel='stylesheet' type='text/css' />

</head>
<body style="background: url(${pageContext.request.contextPath}/jsp/img/register.jpg);
        font-family: 'Open Sans', sans-serif;
	background-size:cover;
	-webkit-background-size:cover;
	-moz-background-size:cover;
	-o-background-size:cover;
	min-height:754px;">
<!--SIGN UP-->
<h1></h1>
<div class="login-form">
    <div class="close"> </div>
    <div class="head-info">
        <label class="lbl-1"> </label>
        <label class="lbl-2"> </label>
        <label class="lbl-3"> </label>
    </div>
    <div class="clear"> </div>
    <div class="avtar">
        <img src="${pageContext.request.contextPath}/jsp/img/avtar.png" />
    </div>
    <form action="/user/registered" method="post">

        <div>
            <input type="text" class="text" value="Username" name="name" id="name" autocomplete="off" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" /></div>
        <div class="key">
            <input id="password" type="password" value="Password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" />
        </div>
        <div class="signin">
            <input type="submit" value="register" >
        </div>
    </form>
</div>

    <script defer>
        if (${TF==false}) {
            alert("用户已经存在");
            ${TF=true};
        }
    </script>


</body>
</html>
