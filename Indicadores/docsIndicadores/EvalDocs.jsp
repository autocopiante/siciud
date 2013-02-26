<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:useBean id="informacion"
	class="cidc.docsIndicadores.obj.InfoDocumentos" scope="session" />
<jsp:setProperty name="informacion" property="*" />
<html>
<head>
<link type='text/css' rel='stylesheet' media='all' href='<c:url value="/comp/js/Calendario/calendar-blue2.css"/>' title='win2k-cold-1' />
<script type='text/javascript' src='<c:url value="/comp/js/Calendario/calendar.js"/>'></script>
<script type='text/javascript' src='<c:url value="/comp/js/Calendario/lang/calendar-es.js"/>'></script>
<script type='text/javascript' src='<c:url value="/comp/js/Calendario/calendar-setup.js"/>'></script>
<c:import url="/general.jsp"/>
<script>
	var nav4=window.Event ? true : false;

	function soloNumeros(eve){
		var key=nav4?eve.which :eve.keyCode;
		return((key>=48 && key<=57) || key==13 || key==7 || key==8);
	}
	function guardar()
    {
    	document.form1.submit();
    }
</script>
</head>
<body onLoad="mensajeAlert(document.getElementById('msg'));">
<form name="form1" method="post" action='<c:url value="/Indicadores/docsIndicadores/cargar.jsp"/>'>
	<table class="tablas" width="100%" align="center">
	<caption>PASO 2: RAE</caption>
	<tr>
		<td class="renglones" width="150px"><b>Usuario:</b></td>
		<td><c:out value="${sessionScope.loginUsuario.nombre}" /></td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Apellidos del Autor(es):</b></td>
		<td>
			<input style="width:80%" name="apellidos" type="text" class="texto"/>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Nombres del Autor(es):</b></td>
		<td>
			<input style="width:80%" name="nombres" type="text" class="texto"/>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>T�tulo:</b></td>
		<td>
			<input style="width:80%" name="titulo" type="text" class="texto"/>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Fecha de Publicaci�n:</b></td>
		<td>
			<input type='text' name='fechapublicacion' class='caj' readonly='true' id='f_date_a' size='13'>
				<button type='button' id='f_trigger_a'>...</button>
				<script type='text/javascript'>
	    			Calendar.setup({
		    			inputField     :    'f_date_a',
		    			ifFormat       :    '%d/%m/%Y',
		    			showsTime      :    false,
		    			button         :    'f_trigger_a',
		    			singleClick    :    false,
		    			step           :    1
	    			})
    			</script>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Ciudad de Publicaci�n:</b></td>
		<td>
			<input style="width:80%" name="ciudad" type="text" class="texto"/>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Casa editorial:</b></td>
		<td>
			<input style="width:80%" name="editorial" type="text" class="texto"/>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>N�mero de P�ginas:</b></td>
		<td>
			<input style="width:10%" name="numeropaginas" type="text" class="texto" onKeyPress='return soloNumeros(event)'/>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Direcci�n web del Documento:</b></td>
		<td>
			<input style="width:80%" name="dirweb" type="text" class="texto"/>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Fecha exacta de acceso al documento:</b></td>
		<td>
			<input type='text' name='fechaacceso' class='caj' readonly='true' id='f_date_a1' size='13'>
				<button type='button' id='f_trigger_a1'>...</button>
				<script type='text/javascript'>
	    			Calendar.setup({
		    			inputField     :    'f_date_a1',
		    			ifFormat       :    '%d/%m/%Y',
		    			showsTime      :    false,
		    			button         :    'f_trigger_a1',
		    			singleClick    :    false,
		    			step           :    1
	    			})
    			</script>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Sintesis global del contenido:</b></td>
		<td>
			<textarea style="width:100%" name="sintesisglobal" type="text" class="texto" cols="60" rows="5"></textarea>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Idea Central del Texto:</b></td>
		<td>
			<textarea style="width:100%" name="ideacentral" type="text" class="texto" cols="60" rows="5"></textarea>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Pagina de la Idea Central:</b></td>
		<td>
			<input style="width:10%" name="paginaideacentral" type="text" class="texto" onKeyPress='return soloNumeros(event)'/>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Conceptos y Categorias:</b></td>
		<td>
			<textarea style="width:100%" name="conceptoscategorias" type="text" class="texto" cols="60" rows="5"></textarea>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Referencia Externa N. 1:</b></td>
		<td>
			<input style="width:80%" name="ref1" type="text" class="texto"/>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Referencia Externa N. 2:</b></td>
		<td>
			<input style="width:80%" name="ref2" type="text" class="texto"/>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Referencia Externa N. 3:</b></td>
		<td>
			<input style="width:80%" name="ref3" type="text" class="texto"/>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Referencia Externa N. 4:</b></td>
		<td>
			<input style="width:80%" name="ref4" type="text" class="texto"/>
		</td>
	<tr>
		<td class="renglones" width="150px"><b>Valoraci�n Cr�tica:</b></td>
		<td>
			<textarea style="width:100%" name="valoracioncritica" type="text" class="texto" cols="60" rows="5"></textarea>
		</td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Vol�men:</b></td>
		<td>
			<input style="width:10%" name="volumen" type="text" class="texto" onKeyPress='return soloNumeros(event)'/>
		</td>
	<tr>
	<tr>
		<td class="renglones" width="150px"><b>N�mero de Cap�tulo o Seccion:</b></td>
		<td>
			<input style="width:10%" name="numcapitulo" type="text" class="texto" onKeyPress='return soloNumeros(event)'/>
		</td>
	<tr>
	<tr>
		<td colspan="3" align="center"><img src='<c:url value="/comp/img/Siguiente.gif"/>' onclick="guardar()"></td>
	</tr>
	</table>
</form>
</body>
</html>