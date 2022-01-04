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
	<%-- OUT: pour l'affichage --%>
	
	<%-- EXPRESSION LANGAGE
		${ }
	 --%>
	 
	<span> Bonjour <h1>Salut</h1></span>
	<%-- PAS POSSIBLE - EVITE les FAILLES XSS
		<span><c:out value="<h1>Salut </h1>"></c:out></span>
	 --%>
	<br>
	<c:out value="${nombres}" default="je ne trouve pas la valeur de nombre"></c:out>
	<c:out value=""></c:out>
	<%-- NE PAS FAIRE -- 
		<c:out value="${nombre}" default="je ne trouve pas la valeur de nombre" > pas de nombre</c:out>
	 --%>
	 <br>
	 <h3>JSTL: le SET </h3>
	
	 <c:set var="nombret" value="${11 * 11 }" />
	 <c:out value=" nombret"></c:out> <br>
	 <c:out value="${nombret}"></c:out>
	
</body>
</html>