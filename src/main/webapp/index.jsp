<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Example</title>
</head>
<body>
	<h1>This is JSTL Example</h1>
	<!--1. out tag:  -->
	<!--2. set tag  -->
	
	<c:set var="i" value="23" scope="application"></c:set>
	<h1><c:out value="${i }"></c:out></h1>
	
	<!--3. remove  -->
	<h1><c:out value="${i }">this is default value</c:out></h1>
	
	<!-- 4. if : test condition : true => print...-->
	<c:if test="${i == 23 }">
		<h1>Yes I is 23 and condition is true</h1>
		<p>This is paragraph, hello how are you?</p>
	</c:if>
	
	<!-- 5. choose,when,otherwisse : similar to java switch -->
	<c:choose>
		<c:when test="${i>0 }">
			<h1>This is my first case</h1>
			<h2>Number is positive</h2>
		</c:when>
		
		<c:when test="${i<0 }">
			<h1>This is my second case</h1>
			<h2>Number is negative</h2>
		</c:when>
		
		<c:otherwise>
			<h1>Default case ... otherwisw</h1>
			<h1>The number is zero..</h1>
		</c:otherwise>
		
		<!-- 6. forEach tag : for repeating and traversing -->
		<c:forEach var="j" begin="1" end="10">
			<h1>Value of j is <c:out value="${j }"></c:out></h1>
		</c:forEach>
		<!-- 7. redirect -->
		<c:url var="myurl" value="https://www.google.com/search">
			<c:param name="q" value="onlyjavatech"></c:param>
		</c:url>
		<h1><c:out value="${myurl }"></c:out></h1>
		<%-- <c:redirect url="https://www.google.com"></c:redirect> --%>
		<c:redirect url="${myurl }"></c:redirect>
	</c:choose>
</body>
</html>