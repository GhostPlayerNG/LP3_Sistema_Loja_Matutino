<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_itensvenda.Conexao_itensvenda"/>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Itens Venda</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>
 <body>  
 <form name="form1" method="post" action="itensvenda.jsp">  
	<p><strong>Tabela Itens Venda </strong></p>  
	<table border=1 cellspacing=0 cellpadding=0 >  
		<tr>  
			<td width=50><strong>Código</strong></td> 
			<td width=50><strong>Código Vendas</strong></td> 
			<td width=50><strong>Código Produto</strong></td> 
			<td width=50><strong>Código Tipo Produto</strong></td>
			<td width=50><strong>Código Nota Fiscal</strong></td>
			<td width=50><strong>Código Tipo Pagamento</strong></td>
			<td width=50><strong>Código Funcionario</strong></td>
			<td width=50><strong>Embalagem</strong></td>  
			<td width=50><strong>Quantidade</strong></td>
			<td width=50><strong>Valor Unitario</strong></td>  
			<td width=50><strong>Desconto</strong></td> 
			<td width=50><strong>Valor Total</strong></td>  
		</tr>   
		<%      
		try {  
		   con.setitv_codigo(Integer.parseInt(request.getParameter("itv_codigoField")));
		   con.setven_codigo(Integer.parseInt(request.getParameter("ven_codigoField")));
		   con.setpro_codigo(Integer.parseInt(request.getParameter("pro_codigoField")));
		   con.settpp_codigo(Integer.parseInt(request.getParameter("tpp_codigoField")));
		   con.setnf_codigo(Integer.parseInt(request.getParameter("nf_codigoField")));
		   con.settpg_codigo(Integer.parseInt(request.getParameter("tpg_codigoField")));
		   con.setfun_codigo(Integer.parseInt(request.getParameter("fun_codigoField")));
		   con.setitv_embalagem(request.getParameter("itv_embalagemField"));  
		   con.setitv_qtde(request.getParameter("itv_qtdeField"));
		   con.setitv_valorun(request.getParameter("itv_valorunField"));
		   con.setitv_desc(request.getParameter("itv_descField"));   
		   con.setitv_valortotal(request.getParameter("itv_valortotalField"));
		   con.inserirDados();             
		   con.setConsulta();  
		   ResultSet temp = con.getResultado();  
		   temp.next();  
		   if(request.getParameter("itv_codigoField").equals(temp.getString("itv_codigo")))  
			  response.sendRedirect("http://localhost:8084/sistema_loja_matutino/itensvenda.jsp?status=Registro já existente");  
		   do{  
		   %>  
			<tr>  
				<td width=50>  
					<%out.print(temp.getString("itv_codigo"));%>  
				</td>  
				<td width=50>  
					<%out.print(temp.getString("ven_codigo"));%>  
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
					<%out.print(temp.getString("tpg_codigo"));%>  
				</td>  
				<td width=50>  
					<%out.print(temp.getString("fun_codigo"));%>  
				</td> 
				<td width=50>  
					<%out.print(temp.getString("itv_embalagem"));%>  
				</td>  
				<td width=50>  
					<%out.print(temp.getString("itv_qtde"));%> 
				</td>
				<td width=50>  
					<%out.print(temp.getString("itv_valorun"));%>  
				</td>	
				<td width=50>  
					<%out.print(temp.getString("itv_desc"));%>  
				</td>
				<td width=50>  
					<%out.print(temp.getString("itv_valortotal"));%>  
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
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("itv_codigoField")%> foi cadastrado com sucesso">  
    </strong></p>  
 </form>  
 </body>  
 </html> 