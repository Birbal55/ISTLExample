<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>fun page</h1>
	<p>this page is all about using functions tags</p>
	<c:set var="name" value="TechBir"></c:set>
	<h1><c:out value="${name }"></c:out></h1>
	<h1>Length of name is <c:out value="${fn:length(name) }"></c:out></h1>
	<c:out value="${fn:toLowerCase(name) }"></c:out>
	<br>
	<c:out value="${fn:contains(name,TechBir) }"></c:out>
</body>
</html>