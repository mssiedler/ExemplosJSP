<%@page import="modelo.Aluno"%>
<%@page import="java.util.List"%>
<%@page import="dao.AlunoDAO"%>
<%
AlunoDAO dao = new AlunoDAO();
Aluno aluno = dao.buscarPorChavePrimaria(1234);








%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><?=aluno.getMatricula()?></h1>
    </body>
</html>
