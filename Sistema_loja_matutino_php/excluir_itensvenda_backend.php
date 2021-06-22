<?php
error_reporting(0);
include "conexao.php";
$itv_codigo1=$_POST['itv_codigo'];
$excluir = mysql_query("DELETE FROM tb_itensvenda
			 WHERE itv_codigo = '$itv_codigo1'")
			or die(mysql_error());
mysql_close ($db);
include "consulta_itensvenda.php";
?>