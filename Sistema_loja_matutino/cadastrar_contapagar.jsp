<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_contapagar.Conexao_contapagar"/>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Conta Pagar</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>
 <body>  
 <form name="form1" method="post" action="contapagar.jsp">  
	<p><strong>Tabela Conta Pagar </strong></p>  
	<table border=1 cellspacing=0 cellpadding=0 >  
		<tr>  
			<td width=50><strong>Código</strong></td>      
			<td width=50><strong>Valor conta</strong></td>      
			<td width=50><strong>Data vencimento</strong></td>  
			<td width=50><strong>Data pagamento</strong></td> 
			<td width=50><strong>Codigo Nota Fiscal</strong></td>
			<td width=50><strong>Observações</strong></td> 			
		</tr>   
		<%      
		try {  
		   con.setcp_codigo(Integer.parseInt(request.getParameter("cp_codigoField")));  
		   con.setcp_valorconta(request.getParameter("cp_valorcontaField"));  
		   con.setcp_datavencimento(request.getParameter("cp_datavencimentoField"));  
		   con.setcp_datapagamento(request.getParameter("cp_datapagamentoField"));   
		   con.setnf_codigo(Integer.parseInt(request.getParameter("nf_codigoField")));  
		   con.setcp_observacoes(request.getParameter("cp_observacoesField"));  
		   con.inserirDados();             
		   con.setConsulta();  
		   ResultSet temp = con.getResultado();  
		   temp.next();  
		   if(request.getParameter("cp_codigoField").equals(temp.getString("cp_codigo")))  
			  response.sendRedirect("http://localhost:8084/sistema_loja_matutino/contapagar.jsp?status=Registro já existente");  
		   do{  
		   %>  
			<tr>  
				<td width=50>  
					<%out.print(temp.getString("cp_codigo"));%>  
				</td>  
				<td width=50>  
					<%out.print(temp.getString("cp_valorconta"));%>  
				</td>  
				<td width=50>  
					<%out.print(temp.getString("cp_datavencimento"));%> 
				</td>	
				<td width=50>  
					<%out.print(temp.getString("cp_datapagamento"));%>  
				</td>
				<td width=50>  
					<%out.print(temp.getString("nf_codigo"));%>  
				</td>  
				<td width=50>  
					<%out.print(temp.getString("cp_observacoes"));%>  
				</td>  
			</tr>  
			<%}while (temp.next());       
		}catch (Exception e) {  
			e.printStackTrace();  
		}      
		%>  
	</table>  
	<p></p>  
	<p><input type="submit" name="Submit" value="voltar"></p>    
	<p><strong>Status:  
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("cp_codigoField")%> foi cadastrado com sucesso">  
    </strong></p>  
 </form>  
 </body>  
 </html> 