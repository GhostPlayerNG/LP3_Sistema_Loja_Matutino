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
<form method="post" action="incluir_produtos_backend.php"><td>
Incluir Produtos <br>
<table class="null">
<tr>
	<td>Codigo:</td>
	<td><input type="text" name="pro_codigo" class="campos"></td>
</tr>
<tr>
	<td>Descrição:</td>
	<td><input type="text" name="pro_descricao" class="campos"></td>
</tr>
<tr>
	<td>Codigo do Tipo Produto : </td>
	<td><select size="1" name="tpp_codigo">
	<?php
	// gera lista // fazer a conexão
	include "conexao.php";
	$res = mysql_query ("select * from tb_tipoproduto");
	while ($registro = mysql_fetch_row ($res)){
		$cod=$registro[0];
		echo "<option value=\"$cod\">$cod<option>\n";}
	?>
	</select></td>
</tr>
<tr>
	<td>Preço Custo:</td>
	<td><input type="text" name="pro_precocusto" class="campos"></td>
</tr>
<tr>
	<td>Preço Venda:</td>
	<td><input type="text" name="pro_precovenda" class="campos"></td>
</tr>
<tr>
	<td>Estoque:</td>
	<td><input type="text" name="pro_estoque" class="campos"></td>
</tr>
<tr>
	<td>Embalagem:</td>
	<td><input type="text" name="pro_embalagem"class="campos"></td>
</tr>
<tr>
	<td>Imposto de Produto Industrializado:</td>
	<td><input type="text" name="pro_ipi" class="campos"></td>
</tr>
</table>
<input type="submit" name="Submit" value="Incluir" class="btn">
</form>
</center>
<!--Fim Incluir-->
</body>
</html>