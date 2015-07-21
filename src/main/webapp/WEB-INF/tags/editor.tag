<%@tag description="Page editor" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@attribute name="title" fragment="true" %>
<%@attribute name="name" fragment="true" %>

<t:main>
    <jsp:attribute name="title">
      <jsp:invoke fragment="title"/>
    </jsp:attribute>
    <jsp:attribute name="menu">
      <li><a href="#"><jsp:invoke fragment="name"/></a></li>
    </jsp:attribute>
    <jsp:body>
      <h1><jsp:invoke fragment="title"/></h1>
      <form:form method="post" action="" commandName="page" class="form-horizontal">
        <div class="control-group">
          <label class="control-label" for="inputName">Название</label>
          <div class="controls">
            <form:input path="name" id="inputName"/>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="inputUrl">URL</label>
          <div class="controls">
            <form:input path="url" id="inputUrl"/>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="inputContent">Контент</label>
          <div class="controls">
            <form:textarea path="content" id="inputContent"/>
          </div>
        </div>
        <div class="control-group">
          <div class="controls">
            <button type="submit" class="btn">Send</button>
            <button type="reset" class="btn">Reset</button>
          </div>
        </div>
      </form:form>
    </jsp:body>
</t:main>