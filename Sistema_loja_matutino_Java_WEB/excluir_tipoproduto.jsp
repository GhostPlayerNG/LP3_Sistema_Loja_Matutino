<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_tipoproduto.Conexao_tipoproduto"/>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>Excluir Tipo Produto</title>  
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
</head>  
<body>  
<form name="form1" method="post" action="tipoproduto.jsp">  
<p><strong>Tabela Tipo Produto </strong></p>  
<table border=1 cellspacing=0 cellpadding=0 >  
	<tr>  
		<td width=50><strong>Codigo</strong></td>      
		<td width=50><strong>Descricao</strong></td>      
	</tr>   
	<%      
	try {  
		con.setTpp_codigo(Integer.parseInt(request.getParameter("tpp_codigoField")));  
		if (con.excluirDados())  
		{  
			con.setConsulta();  
			ResultSet temp = con.getResultado();  
			while (temp.next()){  
			%>  
				<tr>  
					<td width=50>  
					<%out.print(temp.getString("tpp_codigo"));%>  
					</td>  
					<td width=50>  
					<%out.print(temp.getString("tpp_descricao"));%>  
					</td>  
				</tr>  
          <%}  
       }  
       else{  
          response.sendRedirect("http://localhost:8084/sistema_loja_matutino/tipoproduto.jsp?status=Registro não encontrado");  
       }     
    }catch (Exception e) {  
       e.printStackTrace();  
    }          
	%>  
</table>  
<p></p>  
<p><input type="submit" name="Submit" value="voltar"></p>  
<p><strong>Status:  
<input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("tpp_codigoField")%> foi excluido com sucesso">  
</strong></p>  
</form>  
</body>  
</html> 