<body>  
    <form name="form1" method="post" action="fornecedor.jsp">  
    <p><strong>Tabela Fornecedor </strong></p>  
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
            con.setfor_codigo(Integer.parseInt(request.getParameter("for_codigoField")));  
            if (con.excluirDados())  
            {  
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
              <%}  
           }  
           else{  
              response.sendRedirect("http://localhost:8084/sistema_loja_matutino/fornecedor.jsp?status=Registro não encontrado");  
           }     
        }catch (Exception e) {  
           e.printStackTrace();  
        }          
        %>  
    </table>  
    <p></p>  
    <p><input type="submit" name="Submit" value="voltar"></p>  
    <p><strong>Status:  
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("for_codigoField")%> foi excluido com sucesso">  
    </strong></p>  
    </form>  
    </body>  
    </html> 