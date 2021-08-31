<%-- 
    Document   : tabuada
    Created on : 30 de ago de 2021, 21:45:40
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
                    + request.getParameter("n") + ") não é um número inteiro válido";         
            }   
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabuda</title>
    </head>
    <body>
        <%if(error != null) { %>
            <div style="color:red"><%=error%></div>            
        <% } else { %>           
        <h1>Tabuada do <%=n%></h1>           
         <%for(int i=1; i<=10; i++) { %>
          <table>
            <tr>
                <td><%=n%></td>
                <td>x</td>
                <td><%=i%></td>
                <td>=</td>
                <td><%=n*i%></td>
            </tr>
        </table>                  
        <% }  %>
        <% }  %>
        <br>
         <form action ="tabuada.jsp">    
            <input type="number" name="n" value="<%=n%>"/>
            <input type="submit" value="Calcular!"/>            
        </form><hr/>
        <h3>
            <a href="index.html">Voltar à página inicial</a>
        </h3>
    </body>
</html