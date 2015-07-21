<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:main>
    <jsp:attribute name="title">
      Home
    </jsp:attribute>
    <jsp:attribute name="menu">
    </jsp:attribute>
    <jsp:body>
      <h1>Немного страниц</h1>
      <p>
        <c:if test="${!empty pages}">
        <table class="table">
          <c:forEach items="${pages}" var="page">
            <tr>
              <td>${page.name}</td>
              <td>
                <c:if test="${empty page.url}">
                  <a class="btn" href="page/${page.id}">Подробнее</a>
                </c:if>
                <c:if test="${!empty page.url}">
                  <a class="btn" href="p/${page.url}">Подробнее</a>
                </c:if>
                <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
                  <a class="btn btn-warning" href="page/edit/${page.id}">Редактировать</a>
                </sec:authorize>
              </td>
            </tr>
          </c:forEach>
          <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
            <tr>
              <td></td>
              <td>
                <a class="btn btn-primary" href="page/add">Добавить страницу</a>
              </td>
            </tr>
          </sec:authorize>
	    </table>
        </c:if>
      </p>
    </jsp:body>
</t:main>