<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>communes-rest</title>
</head>
<body>
<%
	String protocol = request.getScheme();
	String host = request.getServerName();
	String port = String.valueOf(request.getServerPort());
	String baseUrl = getServletContext().getContextPath();
%>
<h2>Utilisation du web service REST</h2>
<div><a href="<%=protocol%>://<%=host%>:<%=port%><%=baseUrl %>/rest/communes/cp/972" target="_blank"><%=protocol%>://<%=host%>:<%=port%><%=baseUrl %>/rest/communes/cp/972</a> : liste des communes dont le code postal débute par 972</div>
<div><a href="<%=protocol%>://<%=host%>:<%=port%><%=baseUrl %>/rest/communes/nom/din" target="_blank"><%=protocol%>://<%=host%>:<%=port%><%=baseUrl %>/rest/communes/nom/din</a> : liste des communes dont le nom débute par din</div>
<div></div><a href="<%=protocol%>://<%=host%>:<%=port%><%=baseUrl %>/rest/communes/id/56" target="_blank"><%=protocol%>://<%=host%>:<%=port%><%=baseUrl %>/rest/communes/id/56</a>	 : commune dont l'identifiant en base est 56</div>
<div><a href="ajax.html" target="_blank">page de démo</a></div>
</body>
</html>