<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<html>
<head>
    <title>Picasa Web Albums Sample</title>
    <meta content="michal.jemala@gmail.com" name="author">
    <link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.css"/>'>
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
</head>
<body>
    <a href="https://github.com/michaljemala/picasa-spring-sample"><img style="z-index: 1031; position: absolute; top: 0; left: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_left_red_aa0000.png" alt="Fork me on GitHub"></a>
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a href="/" class="brand">Picasa Web Albums Sample</a>
          <div class="nav-collapse">
            <ul class="nav"></ul>
          </div>
          <sec:authorize access="isAuthenticated()">
          <div class="btn-group pull-right">
            <a href="#" data-toggle="dropdown" class="btn dropdown-toggle">
              <i class="icon-user"></i>
              <sec:authentication property="principal.email" />
              <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
              <li><a href='<c:url value="/j_spring_security_logout"/>'>Sign Out</a></li>
            </ul>
          </div>
          </sec:authorize>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="hero-unit">
        <h1>My Albums</h1>
      </div>
      <ul>
        <c:forEach items="${albums}" var="a">
            <c:forEach items="${a.alternateLinks}" var="l">
                <li><a href="${l.href}" target="_blank">${a.title}</a></li>
            </c:forEach>
        </c:forEach>
      </ul>
      <hr>
      <footer>
        <p>2012 &middot; Source code available at <a href="https://github.com/michaljemala/picasa-spring-sample">GitHub</a></p>
      </footer>
    </div>
    
    <!-- Placed at the end of the document so the pages load faster -->
	<script src='<c:url value="/resources/js/bootstrap.min.js"/>'></script>
    <script src='<c:url value="/resources/js/jquery.min.js"/>'></script>
	<script src='<c:url value="/resources/js/bootstrap-dropdown.js"/>'></script>
</body>
</html>