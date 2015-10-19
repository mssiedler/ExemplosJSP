<%-- 
    Document   : Recebendo-GET-URL.jsp
    Created on : 16/10/2015, 14:14:21
    Author     : marcelosiedler
--%>

<%
    
    
String variavel,var2,var3;

if(request.getParameter("nome")==null)
{
    variavel = "Parâmetro não atribuído";
}
else
{
    variavel = request.getParameter("nome");
}
if(request.getParameter("cep")==null)
{
    var2 = "Parâmetro não atribuído";
}
else
{
    var2 = request.getParameter("cep");
}
if(request.getParameter("idade")==null)
{
    var3 = "Parâmetro não atribuído";
}
else
{
    var3 = request.getParameter("idade");
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nome:<%=variavel%><br />Cep:<%=var2%><br />Idade:<%=var3%></h1>
    </body>
</html>
