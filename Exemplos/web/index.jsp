<%-- 
    Document   : index
    Created on : 24/09/2015, 10:46:01
    Author     : marcelosiedler
--%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nome;
            String cep;
            String email;
           
            nome = "Marcelo";
            cep = "96090-580";
            email = "siedler@gmail.com";
            //Saída
            //out.println(nome + " " + sobrenome);
        %>
        
        <h1>Minhas Informações</h1>
        <div>
            Nome:<span><%=nome%></span><br />
            Email:<span><%=email%></span><br />
            Cep:<span><%=cep%></span><br />
        </div>
    </body>
</html>
