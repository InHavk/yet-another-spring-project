<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:editor>
  <jsp:attribute name="title">
    Редактирование - ${page.name}
  </jsp:attribute>
  <jsp:attribute name="name">
    ${page.name}
  </jsp:attribute>
</t:editor>