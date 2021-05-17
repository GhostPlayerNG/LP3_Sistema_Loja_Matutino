<body>  
    <form name="form1" method="post" action="contapagar.jsp">  
    <p><strong>Tabela Conta Pagar </strong></p>  
    <table border=1 cellspacing=0 cellpadding=0 >  
        <tr>  
            <td width=50><strong>Código</strong></td>      
            <td width=50><strong>Valor Conta</strong></td>      
            <td width=50><strong>Data Vencimento</strong></td>  
            <td width=50><strong>Data Pagamento</strong></td> 
            <td width=50><strong>Codigo Nota Fiscal</strong></td> 
            <td width=50><strong>Observações</strong></td> 
        </tr>   
        <%      
        try {  
            con.setcp_codigo(Integer.parseInt(request.getParameter("cp_codigoField")));  
            if (con.excluirDados())  
            {  
                con.setConsulta();  
                ResultSet temp = con.getResultado();  
                while (temp.next()){  
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
              <%}  
           }  
           else{  
              response.sendRedirect("http://localhost:8084/sistema_loja_matutino/contapagar.jsp?status=Registro não encontrado");  
           }     
        }catch (Exception e) {  
           e.printStackTrace();  
        }          
        %>  
    </table>  
    <p></p>  
    <p><input type="submit" name="Submit" value="voltar"></p>  
    <p><strong>Status:  
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("cp_codigoField")%> foi excluido com sucesso">  
    </strong></p>  
    </form>  
    </body>  
    </html> 