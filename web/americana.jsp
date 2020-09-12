<%-- 
    Document   : americana
    Created on : 4 de set de 2020, 01:16:56
    Author     : Fernanda
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <title>Amortização Americana</title>
    </head>
    <body>
          <nav id="menu">
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        </nav>
          <div align="center">
    <h1>Amortização Americana</h1>
    <p>É caracterizado por pagamentos mensais equivalentes aos juros, não havendo amortizações mensais e prevendo a amortização total da dívida inicial em um único pagamento ao final de um período estipulado (em meses ou anos).</p>
     <form>
            <label>Valor empréstimo: </label><br> <input type="text" name="SalDev"/><br/>
            <label>Taxa juros (em %):</label> <br><input type="text" name="Taxa"/><br/>
            <label>Parcelas (em meses): </label> <br><input type="text" name="Tempo"/><br/><br>
            <button type="submit" class="btn btn-primary">Calcular</button>
            <button type="reset" class="btn btn-danger">Cancelar</button>
                                              
        </form><br>
        
        <%try{%>
        <%
            double saldev = Double.parseDouble(request.getParameter("SalDev"));
            double taxa = Double.parseDouble(request.getParameter("Taxa"));
            double tempo = Integer.parseInt(request.getParameter("Tempo"));
            
            DecimalFormat df = new DecimalFormat("#,##0.00");
        %>
        <div>
            <table border="1">
            <tr><th colspan="1">Periodo (Meses)</th><th>Saldo (R$)</th><th>Amortização (R$)</th><th>Juros (R$)</th><th>Prestação (R$)</th></tr>
        <% double amort = 0; double juros = 0; double presta = 0;
        taxa = taxa/100;
        for(int ct = 0; ct <= tempo; ct++){
        if(ct == 1){juros = saldev * taxa; presta = juros; }
        if(ct == tempo){presta = presta + saldev; amort = saldev; saldev = 0; } %>
            <tr>   
                <th><%= ct %></th> <%-- Periodo --%>
                <td><%= df.format(saldev) %></td> <%-- Saldo --%>
                <td><%= df.format(amort) %></td> <%-- Amortização --%>
                <td><%= df.format(juros) %></td> <%-- Juros --%>
                <td><%= df.format(presta) %></td> <%-- Prestação --%>
            </tr>
            <%}
            juros = juros*tempo;
            double presttotal = amort+juros; %>
            <tr>
                <th>Total:</th> <%-- Total --%>
                <th> --- </th>
                <th><%= df.format(amort) %></th> <%-- Amortização Total --%>
                <th><%= df.format(juros) %></th> <%-- Juros Total --%>
                <th><%= df.format(presttotal) %></th> <%-- Prestação Total --%>
            </tr>
            </table>
        <%}catch(Exception ex){%>
        <b>Insira todos os dados.</b><br>
        <%}%>
        <br>
        </div>
         </div>
    <footer>      
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
