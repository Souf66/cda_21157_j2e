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
	<c:url value="/accueil" var="monLien" />
	<c:url value="/accueil" var="about" />
	<c:url value="/accueil" var="contact" />
	<c:url value="/accueil" var="test" />
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
	 <c:out value=""></c:out>
	 
	 <c:set var="nombre" value="${11 * 11 }"  scope="request"/> <%-- Comparaison avec java: type private --%>
	 <%-- <c:out value=" nombre"></c:out> <br>
	 <c:set var="nombre" value="${11 * 11 }"  scope="request"/> Comparaison avec java: type protected
	 
	 <c:set var="nombre" value="${11 * 11 }"  scope="session"/> Comparaison avec java: type protected
	 <c:set var="nombre" value="${11 * 11 }"  scope="application"/> Comparaison avec java: type protected
	  --%>
	  Je suis le nombre dans index.jsp
	 <c:out value="${nombre}"></c:out>
	 <br>
	 
	 <h2>Les conditions</h2>
	 
	 <c:if test="${uneVariable >= 200 }">
	   Ma variable vaut plus que 200.
	</c:if>
	
	<c:choose>
	   <c:when test="${uneVariable == 0}">Variable null</c:when>
	   <c:when test="${uneVariable > 0 && uneVariable < 200}">Valeur modérée</c:when>
	  <c:otherwise>Sinon...</c:otherwise>
	</c:choose>
	
	<%-- <c:forEach items="${users}" var = "user"></c:forEach> --%>
	
	<c:forEach var="index" begin="0" end="20" varStatus="status">
		<c:out value="index =====>  ${index } =====> Le compteur ${status.count }"></c:out>
		
		<c:if test="${status.first }"> Je suis le dernier element</c:if>
		<br>
	</c:forEach>
	
	<h3>Les liens</h3>
	
	
	
	<ul>
		<li>
			<a href="${ monLien }">lien</a>
		</li>
		<li>
		<a href="${ about }">bbbbbbb</a>
	</li>
		<li>
			<a href="${ contact }">sssdsd</a>
		</li>
		<li>
			<a href="${ test }">zaaaaaaa</a>
		</li>
	</ul>
	
	<h2>Parcourir les chaines de caractéres </h2>
	
	<c:forTokens var="segma" items="Je suis Homer Simpson j'habite,àSpringfield " delims=", ">
	
	    ${segma }
	</c:forTokens>
	
	
	 
	
</body>
</html>