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
<div class="consulta">
<?php
error_reporting(0);
include "conexao.php";
$result = mysql_query("select * from tb_contapagar", $db);
echo "<center><table border='1' class='consult'>
<tr>
	<td class='consult'><h1>Codigo</h1></td>
	<td class='consult'><h1>Valor conta</h1></td>
	<td class='consult'><h1>Data vencimento</h1></td>
	<td class='consult'><h1>Data pagamento</h1></td>
	<td class='consult'><h1>Codigo Nota Fiscal</h1></td>
	<td class='consult'><h1>Observações</h1></td>
</tr>";
// Escpeve resultado até que não haja mais linhas na tabela
while($row = mysql_fetch_array($result)) {
echo "<tr><td>".$row["cp_codigo"]."</td>
        <td>".$row["cp_valorconta"]."</td>
	<td>".$row["cp_datavencimento"]."</td>
	<td>".$row["cp_datapagamento"]."</td>
	<td>".$row["nf_codigo"]."</td>
	<td>".$row["cp_observacoes"]."</td>
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