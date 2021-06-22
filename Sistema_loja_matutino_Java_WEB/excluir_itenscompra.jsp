<body>  
    <form name="form1" method="post" action="itenscompra.jsp">  
    <p><strong>Tabela Itens Compra </strong></p>  
    <table border=1 cellspacing=0 cellpadding=0 >  
        <tr>  
            <td width=50><strong>Código</strong></td> 
            <td width=50><strong>Código Compra</strong></td>
            <td width=50><strong>Código Produto</strong></td> 
            <td width=50><strong>Código Tipo Produto</strong></td> 
            <td width=50><strong>Código Nota Fiscal</strong></td>
            <td width=50><strong>Código Fornecedor</strong></td> 
            <td width=50><strong>Código Tipo Pagamento</strong></td> 
            <td width=50><strong>Embalagem</strong></td>      
            <td width=50><strong>Quantidade</strong></td>  
            <td width=50><strong>Valor Unitario</strong></td> 
            <td width=50><strong>Desconto</strong></td> 
            <td width=50><strong>Valor Total</strong></td> 
        </tr>   
        <%      
        try {  
            con.setitc_codigo(Integer.parseInt(request.getParameter("itc_codigoField")));  
            if (con.excluirDados())  
            {  
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
              <%}  
           }  
           else{  
              response.sendRedirect("http://localhost:8084/sistema_loja_matutino/itenscompra.jsp?status=Registro não encontrado");  
           }     
        }catch (Exception e) {  
           e.printStackTrace();  
        }          
        %>  
    </table>  
    <p></p>  
    <p><input type="submit" name="Submit" value="voltar"></p>  
    <p><strong>Status:  
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("itc_codigoField")%> foi excluido itc sucesso">  
    </strong></p>  
    </form>  
    </body>  
    </html> 