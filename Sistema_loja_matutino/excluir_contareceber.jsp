<body>  
    <form name="form1" method="post" action="contareceber.jsp">  
    <p><strong>Tabela Conta Receber </strong></p>  
    <table border=1 cellspacing=0 cellpadding=0 >  
        <tr>  
            <td width=50><strong>Código</strong></td>      
            <td width=50><strong>Valor Conta</strong></td>      
            <td width=50><strong>Data Vencimento</strong></td>  
            <td width=50><strong>Data Recebimento</strong></td> 
            <td width=50><strong>Codigo Nota Fiscal</strong></td> 
            <td width=50><strong>Observações</strong></td> 
        </tr>   
        <%      
        try {  
            con.setcr_codigo(Integer.parseInt(request.getParameter("cr_codigoField")));  
            if (con.excluirDados())  
            {  
                con.setConsulta();  
                ResultSet temp = con.getResultado();  
                while (temp.next()){  
                %>  
                    <tr>  
                        <td width=50>  
                        <%out.print(temp.getString("cr_codigo"));%>  
                        </td>  
                        <td width=50>  
                        <%out.print(temp.getString("cr_valorconta"));%>  
                        </td>  
                        <td width=50>  
                        <%out.print(temp.getString("cr_datavencimento"));%> 
                        </td>	
                        <td width=50>  
                        <%out.print(temp.getString("cr_datarecebimento"));%>  
                        </td>
                        <td width=50>  
                        <%out.print(temp.getString("nf_codigo"));%>  
                        </td> 
                        <td width=50>  
                        <%out.print(temp.getString("cr_observacoes"));%>  
                        </td>
                    </tr>  
              <%}  
           }  
           else{  
              response.sendRedirect("http://localhost:8084/sistema_loja_matutino/contareceber.jsp?status=Registro não encontrado");  
           }     
        }catch (Exception e) {  
           e.printStackTrace();  
        }          
        %>  
    </table>  
    <p></p>  
    <p><input type="submit" name="Submit" value="voltar"></p>  
    <p><strong>Status:  
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("cr_codigoField")%> foi excluido com sucesso">  
    </strong></p>  
    </form>  
    </body>  
    </html> 