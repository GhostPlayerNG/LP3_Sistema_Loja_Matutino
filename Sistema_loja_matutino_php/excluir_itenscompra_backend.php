<?php
error_reporting(0);
include "conexao.php";
$itc_codigo1=$_POST['itc_codigo'];
$excluir = mysql_query("DELETE FROM tb_itenscompra
			 WHERE itc_codigo = '$itc_codigo1'")
			or die(mysql_error());
mysql_close ($db);
include "consulta_itenscompra.php";
?>