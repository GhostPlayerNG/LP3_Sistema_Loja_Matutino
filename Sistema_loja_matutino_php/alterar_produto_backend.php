<?php
error_reporting(0);
include "conexao.php";
$pro_codigo1=$_POST['pro_codigo'];
$pro_descricao1=$_POST['pro_descricao'];
$tpp_codigo1=$_POST['tpp_codigo'];
$pro_precocusto1=$_POST['pro_precocusto'];
$pro_precovenda1=$_POST['pro_precovenda'];
$pro_embalagem1=$_POST['pro_embalagem'];
$pro_embalagem1=$_POST['pro_embalagem'];
$pro_ipi1=$_POST['pro_ipi'];
$alterar= mysql_query("UPDATE tb_produtos 
                      SET pro_descricao='$pro_descricao1',tpp_codigo='$tpp_codigo1',
					 pro_precocusto='$pro_precocusto1',pro_precovenda='$pro_precovenda1',
					 pro_embalagem='$pro_embalagem1',pro_ipi='$pro_ipi1'
					 WHERE pro_codigo='$pro_codigo1'")
		  or die(mysql_error());
mysql_close($db);
include "consulta_produtos.php";
?>