<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Je suis le fichier test.jsp
	
	<c:import url="index.jsp"></c:import>
	
	<p> Je suis le nombre dans test.jsp
	<c:out value="${nombre }"></c:out>
	<c:set var="nombre" value="${5*500 }" />
	<c:out value="${nombre }"></c:out>
	</p>
	
</body>
</html>