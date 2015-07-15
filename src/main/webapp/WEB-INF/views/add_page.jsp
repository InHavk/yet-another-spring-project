<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>Добавить страницу</title>
</head>
<body>
<form:form method="post" action="" commandName="page">
	<table>
		<tr>
			<td><form:label path="name">
				Название
			</form:label></td>
			<td><form:input path="name" /></td>
		</tr>
		<tr>
			<td><form:label path="url">
				URL
			</form:label></td>
			<td><form:input path="url" /></td>
		</tr>
		<tr>
			<td><form:label path="content">
				Контент
			</form:label></td>
			<td><form:textarea path="content" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit"
				value="Создать" /></td>
		</tr>
	</table>
</form:form>
</body>
</html>