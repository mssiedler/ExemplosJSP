<%
String nome = request.getParameter("txtNome");
String cep = request.getParameter("txtCep");
String idade = request.getParameter("txtIdade");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nome:<%=nome%> <br />
            Cep:<%=cep%> <br />
            Idade<%=idade%> <br />
        </h1>
    </body>
</html>
