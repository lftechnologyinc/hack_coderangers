<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="art-nav clearfix">
	<ul class="art-hmenu">
		<li><a href="#" class="active">Main</a></li>
		<li>
		
		<c:choose>
		<c:when test="${user.id eq null}">
		<a href="LegalBody" id="login">Login</a>
		</c:when>
		<c:otherwise>
		<a href="Logout" id="logout">Logout</a>
		</c:otherwise>
		</c:choose>
		</li>
		
		<li><a href="#">Contact Us</a></li>
	</ul>
</nav>
