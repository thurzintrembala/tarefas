<%-- 
    Document   : date-time
    Created on : 30 de ago de 2021, 21:02:20
    Author     : arthu
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Date-time</title>
    </head>
    <body>
        <h1>Data e hora do servidor</h1>
        <h2><a href="index.html">Voltar à página inicial<a/></h2><hr/>
        <%Date now = new Date();%>
        <div><%= now %></div>
    </body>
</html>
