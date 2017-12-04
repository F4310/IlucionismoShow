<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" 
	import="pk.magic.*"
	import="pk.entidade.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="estilo.css" rel="stylesheet" type="text/css">
<title>Ilusionismo Show</title>
</head>
<body>

	<form method="post" class="demaisTextos" action="./Magic_Controller">
		<center>
			<h1>PsychoMantis</h1>
		</center>

		<center>
			<img src="Imgs/psycho_mantis.gif" width="150" height="150" />
			<p>
			<h3>Observe bem os quadros e responda!</h3>

			<table border="1" cellpadding="4">

				<tr>
					<td colspan="3"><img class="img" src="Imgs/Imgs_Objetos/1.png" width="500"
						height="240" /></td>
				</tr>

				<tr>
					<td>Seu Objeto está aqui ?</td>
				</tr>

				<tr>
					<td>Sim: <input type="radio" name="radio01" value="1" required>
						Não: <input type="radio" name="radio01" value="0" >
					</td>
				</tr>


				<tr>
					<td colspan="3"><img class="img" src="Imgs/Imgs_Objetos/2.png" width="410"
						height="280" /></td>
				</tr>

				<tr>
					<td>Seu Objeto está aqui ?</td>
				</tr>

				<tr>
					<td>Sim: <input type="radio" name="radio02" value="2" required>
						Não: <input type="radio" name="radio02" value="0">
					</td>
				</tr>

				<tr>
					<td>
						<center>
							<input type="submit" name="btn_try1" value="Continuar">
						</center>
					</td>
				</tr>

			</table>


		</center>
	</form>

</body>
</html>