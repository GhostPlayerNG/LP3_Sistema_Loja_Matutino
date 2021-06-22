<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_itenscompra.Conexao_itenscompra"/>    
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>Listar Itens Compra</title>  
<meta http-equiv="Content-Type" content="text/html; charset=iso--">  
</head>  
<body>  
<form name="form" method="post" action="itenscompra.jsp">  
<p><strong>Tabela Itens Compra </strong></p>  
<table border=1 cellspacing=0 cellpadding=0 >  
	<tr>  
		<td width=50><strong>Código</strong></td>
		<td width=50><strong>Código Compras</strong></td>
		<td width=50><strong>Código Produto</strong></td>
		<td width=50><strong>Código Tipo Produto</strong></td>          
		<td width=50><strong>Código Nota Fiscal</strong></td>   
		<td width=50><strong>Código Fornecedor</strong></td>  
		<td width=50><strong>Código Tipo Pagamento</strong></td> 
		<td width=50><strong>Embalagem</strong></td>
		<td width=50><strong>Quantidade</strong></td>
		<td width=50><strong>Valor Unitario</strong></td>
		<td width=50><strong>Valor Desconto</strong></td>
		<td width=50><strong>Valor Valor Total</strong></td>
    </tr>    
		<%      
		try {  
			con.setConsulta();  
			ResultSet temp = con.getResultado();     
			while (temp.next()){  
			%>  
			<tr>  
				<td width=50>  
					<%out.print(temp.getString("itc_codigo"));%>  
				</td>
				<td width=50>  
					<%out.print(temp.getString("com_codigo"));%>  
				</td>
				<td width=50>  
					<%out.print(temp.getString("pro_codigo"));%>  
				</td>
				<td width=50>  
					<%out.print(temp.getString("tpp_codigo"));%>  
				</td>  
				<td width=50>  
					<%out.print(temp.getString("nf_codigo"));%>  
				</td>  
				<td width=50>  
					<%out.print(temp.getString("for_codigo"));%>  
				</td>  
				<td width=50>  
					<%out.print(temp.getString("tpg_codigo"));%>  
				</td>  
				<td width=50>  
					<%out.print(temp.getString("itc_embalagem"));%>  
				</td>
				<td width=50>  
					<%out.print(temp.getString("itc_qtde"));%>  
				</td>  
				<td width=50>  
					<%out.print(temp.getString("itc_valorun"));%>  
				</td>
				<td width=50>  
					<%out.print(temp.getString("itc_desc"));%>  
				</td>  
				<td width=50>  
					<%out.print(temp.getString("itc_valortotal"));%>  
				</td>
			</tr>  
			<%
		}  
		}catch (Exception e) {  
			e.printStackTrace();  
		}  
	%>  
</table>  
<p><input type="submit" name="Submit" value="voltar"></p>  
</form>  
</body>  
</html>  