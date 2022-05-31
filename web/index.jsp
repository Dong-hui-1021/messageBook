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
  <title>Login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
  <meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
  <link href="jsp/css/login.css" rel='stylesheet' type='text/css' />

</head>
<body>
<!--SIGN UP-->
<h1>Write down your whispers</h1>
<div class="login-form">
  <div class="close"> </div>
  <div class="head-info">
    <label class="lbl-1"> </label>
    <label class="lbl-2"> </label>
    <label class="lbl-3"> </label>
  </div>
  <div class="clear"> </div>
  <div class="avtar">
    <img src="jsp/img/avtar.png" />
  </div>
  <form action="/user/login" method="post">
  <div style="padding-left: 330px; padding-top: 10px; color: #006dcc"  ><a href="jsp/registered.jsp">Register now</a></div>
    <div>
  <input type="text" class="text" value="Username" name="name" id="name" autocomplete="off" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" style="background: url(jsp/img/adm.png) no-repeat 10px 15px;"/></div>
    <div class="key">
      <input id="password" type="password" value="Password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" style="background: url(jsp/img/key.png) no-repeat 10px 23px;"/>
    </div>
      <div class="signin">
          <input type="submit" value="Login" >
      </div>
  </form>
</div>


  <script  defer="defer">
    if (${TF==false}) {

      alert("用户名或密码有误");

      ${TF=true}
    }
  </script>

</body>
</html>
