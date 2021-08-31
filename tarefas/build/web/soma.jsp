<%-- 
    Document   : soma
    Created on : 30 de ago de 2021, 20:51:51
    Author     : arthu
--%>
<%            
    
    double n1 = 0, n2 = 0, result = 0;
    String error = null;
    if (request.getParameter("n1") == null || request.getParameter("n2") == null) {
         error = "Não foram informados os dois parâmetros necessários 'n1' e 'n2'";
    }
    else {
         try {            
            n1  = Double.parseDouble(request.getParameter("n1"));          
            }
    catch (Exception e) {               
         
            error = "O valor informado como parâmetro n1 (" 
                    + request.getParameter("n1") + ") não é um número válido";         
            }    
     
    try {            
        n2  = Double.parseDouble(request.getParameter("n2"));          
        }
    catch (Exception e) {               
         
            error = "O valor informado como parâmetro n2 (" 
                    + request.getParameter("n2") + ") não é um número válido";         
        }   
     
     try { 
            result = n1+n2;           
        }
     catch (Exception e) {               
         
            error = "Erro de cálculo. " + e.getMessage();
         
        }             
}
     
     
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Soma TP - 5.1</title>
    </head>
    <body>
        <%if(error != null) { %>
            <div style="color:red"><%=error%></div>            
        <% } else { %>            
            <div><%=n1%> + <%=n2%> = <%=result%></div>           
        <% }  %>
        <br>
         <form action ="soma.jsp">    
            <input type="number" name="n1" value="<%=n1%>"/> + 
            <input type="number" name="n2" value="<%=n2%>"/>
            <input type="submit" value="Calcular!"/>            
        </form><br/>
        <h3><a href="index.html">Voltar à página inicial</a></h3>
    </body>
</html>