<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:main>
  <jsp:attribute name="title">
    Login
  </jsp:attribute>
  <jsp:attribute name="menu">
  </jsp:attribute>
  <jsp:body>
    <c:if test="${not empty param.error}">
      <div class="alert alert-error"> Invalid username / password
        : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
      </div>
    </c:if>
    <form method="POST" action="<c:url value="/j_spring_security_check" />" class="form-horizontal">
      <div class="control-group">
        <label class="control-label" for="inputLogin">Login</label>
        <div class="controls">
          <input type="text" id="inputLogin" placeholder="Login" name="j_username">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="inputPassword">Password</label>
        <div class="controls">
          <input type="password" id="inputPassword" placeholder="Password" name="j_password">
        </div>
      </div>
      <div class="control-group">
        <div class="controls">
          <label class="checkbox">
            <input type="checkbox" name="_spring_security_remember_me"> Remember me
          </label>
          <button type="submit" class="btn">Sign in</button>
          <button type="reset" class="btn">Reset</button>
        </div>
      </div>
    </form>
  </jsp:body>
</t:main>