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
<form method="post" action="alterar_vendas_backend.php">
Alterar Vendas <br>
<table class="null">
<tr>
	<td> Codigo: </td> 
	<td><select size="1" name="ven_codigo">
	<?php
	// gera lista de codigo // fazer a conexão
	include "conexao.php";
	$res = mysql_query ("select * from tb_vendas");
	while ($registro = mysql_fetch_row ($res))
	{
	$cod=$registro[0];
	echo "<option value=\"$cod\">$cod<option>";
	}
	?>
	</select></td>
</tr>
<tr>	
	<td> Codigo Funcionário: </td> 
	<td><select size="1" name="fun_codigo">
	<?php
	// gera lista de codigo // fazer a conexão
	include "conexao.php";
	$res = mysql_query ("select * from tb_funcionario");
	while ($registro = mysql_fetch_row ($res))
	{
	$cod=$registro[0];
	echo "<option value=\"$cod\">$cod<option>";
	}
	?>
	</select></td>
</tr>
<tr>
	<td> Codigo Tipo Pagamento: </td> 
	<td><select size="1" name="tpg_codigo">
	<?php
	// gera lista de codigo // fazer a conexão
	include "conexao.php";
	$res = mysql_query ("select * from tb_tipopagto");
	while ($registro = mysql_fetch_row ($res))
	{
	$cod=$registro[0];
	echo "<option value=\"$cod\">$cod<option>";
	}
	?>
	</select></td>
</tr>
<tr>
	<td> Codigo nota fiscal: </td> 
	<td><select size="1" name="nf_codigo">
	<?php
	// gera lista de codigo // fazer a conexão
	include "conexao.php";
	$res = mysql_query ("select * from tb_notafiscal");
	while ($registro = mysql_fetch_row ($res))
	{
	$cod=$registro[0];
	echo "<option value=\"$cod\">$cod<option>";
	}
	?>
	</select></td>
</tr>
<tr>
	<td> Data Venda:</td>  
	<td><input type="text" name="ven_datavenda" class="campos"></td> 
</tr>
<tr>
	<td> Valor Total:</td>  
	<td><input type="text" name="ven_valortotal" class="campos"></td> 
</tr>
<tr>
	<td> Observações:</td>  
	<td><textarea name="ven_observacoes" rows="3"></textarea> </td>
</tr>
</table>
<input type="submit" name="Submit" value="Alterar" class="btn">
</form>
</center>
</body>
</html>