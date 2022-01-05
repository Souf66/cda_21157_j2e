<%-- <%@  include file ="header.jsp" %> --%>

<c:import url="header.jsp"></c:import>
<div class="container">
	<h3>Je suis la page de CONTACT</h3>
	<%-- ACTION == vers quelle page je vais poster la saisie de l'user --%>
	<form action="<%= request.getContextPath() %>/contact" method="post">
	  <div class="mb-3">
	    <label for="exampleInputEmail1" class="form-label">Email address</label>
	    <input type="email" class="form-control" name="email">
	    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
	  </div>
	  <div class="mb-3">
	    <label for="exampleInputPassword1" class="form-label">Password</label>
	    <input type="password" class="form-control" name="">
	  </div>
	  <div class="mb-3 form-check">
	    <input type="checkbox" class="form-check-input" id="exampleCheck1">
	    <label class="form-check-label" for="exampleCheck1">Check me out</label>
	  </div>
	  <button type="submit" class="btn btn-primary">Envoyer</button>
	</form>
</div>

<%-- <%@  include file ="footer.jsp" %> --%>
<c:import url="footer.jsp"></c:import>