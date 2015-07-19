<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:main>
    <jsp:attribute name="title">
      ${page.name}
    </jsp:attribute>
    <jsp:attribute name="menu">
      <li><a href="#">${page.name}</a></li>
    </jsp:attribute>
    <jsp:body>
    <h1>${page.name}</h1>
    <p>
      ${page.content}
    </p>
    </jsp:body>
</t:main>