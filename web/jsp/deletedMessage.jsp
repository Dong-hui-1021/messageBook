<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2021/2/18
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">

    <title>回收站</title>

    <!-- Favicons -->
    <link href="${pageContext.request.contextPath}/jsp/img/favicon.png" rel="icon"/>
    <link href="${pageContext.request.contextPath}/jsp/img/apple-touch-icon.png" rel="apple-touch-icon"/>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/jsp/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" charset="utf-8"/>
    <!--external css-->
    <link href="${pageContext.request.contextPath}/jsp/lib/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" charset="utf-8"/>
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/jsp/css/style.css" rel="stylesheet" type="text/css" charset="utf-8"/>
    <link href="${pageContext.request.contextPath}/jsp/css/style-responsive.css" rel="stylesheet" type="text/css" charset="utf-8"/>


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
                                <li><a href="${pageContext.request.contextPath}/jsp/addmessage.jsp"> <i class="fa fa-envelope-o"></i> Write</a></li>

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
                                回收站
                            </h4>
                        </header>
                        <div class="panel-body minimal">
                            <div class="mail-option">
                                <div class="chk-all">

                                    <div class="btn-group">
                                        <a data-toggle="dropdown" href="#" class="btn mini all">
                                            All
                                            <i class="fa fa-angle-down "></i>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="#"> Delete </a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="btn-group">
                                    <a data-original-title="Refresh" data-placement="top" data-toggle="dropdown" href="/message/selectAll" class="btn mini tooltips">
                                        <i class=" fa fa-refresh"></i>
                                    </a>
                                </div>

                                <ul class="unstyled inbox-pagination">
                                    <li><span>1-10 of </span></li>
                                    <li>
                                        <a class="np-btn" href="#"><i class="fa fa-angle-left  pagination-left"></i></a>
                                    </li>
                                    <li>
                                        <a class="np-btn" href="#"><i class="fa fa-angle-right pagination-right"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="table-inbox-wrap ">
                                <table class="table table-inbox table-hover">
                                    <tbody>
                                    <tr class="unread">
                                        <td class="inbox-small-cells">
                                            <input type="hidden" class="mail-checkbox">
                                        </td>

                                        <td class="inbox-small-cells"><i class="fa fa-star" style="display: none"></i></td>
                                        <td class="view-message  dont-show"><a>用户</a></td>
                                        <td class="view-message "><a href="message.jsp">描述</a></td>

                                        <td class="view-message  inbox-small-cells"><i class="fa fa-paperclip" style="display: none"></i></td>
                                        <td class="view-message  text-right">创建时间</td>
                                        <td class="view-message  text-right">删除时间</td>
                                        <td class="view-message  text-right">操作</td>
                                    </tr>
                                    <c:forEach var="note" items="${AllMessage}">
                                        <tr class="unread">
                                            <td class="inbox-small-cells">
                                                <input type="hidden" class="mail-checkbox">
                                            </td>

                                            <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                                            <td class="view-message  dont-show"><a href="/message/selectDeleted?id=${note.id}">${note.user.name}</a></td>
                                            <td class="view-message "><a href="/message/selectOnce?id=${note.id}">${note.description}</a></td>

                                            <td class="view-message  inbox-small-cells"><i class="fa fa-paperclip"></i></td>
                                            <td class="view-message  text-right">${note.createTime}</td>
                                            <td class="view-message  text-right">${note.updateTime}</td>
                                            <div class="pull-right hidden-phone">
                                                <td class="view-message  text-right"><a  href="/message/deleteDeleted?id=${note.id}" class="btn btn-danger btn-xs" style="color: whitesmoke"><i class="fa fa-trash-o "></i></a></td>

                                            </div>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
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
            <a href="inbox.html#" class="go-top">
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

