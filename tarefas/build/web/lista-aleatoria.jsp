<%-- 
    Document   : lista-aleatoria
    Created on : 30 de ago de 2021, 21:35:28
    Author     : arthu
--%>
<%            
    
     int n = 0;
     String error = null;
     
     if (request.getParameter("n") == null) {
         error = "Não foi informado o parâmetro necessário 'n'";
     }
     else { 
     try {            
            n  = Integer.parseInt(request.getParameter("n"));          
            }
     catch (Exception e) {               
         
            error = "O valor informado como parâmetro n (" 
                    + request.getParameter("n1") + ") não é um número inteiro válido";         
            }   
     }
%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Números Aleatórios</title>
    </head>
    <body>
        <h1>Lista de números aleatórios</h1>
        <hr/>     
      
        <%if(error != null) { %>
            <div style="color:red"><%=error%></div>            
        <% } else { %>   
        
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Número</th>
            </tr>
            
            <%for(int i=1; i<=n; i++) { %>
            <tr>
                <td><%=i%></td>
                <td><%= ((int) (Math.random()*100)) %></td>
            </tr>         
        <% }  %>
        </table>
        <% }  %>
        <br>
         <form action ="lista-aleatoria.jsp">    
            <input type="number" name="n" value="<%=n%>"/>
            <input type="submit" value="Gerar"/>            
         </form><hr/>
         <a href="index.html">Voltar à página inicial</a>
    </body>
</html>