<%@ page contentType="text/html"%>  
<!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">   
<html>  
<head> <center> 
<title>Vendas</title>        
<script>     
function enviar(par){          
    if (par == 'cadastrar'){          
        if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
        }else if (document.cadastro.fun_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo funcionario';  
        }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo pagamento';  
        }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo nota fiscal';  
        }else if (document.cadastro.com_datavendaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data venda';  
        }else if (document.cadastro.com_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';  
        }else if (document.cadastro.com_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo observacoes';  
        }else {  
            document.cadastro.action='cadastrar_vendas.jsp';  
            document.cadastro.submit();  
        }       
    } else if (par == 'consultar'){       
        if (document.cadastro.com_codigoField.value == ''){ 
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
        }else {  
            document.cadastro.action='consultar_vendas.jsp';  
            document.cadastro.submit();  
        }       
    } else if (par == 'alterar'){       
        if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
        }else if (document.cadastro.fun_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo funcionario';  
        }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo pagamento';  
        }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo nota fiscal';  
        }else if (document.cadastro.com_datavendaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data venda';  
        }else if (document.cadastro.com_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';  
        }else if (document.cadastro.com_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo observacoes';  
        }else { 
            document.cadastro.action='alterar_vendas.jsp';  
            document.cadastro.submit();  
        }  
    } else if (par == 'excluir'){       
        if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
        }else {  
            document.cadastro.action='excluir_vendas.jsp';  
            document.cadastro.submit();  
        }  
    } else if (par == 'listar'){  
        document.cadastro.action='listar_vendas.jsp';  
        document.cadastro.submit();  
    }  
}       
</script>       
<meta http-equiv="Content-Type" content="text/html; charset=iso--">  
<style type="text/css">  
<!--  
.style {&nbsp; &nbsp;font-size: px;  
&nbsp; &nbsp;font-weight: bold;  
}  
-->  
</style>  
</head>      
<%  
String com_codigo = request.getParameter("com_codigo");  
String fun_codigo = request.getParameter("fun_codigo");
String tpg_codigo = request.getParameter("tpg_codigo");  
String nf_codigo = request.getParameter("nf_codigo"); 
String com_datavenda = request.getParameter("com_datavenda");
String com_valortotal = request.getParameter("com_valortotal"); 	
String com_observacoes = request.getParameter("com_observacoes"); 
String status = request.getParameter("status");  
%>       
<body>  
<form name="cadastro" method="get">       
    <table width="" border="">  
        <tr>  
            <td width="" height="" bgcolor="red"><p align="l5eft" class="style"> Cadastro Vendas</p>  
            </td>  
        </tr>  
        <tr>  
            <td height="" bgcolor="red"><p> <strong>Codigo: </strong>  
                <input name="com_codigoField" type="text" id="com_codigoField" size="" value="<%=(com_codigo==null)?"":com_codigo%>"> </p>  
                <p><strong>Codigo funcionario: </strong>        
                <input name="fun_codigoField" type="text" id="fun_codigoField" size="" value="<%=(fun_codigo==null)?"":fun_codigo%>"> </p> 
                <p><strong>Codigo tipo pagamento: </strong>  
                <input name="tpg_codigoField" type="text" id="tpg_codigoField" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>"> </p> 
                <p><strong>Codigo Nota Fiscal: </strong>        
                <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>"> </p>
                <p><strong>Data Venda: </strong>        
                <input name="com_datavendaField" type="text" id="com_datavendaField" size="" value="<%=(com_datavenda==null)?"":com_datavenda%>"> </p>      
                <p><strong>Valor Total: </strong>  
                <input name="com_valortotalField" type="text" id="com_valortotalField" size="" value="<%=(com_valortotal==null)?"":com_valortotal%>"> </p> 
                <p><strong>Observacoes: </strong>        
                <input name="com_observacoesField" type="text" id="com_observacoesField" size="" value="<%=(com_observacoes==null)?"":com_observacoes%>"> </p>      					
            </td>  
        </tr>  
        <tr>  
            <td height="" bgcolor="red"><p>   
                <input type="button" onClick="enviar('cadastrar')" name="bt" value="cadastrar">  
                <input type="button" onClick="enviar('consultar')" name="bt" value="consultar">  
                <input type="button" onClick="enviar('alterar')" name="bt" value="alterar">  
                <input type="button" onClick="enviar('excluir')" name="bt" value="excluir">  
                <input type="button" onClick="enviar('listar')" name="bt" value="listar">  
                </p>  
                <p> <strong>Status:  
                <input name="statusField" disabled type="text" id="statusField" size="" value="<%=(status==null)?"":status%>">  
                </strong></p>  
            </td>  
        </tr>  
    </table>  
</form>  
</body>  
</html>  