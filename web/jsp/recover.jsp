<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>还原delete</title>

    <!-- Favicons -->
    <link href="${pageContext.request.contextPath}/jsp/img/favicon.png" rel="icon">
    <link href="${pageContext.request.contextPath}/jsp/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/jsp/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" charset="utf-8"/>
    <!--external css-->
    <link href="${pageContext.request.contextPath}/jsp/lib/font-awesome/css/font-awesome.css" rel="stylesheet" charset="utf-8" />
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/jsp/css/style.css" rel="stylesheet" charset="utf-8"/>
    <link href="${pageContext.request.contextPath}/jsp/css/style-responsive.css" rel="stylesheet" charset="utf-8"/>

</head>

<body>
<section id="container">

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
                                <li><a href="${pageContext.request.contextPath}"> <i class="fa fa-envelope-o"></i> Write</a></li>

                                <li><a href="/message/selectMine?id=${user.id}"> <i class="fa fa-file-text-o"></i> Select Mine <span class="label label-info pull-right inbox-notification"></span></a></a>
                                </li>
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
                                Recover Message
                            </h4>
                        </header>
                        <div class="panel-body ">
                            <div class="mail-header row">
                                <div class="col-md-8">
                                    <h4 class="pull-left">${message.description}</h4>
                                </div>
                            </div>
                            <div class="mail-sender">
                                <div class="row">
                                    <div class="col-md-8">
                                        <img src="img/ui-zac.jpg" alt="">
                                        <strong>${message.user.name}</strong>
                                        <span>[${message.createTime}]</span>
                                        <strong>write</strong>
                                    </div>
                                    <div class="col-md-4">
                                        <p class="date"> Delete Time:${message.updateTime}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="view-mail">
                                <p>${message.message}</p>
                            </div>

                                <div class="compose-btn pull-left">
                                    <a href="/message/recover?id=${message.id}"><button class="btn btn-sm "><i class="fa fa-arrow-right"/></i> Recover</button></a>
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

                Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
            </div>
            <a href="mail_view.html#" class="go-top">
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

</body>

</html>

