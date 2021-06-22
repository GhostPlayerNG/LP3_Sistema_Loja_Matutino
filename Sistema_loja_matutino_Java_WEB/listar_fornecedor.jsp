<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_tipoproduto.Conexao_tipoproduto"/>    
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>Listar Tipo Produto</title>  
<meta http-equiv="Content-Type" content="text/html; charset=iso--">  
</head>  
<body>  
<form name="form" method="post" action="tipoproduto.jsp">  
<p><strong>Tabela Tipo Produto </strong></p>  
<table border=1 cellspacing=0 cellpadding=0 >  
	<tr>  
		<td width=50><strong>Código</strong></td>      
		<td width=50><strong>Nome</strong></td>      
		<td width=50><strong>Endereço</strong></td>
		<td width=50><strong>Numero</strong></td>
		<td width=50><strong>Bairro</strong></td>
		<td width=50><strong>Cidade</strong></td>
		<td width=50><strong>UF</strong></td>
		<td width=50><strong>CNPJ/CPF</strong></td>
		<td width=50><strong>RG/IE</strong></td>
		<td width=50><strong>Telefone</strong></td>
		<td width=50><strong>Fax</strong></td>
		<td width=50><strong>Celular</strong></td>
		<td width=50><strong>Email</strong></td> 
    </tr>    
		<%      
		try {  
			con.setConsulta();  
			ResultSet temp = con.getResultado();     
			while (temp.next()){  
			%>  
			<tr>  
				<td width=50>  
					<%out.print(temp.getString("for_codigo"));%>  
				</td>  
				<td width=50>  
					<%out.print(temp.getString("for_nome"));%>  
				</td>  
				<td width=50>  
					<%out.print(temp.getString("for_endereco"));%> 
				</td>	
				<td width=50>  
					<%out.print(temp.getString("for_numero"));%>  
				</td>
				<td width=50>  
					<%out.print(temp.getString("for_bairro"));%>  
				</td>
				<td width=50>  
					<%out.print(temp.getString("for_cidade"));%>  
				</td>
				<td width=50>  
					<%out.print(temp.getString("for_uf"));%>  
				</td>
				<td width=50>  
					<%out.print(temp.getString("for_cnpjcpf"));%>  
				</td>
				<td width=50>  
					<%out.print(temp.getString("for_rgie"));%>  
				</td>
				<td width=50>  
					<%out.print(temp.getString("for_telefone"));%>  
				</td>
				<td width=50>  
					<%out.print(temp.getString("for_fax"));%>  
				</td>
				<td width=50>  
					<%out.print(temp.getString("for_celular"));%>  
				</td>
				<td width=50>  
					<%out.print(temp.getString("for_email"));%>  
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