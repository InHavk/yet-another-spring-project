<%@tag description="Page template" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@attribute name="title" fragment="true" %>
<%@attribute name="menu" fragment="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title><jsp:invoke fragment="title"/></title>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
</head>
<body>
<div class="row">
  <div class="span8 offset2">
    <ul class="nav nav-pills">
      <li class="active"><a href="<c:url value="/" />">Home</a></li>
      <jsp:invoke fragment="menu"/>
      <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
        <li><a href="<c:url value="/logout" />">Log out</a></li>
      </sec:authorize>
      <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
        <li><a href="<c:url value="/login.jsp" />">Log in</a></li>
      </sec:authorize>
    </ul>
    <jsp:doBody/>
  </div>
</div>
</body>
</html>