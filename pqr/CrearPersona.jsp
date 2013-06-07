<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<c:import url="/general.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>
	function guardar(pqrForm){
		//alert("hola");
		document.pqrForm.action='<c:url value="/pqr/llenar.jsp"/>';
		document.pqrForm.submit();
		
	}
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Crear Persona</title> 
</head>
<body onLoad="mensajeAlert(document.getElementById('msg'));">
<form name="pqrForm" method="post"action='<c:url value="/pqr/llenar.jsp.x"/>'>
<input type="hidden" name="accion" value="2">
<table align="left" class="tablas" width="90%">
	<caption>Informaci�n del Solicitante</caption>
				<tr>
					<td colspan="4" align="left"><c:out value="Titulo"/>
					</td>
					<td><select name="titulo" onchange="">
						<OPTION VALUE="1">Sr.</OPTION>
						<OPTION VALUE="2">Sra.</OPTION>
						<OPTION VALUE="3">Se�ores</OPTION>
						<OPTION VALUE="4">Dr.</OPTION> 
						<OPTION VALUE="5">Ing.</OPTION>
					</select></td>
				</tr>
				<tr>
					<td colspan="4" align="left"><c:out value="Nombre / Raz�n Social"/>
					</td>
					<td><textarea class="area2" class="area2" style="width: 100%;"
							name="nombre" id='nombre'></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="4" align="left"><c:out value="Tipo de Persona"/>
					</td>
					<td><select name="tipoPersona" onchange="">
						<OPTION VALUE="51">Natural</OPTION> 
						<OPTION VALUE="52">Jur�dica</OPTION>
					</select></td>
				</tr>
				<tr>
					<td colspan="4" align="left"><c:out value="Tipo de Documento"/>
					</td>
					<td><select name="tipoDoc" onchange="">
						<OPTION VALUE="1">C�dula de Ciudadan�a</OPTION> 
						<OPTION VALUE="2">Tarjeta de Identidad</OPTION>
						<OPTION VALUE="3">C�dula de Extranjer�a</OPTION> 
						<OPTION VALUE="4">Pasaporte</OPTION>
					</select></td>
				</tr>
				<tr>
					<td colspan="4" align="left"><c:out value="Documento de Identidad / NIT"/>
					</td>
					<td  align="left"><INPUT NAME="documento" MAXLENGTH="25" TYPE="TEXT" VALUE="">
					</td>
				</tr>
				<tr>
					<td colspan="4" align="left"><c:out value="Correo Electr�nico"/>
					</td>
					<td  align="left"><INPUT NAME="correo" MAXLENGTH="50" TYPE="TEXT" VALUE="">
					</td>
				</tr>
				<tr>
					<td colspan="4" align="left"><c:out value="Direcci�n"/>
					</td>
					<td  align="left"><INPUT NAME="direccion" MAXLENGTH="25" TYPE="TEXT" VALUE="">
					</td>
				</tr>
				<tr>
					<td colspan="4" align="left"><c:out value="Tel�fono M�vil"/>
					</td>
					<td  align="left"><INPUT NAME="celular" MAXLENGTH="25" TYPE="TEXT" VALUE="">
					</td>
				</tr>
				<tr>
					<td colspan="4" align="left"><c:out value="Ciudad"/>
					</td>
					<td><select name="ciudad" onchange="">
						<OPTION VALUE="2">Bogot�</OPTION> 
					</select></td>
				</tr>
		<tr>
				<td id="g1"><img src='<c:url value="/comp/img/Guardar.gif"/>' onclick="guardar(document.pqrForm)"></td>
				</tr>
</table>
</form>

</body>
</html>