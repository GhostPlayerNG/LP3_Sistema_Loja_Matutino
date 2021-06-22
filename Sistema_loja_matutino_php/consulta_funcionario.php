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
$result = mysql_query("select * from tb_funcionario", $db);
echo "<center><table border='1' class='consult'>
<tr>
	<td class='consult'><h1>Codigo</h1></td>
	<td class='consult'><h1>Nome</h1></td>
	<td class='consult'><h1>Endereço</h1></td>
	<td class='consult'><h1>Número</h1></td>
	<td class='consult'><h1>Complemento</h1></td>
	<td class='consult'><h1>Bairro</h1></td>
	<td class='consult'><h1>Cidade</h1></td>
	<td class='consult'><h1>UF</h1></td>
	<td class='consult'><h1>CPNJ/CPF</h1></td>
	<td class='consult'><h1>RG/IE</h1></td>
	<td class='consult'><h1>Sexo</h1></td>
	<td class='consult'><h1>Nascimento</h1></td>
	<td class='consult'><h1>Telefone</h1></td>
	<td class='consult'><h1>Celular</h1></td>
	<td class='consult'><h1>E-mail</h1></td>
	<td class='consult'><h1>Salario</h1></td>
</tr>";
// Escreve resultado até que não haja mais linhas na tabela
while($row = mysql_fetch_array($result)) {
echo "<tr><td>".$row["fun_codigo"]."</td>
        <td>".$row["fun_nome"]."</td>
	<td>".$row["fun_endereco"]."</td>
	<td>".$row["fun_numero"]."</td>
	<td>".$row["fun_complemento"]."</td>
	<td>".$row["fun_bairro"]."</td>
	<td>".$row["fun_cidade"]."</td>
	<td>".$row["fun_uf"]."</td>
	<td>".$row["fun_cnpjcpf"]."</td>
	<td>".$row["fun_rgie"]."</td>
	<td>".$row["fun_sexo"]."</td>
	<td>".$row["fun_nascimento"]."</td>
	<td>".$row["fun_telefone"]."</td>
	<td>".$row["fun_celular"]."</td>
	<td>".$row["fun_email"]."</td>
	<td>".$row["fun_salario"]."</td>
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