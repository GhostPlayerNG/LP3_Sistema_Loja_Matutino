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
<!-- Inicio Alterar -->
<center>
<form method="post" action="alterar_fornecedor_backend.php">
Alterar Fornecedor <br>
<table class="null">
<tr> 
	<td>Codigo:</td>
	<td><select size="1" name="for_codigo">
	<?php
	// gera lista de codigo // fazer a conexão
	include "conexao.php";
	$res = mysql_query ("select * from tb_fornecedor");
	while ($registro = mysql_fetch_row ($res))
	{
	$cod=$registro[0];
	echo "<option value=\"$cod\">$cod<option>";
	}
	?>
	</select></td>
</tr>
<tr>
	<td>Nome:</td>  
	<td><input type="text" name="for_nome" class="campos"></td> 
</tr>
<tr>
	<td>Endererço:</td>  
	<td><input type="text" name="for_endereco" class="campos"></td>
</tr>
<tr>
	<td>Número:</td>  
	<td><input type="text" name="for_numero" class="campos"></td>
</tr>
<tr>
	<td>Bairro:</td>  
	<td><input type="text" name="for_bairro" class="campos"></td>
</tr>
<tr>
	<td>Cidade:</td>
	<td><input type="text" name="for_cidade" class="campos"></td>
</tr>
<tr>
	<td>UF:</td>  
	<td><input type="text" name="for_uf" class="campos"></td>
</tr>
<tr>
	<td>CNPJ/CPF:</td>  
	<td><input type="text" name="for_cnpjcpf" class="campos"></td>
</tr>
<tr>
	<td>RG/IE:</td> 
	<td><input type="text" name="for_rgie" class="campos"></td>
</tr>
<tr>
	<td> Telefone:</td> 
	<td><input type="text" name="for_telefone" class="campos"></td>
</tr>
<tr>
	<td> Fax:</td>
	<td><input type="text" name="for_fax" class="campos"></td>
</tr>
<tr>
	<td> Celular:</td> 
	<td><input type="text" name="for_celular" class="campos"></td>
</tr>
<tr>
	<td> E-mail:</td>  
	<td><input type="text" name="for_email" class="campos"></td>
</tr>
</table>
<input type="submit" name="Submit" value="Alterar" class="btn">
</form>
</center>
</body>
</html>