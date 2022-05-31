<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2021/2/28
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>添加留言</title>

    <!-- Favicons -->
    <link href="${pageContext.request.contextPath}/jsp/img/favicon.png" rel="icon">
    <link href="${pageContext.request.contextPath}/jsp/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/jsp/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!--external css-->
    <link href="${pageContext.request.contextPath}/jsp/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/jsp/lib/bootstrap-wysihtml5/bootstrap-wysihtml5.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/jsp/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/jsp/css/style-responsive.css" rel="stylesheet">

    <!-- =======================================================
      Template Name: Dashio
      Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
      Author: TemplateMag.com
      License: https://templatemag.com/license/
    ======================================================= -->
</head>

<body>
<section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
        <div class="sidebar-toggle-box">
            <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
        </div>
        <!--logo start-->
        <a href="index.html" class="logo"><b>记事本<span>notebook</span></b></a>
        <!--logo end-->
        <div class="nav notify-row" id="top_menu">

        </div>
        <div class="top-menu">
            <ul class="nav pull-right top-menu">
                <li><a class="logout" href="../index.jsp">Logout</a></li>
            </ul>
        </div>
    </header>

    <section id="main-content">
        <section class="wrapper">
            <!-- page start-->
            <div class="row mt">
                <div class="col-sm-3">
                    <section class="panel">
                        <div class="panel-body">
                            <a href="${pageContext.request.contextPath}/jsp/addmessage.jsp" class="btn btn-compose">
                                <i class="fa fa-pencil"></i>  Write
                            </a>
                            <ul class="nav nav-pills nav-stacked mail-nav">
                                <li class="active"><a href="/message/selectAll"> <i class="fa fa-inbox"></i> Select  <span class="label label-theme pull-right inbox-notification">#</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/jsp/addmessage.jsp"> <i class="fa fa-envelope-o"></i> Write</a></li>

                                <li><a href="/message/selectMine?id=${user.id}"> <i class="fa fa-file-text-o"></i> Select Mine <span class="label label-info pull-right inbox-notification"></span></a></a></li>
                                <li><a href="/message/draft?id=${user.id}"> <i class="fa fa-exclamation-circle"></i> draft</a></li>
                                <li><a href="/message/deleted?id=${user.id}"> <i class="fa fa-trash-o"></i> Deleted</a></li>
                            </ul>
                        </div>
                    </section>
                    <section class="panel">
                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked labels-info ">
                                <li>
                                    <h4>待开发</h4>
                                </li>

                                <li>
                                    <a href="#">

                                        <p></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">

                                        <p></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">

                                        <p></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">

                                        <p></p>
                                    </a>
                                </li>
                            </ul>
                            <a href="#"> + Add More</a>
                            <div class="inbox-body text-center inbox-action">
                                <div class="btn-group">
                                    <a class="btn mini btn-default" href="javascript:;">
                                        <i class="fa fa-power-off"></i>
                                    </a>
                                </div>
                                <div class="btn-group">
                                    <a class="btn mini btn-default" href="javascript:;">
                                        <i class="fa fa-cog"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <div class="col-sm-9">
                    <section class="panel">
                        <header class="panel-heading wht-bg">
                            <h4 class="gen-case">
                                Add Message
                            </h4>
                        </header>
                        <div class="panel-body">

                            <div class="compose-mail">
                                <form role="form-horizontal" method="post" action="/message/insert">
                                    <div class="form-group">
                                        <label for="subject" class="">描述:</label>
                                        <input type="text" tabindex="1" id="subject" name="description" class="form-control" value="">
                                    </div>
                                    <div class="compose-editor">
                                        <textarea class="wysihtml5 form-control" rows="9" name="message"></textarea>
                                    </div>
                                    <input type="hidden" value="${user.id}" name="id">
                                    <div class="compose-btn">
                                        <button class="btn btn-theme btn-sm" type="submit"><i class="fa fa-check"></i> Send</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
        <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
        <div class="text-center">
            <p>
                &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
            </p>
            <div class="credits">
                <!--
                  You are NOT allowed to delete the credit link to TemplateMag with free version.
                  You can delete the credit link only if you bought the pro version.
                  Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
                  Licensing information: https://templatemag.com/license/
                -->
                Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
            </div>
            <a href="mail_compose.html#" class="go-top">
                <i class="fa fa-angle-up"></i>
            </a>
        </div>
    </footer>
    <!--footer end-->
</section>
<!-- js placed at the end of the document so the pages load faster -->
<script src="${pageContext.request.contextPath}/jsp/lib/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/jsp/lib/bootstrap/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="${pageContext.request.contextPath}/jsp/lib/jquery.dcjqaccordion.2.7.js"></script>
<script src="${pageContext.request.contextPath}/jsp/lib/jquery.scrollTo.min.js"></script>
<script src="${pageContext.request.contextPath}/jsp/lib/jquery.nicescroll.js" type="text/javascript"></script>
<!--common script for all pages-->
<script src="${pageContext.request.contextPath}/jsp/lib/common-scripts.js"></script>
<!--script for this page-->
<script type="text/javascript" src="${pageContext.request.contextPath}/jsp/lib/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jsp/lib/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>

<script type="text/javascript">
    //wysihtml5 start

    $('.wysihtml5').wysihtml5();

    //wysihtml5 end
</script>
</body>

</html>

