<%-- 
    Document   : Enviando-GET-FORM
    Created on : 16/10/2015, 14:35:32
    Author     : marcelosiedler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Recebendo-POST-FORM.jsp" method="post" >
            <input type="text"  name="txtNome" placeholder="digite o nome"/><br />
            <input type="text"  name="txtCep" placeholder="digite o cep"/><br />
            <input type="text"  name="txtIdade" placeholder="digite a idade"/><br />
            
            <input type="submit" value="Enviar" />
        </form>

    </body>
</html>
