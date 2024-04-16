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
            <h2>Número Primo</h2>
            <form action="form-numero-primo.jsp" method="post" >
                <label for="numero">Informe um número para verificar se é primo</label>
                <br><br>
                <input type="number" id="numero" name="numero" required>
                <br><br>
                <div style="padding: 20px;">
                    <button type="submit">Calcular</button>
                </div>
            </form>
           <% if(request.getMethod().equalsIgnoreCase("post"))
            {
                try {
            if (request.getParameter("numero") != null) 
            {
                int numero = Integer.parseInt(request.getParameter("numero"));
                boolean primo = true;
                for (int i = 2; i < numero; i++) {
                 if (numero % i == 0) 
                  {
                     primo = false;
                     break;
                  }
                    }
                    if (primo) 
                    {
                    out.println("O número " + numero + " é primo.");
                    } 
                    else
                    {
                    out.println("O número " + numero + " não é primo.");
                    }
                }
                    else 
                {
                   out.println("Informe um número.");
                }
         } 
          catch (Exception e) {
            out.println("Erro ao calcular o número primo.");
         } }%>
        </div>
    </body>
</html>
