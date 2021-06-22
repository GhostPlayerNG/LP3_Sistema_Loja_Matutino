<html>
<head>
	<title>Sistema Loja - Matutino</title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<link rel="stylesheet" type="text/css" href="formatarpadrao.css" />
</head>
<body>
<table width="98%" border="0" cellspacing="0" cellpadding="0">
  <tr align="left" valign="top"> 
    <td colspan="3"><span> </span> </td>
  </tr>
  <tr align="left" valign="top"> 
    <td height="28"></td>
    <td height="28">&nbsp;</td>
    <td height="28" align="right"></td>
  </tr>
  <tr> 
    <td width="3%"></td>
    <td width="94%" align="left" valign="top"><div id="build-menu"></div></td>
    <td width="3%" align="right"></td>
  </tr>
  <tr> 
    <td colspan="3">&nbsp;</td>
  </tr>
</table>
<script src="menu.js"></script>
<!-- Inicio Incluir -->
<center>
<form method="post" action="incluir_notafiscal_backend.php"><td>
Incluir Nota Fiscal <br>
<table class="null">
<tr>
	<td>Codigo:</td>
	<td><input type="text" name="nf_codigo" class="campos"></td>
</tr>
<tr>
	<td>Valor:</td>
	<td><input type="text" name="nf_valornf" class="campos"></td>
</tr>
<tr>
	<td>Taxa imposto:</td>
	<td><input type="text" name="nf_taxaimpostonf" class="campos"></td>
</tr>
<tr>
	<td>Valor imposto:</td>
	<td><input type="text" name="nf_valorimposto" class="campos"></td>
</tr>
</table>
<input type="submit" name="Submit" value="Incluir" class="btn">
</form>
</center>
<!--Fim Incluir-->
</body>
</html>