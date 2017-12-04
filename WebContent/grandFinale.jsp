<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="pk.entidade.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="estilo.css" rel="stylesheet" type="text/css">
<title>Ilucionismo Show</title>
</head>
<body>

	<%
	//Aqui eu instacio a Entidade_Magica e tenho acesso ao resultado
		Entidade_Magica Ent_Magica = (Entidade_Magica) session.getAttribute("Magica");
		System.out.println("o numero magico é :" + Ent_Magica.getSoma_Magica());
		int numObjetoEscolhido = Ent_Magica.getSoma_Magica();
	%>
	<center>
	
	<h1>PsychoMantis - Metal Gear Solid</h1>
	<img src="Imgs/psycho_mantis.gif" width="200" height="200" />
	<h3>O Objeto em sua mente é este:</h3>
	<p>
		<img
			src="Imgs/Objetos_Numerados/<%=numObjetoEscolhido%>.png"></p>
			<a href="index.jsp">Retornar ao inicio</a></p>
			<a href="https://www.youtube.com/watch?v=QghDwuRcOus" target="blank">Descubra o truque</a></p>
			<h5>Por: Fabio Silva</h5>
	</center>

</body>
</html>