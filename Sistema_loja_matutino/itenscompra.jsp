<%@ page contentType="text/html"%>  
<!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">   
<html>  
<head> <center> 
<title>Itens Compras</title>        
<script>     
function enviar(par){          
    if (par == 'cadastrar'){          
        if (document.cadastro.itc_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
        }else if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo compras';  
        }else if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo produto';  
        }else if (document.cadastro.tpp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo produto';  
        }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo nota fiscal';  
        }else if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo fornecedor';  
        }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo pagamento';  
        }else if (document.cadastro.itc_embalagemField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo embalagem';  
        }else if (document.cadastro.itc_qtdeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo quantidade';  
        }else if (document.cadastro.itc_valorunField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor unitario';  
        }else if (document.cadastro.itc_descField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo desconto';  
        }else if (document.cadastro.itc_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';  
        }else {  
            document.cadastro.action='cadastrar_compras.jsp';  
            document.cadastro.submit();  
        }       
    } else if (par == 'consultar'){       
        if (document.cadastro.itc_codigoField.value == ''){ 
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
        }else {  
            document.cadastro.action='consultar_compras.jsp';  
            document.cadastro.submit();  
        }       
    } else if (par == 'alterar'){       
        if (document.cadastro.itc_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
        }else if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo compras';  
        }else if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo produto';  
        }else if (document.cadastro.tpp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo produto';  
        }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo nota fiscal';  
        }else if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo fornecedor';  
        }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo pagamento';  
        }else if (document.cadastro.itc_embalagemField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo embalagem';  
        }else if (document.cadastro.itc_qtdeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo quantidade';  
        }else if (document.cadastro.itc_valorunField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor unitario';  
        }else if (document.cadastro.itc_descField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo desconto';  
        }else if (document.cadastro.itc_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';  
        }else { 
            document.cadastro.action='alterar_compras.jsp';  
            document.cadastro.submit();  
        }  
    } else if (par == 'excluir'){       
        if (document.cadastro.itc_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
        }else {  
            document.cadastro.action='excluir_compras.jsp';  
            document.cadastro.submit();  
        }  
    } else if (par == 'listar'){  
        document.cadastro.action='listar_compras.jsp';  
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
String itc_codigo = request.getParameter("itc_codigo");  
String com_codigo = request.getParameter("com_codigo");
String pro_codigo = request.getParameter("pro_codigo");
String tpp_codigo = request.getParameter("tpp_codigo");
String nf_codigo = request.getParameter("nf_codigo");	
String for_codigo = request.getParameter("for_codigo");  
String tpg_codigo = request.getParameter("tpg_codigo"); 	
String itc_embalagem = request.getParameter("itc_embalagem");
String itc_qtde = request.getParameter("itc_qtde");
String itc_valorun = request.getParameter("itc_valorun"); 	
String itc_desc = request.getParameter("itc_desc"); 	
String itc_valortotal = request.getParameter("itc_valortotal"); 	
String status = request.getParameter("status");  
%>       
<body>  
<form name="cadastro" method="get">       
    <table width="" border="">  
        <tr>  
            <td width="" height="" bgcolor="red"><p align="l5eft" class="style"> Cadastro itens compras</p>  
            </td>  
        </tr>  
        <tr>  
            <td height="" bgcolor="red"><p> <strong>Codigo: </strong>  
                <input name="itc_codigoField" type="text" id="itc_codigoField" size="" value="<%=(itc_codigo==null)?"":itc_codigo%>"> </p>  
                <p><strong>Codigo Compra: </strong>
                <input name="com_codigoField" type="text" id="com_codigoField" size="" value="<%=(com_codigo==null)?"":com_codigo%>"> </p> 
                <p><strong>Codigo Produto: </strong>
                <input name="pro_codigoField" type="text" id="pro_codigoField" size="" value="<%=(pro_codigo==null)?"":pro_codigo%>"> </p> 
                <p><strong>Codigo Tipo Produto: </strong>
                <input name="tpp_codigoField" type="text" id="tpp_codigoField" size="" value="<%=(tpp_codigo==null)?"":tpp_codigo%>"> </p> 
                <p><strong>Codigo Nota Fiscal: </strong>        
                <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>"> </p>
                <p><strong>Codigo Fornecedor: </strong>        
                <input name="for_codigoField" type="text" id="for_codigoField" size="" value="<%=(for_codigo==null)?"":for_codigo%>"> </p> 
                <p><strong>Codigo Tipo Pagamento: </strong>
                <input name="tpg_codigoField" type="text" id="tpg_codigoField" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>"> </p> 
                <p><strong>Embalagem: </strong>        
                <input name="itc_embalagemField" type="text" id="itc_embalagemField" size="" value="<%=(itc_embalagem==null)?"":itc_embalagem%>"> </p>      
                <p><strong>Quantidade: </strong>        
                <input name="itc_qtdeField" type="text" id="itc_qtdeField" size="" value="<%=(itc_qtde==null)?"":itc_qtde%>"> </p> 
                <p><strong>Valor Unitario: </strong>  
                <input name="itc_valorunField" type="text" id="itc_valorunField" size="" value="<%=(itc_valorun==null)?"":itc_valorun%>"> </p>
                <p><strong>Valor Desconto: </strong>  
                <input name="itc_descField" type="text" id="itc_descField" size="" value="<%=(itc_desc==null)?"":itc_desc%>"> </p>
                <p><strong>Valor Total: </strong>  
                <input name="itc_valortotalField" type="text" id="itc_valortotalField" size="" value="<%=(itc_valortotal==null)?"":itc_valortotal%>"> </p>      					
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
                <p><strong>Status:  
                <input name="statusField" disabled type="text" id="statusField" size="" value="<%=(status==null)?"":status%>">  
                </strong></p>  
            </td>  
        </tr>  
    </table>  
</form>  
</body>  
</html>  