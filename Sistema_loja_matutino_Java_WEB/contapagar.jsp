    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">   
    <html>  
    <head> <center> 
    <title>Conta Pagar</title>        
    <script>     
	function enviar(par){          
		if (par == 'cadastrar'){          
			if (document.cadastro.cp_codigoField.value == ''){  
				document.cadastro.statusField.value = 'Preencha o campo codigo';  
			}else if (document.cadastro.cp_valorcontaField.value == ''){  
				document.cadastro.statusField.value = 'Preencha o campo valor conta';  
			}else if (document.cadastro.cp_datavencimentoField.value == ''){  
				document.cadastro.statusField.value = 'Preencha o campo data vencimento';  
			}else if (document.cadastro.cp_datapagamentoField.value == ''){  
				document.cadastro.statusField.value = 'Preencha o campo data pagamento';  
			}else if (document.cadastro.nf_codigoField.value == ''){  
				document.cadastro.statusField.value = 'Preencha o campo codigo nota fiscal';  
			}else if (document.cadastro.cp_observacoesField.value == ''){  
				document.cadastro.statusField.value = 'Preencha o campo observacoes';  
			}else {  
				document.cadastro.action='cadastrar_contapagar.jsp';  
				document.cadastro.submit();  
			}       
		} else if (par == 'consultar'){       
			if (document.cadastro.cp_codigoField.value == ''){ 
				document.cadastro.statusField.value = 'Preencha o campo código';  
			}else {  
				document.cadastro.action='consultar_contapagar.jsp';  
				document.cadastro.submit();  
			}       
		} else if (par == 'alterar'){       
			if (document.cadastro.cp_codigoField.value == ''){  
				document.cadastro.statusField.value = 'Preencha o campo código';  
			}else if (document.cadastro.cp_valorcontaField.value == ''){  
				document.cadastro.statusField.value = 'Preencha o campo valor conta';  
			}else if (document.cadastro.cp_datavencimentoField.value == ''){  
				document.cadastro.statusField.value = 'Preencha o campo data vencimento';  
			}else if (document.cadastro.cp_datapagamentoField.value == ''){  
				document.cadastro.statusField.value = 'Preencha o campo data pagamento';  
			}else if (document.cadastro.nf_codigoField.value == ''){  
				document.cadastro.statusField.value = 'Preencha o campo codigo nota fiscal';  
			}else if (document.cadastro.cp_observacoesField.value == ''){  
				document.cadastro.statusField.value = 'Preencha o campo observações';  
			}else { 
				document.cadastro.action='alterar_contapagar.jsp';  
				document.cadastro.submit();  
			}  
		} else if (par == 'excluir'){       
			if (document.cadastro.cp_codigoField.value == ''){  
				document.cadastro.statusField.value = 'Preencha o campo código';  
			}else {  
				document.cadastro.action='excluir_contapagar.jsp';  
				document.cadastro.submit();  
			}  
		} else if (par == 'listar'){  
			document.cadastro.action='listar_contapagar.jsp';  
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
	.A:link {
		TEXT-DECORATION: none;
		font-family:Verdana;
		color:#FFFFFF;
	}
	.A:visited { TEXT-DECORATION: none; font-family:Verdana; color:#333333}
	.A:hover {
		TEXT-DECORATION: none;
		font-family:Verdana;
		color:#0088FF;
	}	
	</style>  
	</head>      
	<%  
	String cp_codigo = request.getParameter("cp_codigo");  
	String cp_valorconta = request.getParameter("cp_valorconta");  
	String cp_datavencimento = request.getParameter("cp_datavencimento");  
	String cp_datapagamento = request.getParameter("cp_datapagamento"); 
	String nf_codigo = request.getParameter("nf_codigo"); 
	String cp_observacoes = request.getParameter("cp_observacoes"); 
	String status = request.getParameter("status");  
	%>       
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
	<form name="cadastro" method="get">       
		<table width="" border="">  
			<tr>  
				<td width="" height="" bgcolor="red"><p align="l5eft" class="style"> Cadastro Conta Pagar</p>  
				</td>  
			</tr>  
			<tr>  
				<td height="" bgcolor="red"><p> <strong>Codigo: </strong>  
					<input name="cp_codigoField" type="text" id="cp_codigoField" size="" value="<%=(cp_codigo==null)?"":cp_codigo%>"> </p>  
					<p> <strong>Valor: </strong>  
					<input name="cp_valorcontaField" type="text" id="cp_valorcontaField" size="" value="<%=(cp_valorconta==null)?"":cp_valorconta%>"> </p> 
					<p><strong>Data Vencimento: </strong>        
					<input name="cp_datavencimentoField" type="text" id="cp_datavencimentoField" size="" value="<%=(cp_datavencimento==null)?"":cp_datavencimento%>"> </p>   
					<p><strong>Data Pagamento: </strong>        
					<input name="cp_datapagamentoField" type="text" id="cp_datapagamentoField" size="" value="<%=(cp_datapagamento==null)?"":cp_datapagamento%>"> </p>      
					<p><strong>Codigo Nota Fiscal: </strong>        
					<input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>"> </p>
					<p><strong>Observacoes: </strong>        
					<input name="cp_observacoesField" type="text" id="cp_observacoesField" size="" value="<%=(cp_observacoes==null)?"":cp_observacoes%>"> </p>      					
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