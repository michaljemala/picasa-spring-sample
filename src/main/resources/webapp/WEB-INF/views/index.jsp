<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html>
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
        <h1>Picasa Web Albums Sample</h1>
        <br/>
        <p>A sample application demostrating Spring's <a href="http://static.springsource.org/spring-security/site/docs/3.1.x/reference/ns-config.html#ns-openid">OpenID</a>
         and <a href="https://github.com/SpringSource/spring-security-oauth/wiki/oauth2">OAuth2</a> abstractions. Users sign in by using theirs existing
         Google Account. The access to the Picasa Web Albums by using its <a href="https://developers.google.com/picasa-web/">Google Data API</a>
         needs to be allowed when prompted.</p>
        <br/>
        <sec:authorize access="!isAuthenticated()" >
        <form action="<c:url value='/j_spring_openid_security_check' />" method="post">
		   <input name="openid_identifier" type="hidden" value="https://www.google.com/accounts/o8/id"/>
		   <input class="btn btn-primary btn-large" type="submit" value="Show My Albums"/>
		</form>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()" >
            <a class="btn btn-primary btn-large" href='<c:url value="/albums"/>'/>Show My Albums</a>
        </sec:authorize>
      </div>
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