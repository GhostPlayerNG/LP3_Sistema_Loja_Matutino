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
<!-- Inicio Consulta -->
<div class="consulta">
<?php
error_reporting(0);
include "conexao.php";
$result = mysql_query("select * from tb_itenscompra", $db);
echo "<center><table border='1' class='consult'>
<tr>
	<td class='consult'><h1>Codigo</h1></td>
	<td class='consult'><h1>Codigo Produto</h1></td>
	<td class='consult'><h1>Codigo Tipo Produto</h1></td>
	<td class='consult'><h1>Codigo Nota Fiscal</h1></td>
	<td class='consult'><h1>Codigo Fornecedor</h1></td>
	<td class='consult'><h1>Codigo Tipo Pagto</h1></td>
	<td class='consult'><h1>Embalagem</h1></td>
	<td class='consult'><h1>Quantidade</h1></td>
	<td class='consult'><h1>Valor unitario</h1></td>
	<td class='consult'><h1>Desconto</h1></td>
	<td class='consult'><h1>Valor total</h1></td>
</tr>";
// Escreve resultado até que não haja mais linhas na tabela
while($row = mysql_fetch_array($result)) {
echo "<tr><td>".$row["itc_codigo"]."</td>
	<td>".$row["pro_codigo"]."</td>
	<td>".$row["tpp_codigo"]."</td>
	<td>".$row["nf_codigo"]."</td>
	<td>".$row["for_codigo"]."</td>
	<td>".$row["tpg_codigo"]."</td>
        <td>".$row["itc_embalagem"]."</td>
	<td>".$row["itc_qtde"]."</td>
	<td>".$row["itc_valorun"]."</td>
	<td>".$row["itc_desc"]."</td>
	<td>".$row["itc_valortotal"]."</td>
	 </tr><br>";
	}
	echo "</table></center>";
	echo "<br />";
mysql_free_result($result);
mysql_close ($db);
?>
</div>
<!--Fim Consulta-->
</body>
</html>