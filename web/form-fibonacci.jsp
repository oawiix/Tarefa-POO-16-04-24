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
            <h2>Sequência de Fibonacci</h2>
            <form action="form-fibonacci.jsp" method="post" >
                <label for="numero">Informe o indice final da sequência</label>
                <br><br>
                <input type="number" id="numero" name="numero" required>
                <br><br>
                <div style="padding: 20px;">
                    <button type="submit">Calcular</button>
                </div>
            </form>
           <%  try {
            if(request.getMethod().equalsIgnoreCase("post"))
            {
                if (request.getParameter("numero") != null) 
            {
                int numero = Integer.parseInt(request.getParameter("numero"));
                for (int i = 0; i <= numero; i++) 
                {
                    int fib = 0;
                    int fib1 = 1;
                    int fib2 = 1;
                    for (int j = 0; j < i; j++) 
                    {
                        fib = fib1 + fib2;
                        fib1 = fib2;
                        fib2 = fib;
                    }
                    out.println(fib + " | ");
                }
           }
               }
               }
           catch (Exception e) {
            out.println("Erro ao calcular Fibonacci.");
         } %>
        </div>
    </body>
</html>
