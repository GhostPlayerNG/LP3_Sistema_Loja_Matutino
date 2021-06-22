<body>  
    <form name="form1" method="post" action="vendas.jsp">  
    <p><strong>Tabela vendas </strong></p>  
    <table border=1 cellspacing=0 cellpadding=0 >  
        <tr>  
            <td width=50><strong>Código</strong></td> 
            <td width=50><strong>Código Funcionario</strong></td> 
            <td width=50><strong>Código Tipo Pagamento</strong></td> 
            <td width=50><strong>Código Nota Fiscal</strong></td> 
            <td width=50><strong>Data venpra</strong></td>      
            <td width=50><strong>Valor Total</strong></td>  
            <td width=50><strong>Observações</strong></td> 
        </tr>   
        <%      
        try {  
            con.setven_codigo(Integer.parseInt(request.getParameter("ven_codigoField")));  
            if (con.excluirDados())  
            {  
                con.setConsulta();  
                ResultSet temp = con.getResultado();  
                while (temp.next()){  
                %>  
                    <tr>  
                        <td width=50>  
                        <%out.print(temp.getString("ven_codigo"));%>  
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
                        <%out.print(temp.getString("ven_datavenda"));%>  
                        </td>  
                        <td width=50>  
                        <%out.print(temp.getString("ven_valortotal"));%> 
                        </td>	
                        <td width=50>  
                        <%out.print(temp.getString("ven_observacoes"));%>  
                        </td>
                    </tr>  
              <%}  
           }  
           else{  
              response.sendRedirect("http://localhost:8084/sistema_loja_matutino/vendas.jsp?status=Registro não encontrado");  
           }     
        }catch (Exception e) {  
           e.printStackTrace();  
        }          
        %>  
    </table>  
    <p></p>  
    <p><input type="submit" name="Submit" value="voltar"></p>  
    <p><strong>Status:  
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("ven_codigoField")%> foi excluido ven sucesso">  
    </strong></p>  
    </form>  
    </body>  
    </html> 