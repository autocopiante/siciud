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

function buscarPersona(){
	document.pqrForm.action='<c:url value="/pqr/llenar.jsp"/>';
	document.pqrForm.accion.value=3;
	document.pqrForm.submit();
}
</script>
<html>
<head>
<title>Atenci�n al Ciudadano</title> 
</head>
<body onLoad="mensajeAlert(document.getElementById('msg'));">
<form name="pqrForm"  method="post" action='<c:url value="/pqr/llenar.jsp.x"/>' >
<input type="hidden" name="accion" value="1">
<table align="left" class="tablas" width="90%">
	<caption>Informaci�n del Solicitante</caption>
				<tr>
					<td colspan="4" align="left"><c:out value="Tipo de Solicitante"/>
					</td>
					<td><select name="tipoSol" onchange="">
						<OPTION VALUE="1">Externo</OPTION>
						<OPTION VALUE="2">Interno</OPTION>
					</select></td>
				</tr>
				<!--<tr>
					<td colspan="4" align="left"><c:out value="Persona"/>
					</td>
					<td><textarea class="area2" class="area2" style="width: 100%;"
							name="persona" id='persona'></textarea>
					</td>
				</tr>-->
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
							name="nombre" id='nombre'><c:out value='${sessionScope.personaDatos.nombreRazonSocial}'/></textarea>
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
					<td  align="left"><INPUT NAME="documento" MAXLENGTH="25" TYPE="TEXT" VALUE='<c:out value="${sessionScope.personaDatos.documentoIdNit}"/>'>
					<input type=image src="/siciud/comp/img/Buscar.gif" onclick="buscarPersona()" align="top"> 
					</td>
				</tr>
				<tr>
					<td colspan="4" align="left"><c:out value="Correo Electr�nico"/>
					</td>
					<td  align="left"><INPUT NAME="correo" MAXLENGTH="50" TYPE="TEXT" VALUE="<c:out value="${sessionScope.personaDatos.correoElectronico}"/>">
					</td>
				</tr>
				<tr>
					<td colspan="4" align="left"><c:out value="Direcci�n"/>
					</td>
					<td  align="left"><INPUT NAME="direccion" MAXLENGTH="25" TYPE="TEXT" VALUE="<c:out value="${sessionScope.personaDatos.direccion}"/>">
					</td>
				</tr>
				<tr>
					<td colspan="4" align="left"><c:out value="Tel�fono M�vil"/>
					</td>
					<td  align="left"><INPUT NAME="celular" MAXLENGTH="25" TYPE="TEXT" VALUE="<c:out value="${sessionScope.personaDatos.telefonoMovil}"/>">
					</td>
				</tr>
				<tr>
					<td colspan="4" align="left"><c:out value="Ciudad"/>
					</td>
					<td  align="left"><INPUT NAME="ciudad" MAXLENGTH="25" TYPE="TEXT" VALUE="<c:out value="${sessionScope.personaDatos.ciudad}"/>">
					</td>
				</tr>
</table>
<br>
<table class="tablas" width="90%">
	<caption>Informaci�n de la Solicitud</caption>
				<tr>
					<td colspan="4" align="left"><c:out value="Medio de Recepci�n"/>
					</td>
					<td>
						<input type="radio" name=recepcion value="1">T�lefono
						<input type="radio" name=recepcion value="2">Carta
						<input type="radio" name=recepcion value="3">Correo Electr�nico
						<input type="radio" name=recepcion value="4">WEB
						<input type="radio" name=recepcion value="5">Verbal
					</td>
				</tr>
				<tr>
					<td colspan="4" align="left"><c:out value="Tipo Requerimiento"/>
					</td>
					<td><select name="tipoSolicitud" onchange="">
						<OPTION VALUE="11">Solicitud General</OPTION> 
						<OPTION VALUE="1">Queja</OPTION>
						<OPTION VALUE="2">Reclamo</OPTION> 
						<OPTION VALUE="3">Sugerencia</OPTION>
						<OPTION VALUE="4">Derecho de Petici�n</OPTION> 
						<OPTION VALUE="5">Solcitud de Informaci�n</OPTION>
						<OPTION VALUE="6">Consulta de Documentos</OPTION> 
						<OPTION VALUE="7">Expedici�n de copias</OPTION>
						<OPTION VALUE="8">Consultas</OPTION> 
						<OPTION VALUE="9">Certificaciones</OPTION>
						<OPTION VALUE="10">Solicitud de otra Dependencia</OPTION> 
					</select></td>
				</tr>
				<tr>
					<td colspan="4" align="left"><c:out value="Asunto"/>
					</td>
					<td  align="left"><INPUT NAME="asunto" MAXLENGTH="25" TYPE="TEXT" VALUE="">
					</td>
				</tr>
				<tr>
					<td colspan="4" align="left"><c:out value="Descripci�n"/>
					</td>
					<td><textarea class="area2" class="area2" style="width: 100%;"
							name="descripcion" id='descripcion'></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="4" align="left"><c:out value="Archivo del caso"/>
					</td>
					<td><input type="file" name="archivoAdjunto" size="30">
					</td>
				</tr>

				<tr>
					<td colspan="4" align="left"><c:out value="�Recibir notificaciones por correo electr�nico?: "/>
					</td>
					<td>
						<input type="radio" name=notificacionCorreo value="true">Si
						<input type="radio" name=notificacionCorreo value="false">No
					</td>
				</tr>	
				<tr>
				<td id="g1"><img src='<c:url value="/comp/img/Guardar.gif"/>' onclick="guardar(document.pqrForm)"></td>
				</tr>
</table>
</form>
</body>
</html>