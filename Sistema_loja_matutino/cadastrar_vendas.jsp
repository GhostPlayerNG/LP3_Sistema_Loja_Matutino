<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_vendas.Conexao_vendas"/>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Vendas</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>
 <body>  
 <form name="form1" method="post" action="vendas.jsp">  
	<p><strong>Tabela Vendas</strong></p>  
	<table border=1 cellspacing=0 cellpadding=0 >  
		<tr>  
			<td width=50><strong>Código</strong></td>
			<td width=50><strong>Código Funcionario</strong></td>			
			<td width=50><strong>Código Tipo Pagamento</strong></td>
			<td width=50><strong>Código Nota Fiscal</strong></td>
			<td width=50><strong>Data Venda</strong></td>
			<td width=50><strong>Valor Total</strong></td>  
			<td width=50><strong>Observações</strong></td> 
		</tr>   
		<%      
		try {  
		   con.setcom_codigo(Integer.parseInt(request.getParameter("com_codigoField")));
		   con.setfun_codigo(Integer.parseInt(request.getParameter("fun_codigoField")));
		   con.settpg_codigo(Integer.parseInt(request.getParameter("tpg_codigoField")));
		   con.setnf_codigo(Integer.parseInt(request.getParameter("nf_codigoField")));
		   con.setcom_datavenda(request.getParameter("com_datavendaField"));  
		   con.setcom_valortotal(request.getParameter("com_valortotalField"));  
		   con.setcom_observacoes(request.getParameter("com_observacoesField"));   
		   con.inserirDados();             
		   con.setConsulta();  
		   ResultSet temp = con.getResultado();  
		   temp.next();  
		   if(request.getParameter("com_codigoField").equals(temp.getString("com_codigo")))  
			  response.sendRedirect("http://localhost:8084/sistema_loja_matutino/vendas.jsp?status=Registro já existente");  
		   do{  
		   %>  
			<tr>  
				<td width=50>  
					<%out.print(temp.getString("com_codigo"));%>  
				</td> 
				<td width=50>  
					<%out.print(temp.getString("fun_codigo"));%>  
				</td> 
				<td width=50>  
					<%out.print(temp.getString("tpg_codigo"));%>  
				</td>   
				<td width=50>  
					<%out.print(temp.getString("nf_codigo"));%>  
				</td>  
				<td width=50>  
					<%out.print(temp.getString("com_datavenda"));%>  
				</td>  
				<td width=50>  
					<%out.print(temp.getString("com_valortotal"));%> 
				</td>	
				<td width=50>  
					<%out.print(temp.getString("com_observacoes"));%>  
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
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("com_codigoField")%> foi cadastrado com sucesso">  
    </strong></p>  
 </form>  
 </body>  
 </html> 