<%-- 
    Document   : juros-compostos
    Created on : 2 de abr. de 2024, 13:56:22
    Author     : dange
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%@ include file="WEB-INF/jspf/menu.jspf" %></h1>
        <div style="text-align: center; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
             padding: 10px; border: 2px;
             margin-left: 850px;
             margin-right: 850px;
             background-color: rgb(239, 239, 239);
             border-radius: 10px;">
            <h2>Soma dos números entre 1 e o informado</h2>
            <form action="form-soma.jsp" method="post" >
                <label for="numero">Informe um numero para calcular de 1 até</label>
                <br><br>
                <input type="number" id="numero" name="numero" required>
                <br><br>
                <div style="padding: 20px;">
                    <button type="submit">Calcular</button>
                </div>
            </form>
           <%  try {
            if(request.getMethod().equalsIgnoreCase("post")) {
                if (request.getParameter("numero") != null) {
                    int numero = Integer.parseInt(request.getParameter("numero"));
                    int soma = 0;
                    for(int i = 1; i <= numero; i++) {
                        soma += i;
                    }
                    out.println("A soma de todos os números entre 1 e " + numero + " é: " + soma);
                }
            }
               }
           catch (Exception e) {
            out.println("Erro ao calcular a soma de todos os números.");
         } %>
        </div>
    </body>
</html>
