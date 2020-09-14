<%-- 
    Document   : index
    Created on : 4 de set de 2020, 01:04:40
    Author     : Fernanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">  
        
        <%@include file="WEB-INF/jspf/header.jspf" %> 
        <title>Home</title>
    </head>
    
    <body style="color: gray">
        
        <nav id="menu">
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        </nav>
      
    <center> <h3>Cálculo de amortização</h3></center>
    
    <center><p>Amortização é um processo de extinção de uma dívida através de pagamentos periódicos, que são realizados em função de um planejamento, de modo que cada prestação corresponde à soma do reembolso do capital ou do pagamento dos juros do saldo devedor, podendo ser o reembolso de ambos, sendo que os juros são sempre calculados sobre o saldo devedor. </p></center>
        
    <center><p>A aplicação é capaz de gerar uma tabela de Amortização Constante, tabela de amortização Americana ou uma Tabela Price, uma por vez. Funciona através de formulário e as tabelas são geradas na própria página.</p></center>
     
    <center><h4>Integrantes do grupo: </h4></center>
    
    <center> <h5>Jane Fernanda Martins </h5></center>

    <center><p>Desing, Tabela Price, Amortização Americana, Home e Amortização Constante.</p></center>
 <footer>
       
<%@include file="WEB-INF/jspf/footer.jspf" %>
</footer>
   
       

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>

</html>