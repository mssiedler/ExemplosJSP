<%@page import="modelo.Aluno"%>

<%
    
Aluno aluno = new Aluno();

aluno.setNome("Marcio");
aluno.setDisciplinas(5);
aluno.setMatricula("123456");
aluno.setMatriculado(false);


String matriculado;
if(aluno.isMatriculado())
{
    matriculado = "Sim";
}
else
{
    matriculado = "Não";
}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Dados do Aluno</h1>
        <div>
            Nome:<span><%=aluno.getNome()%></span><br />
            No Disc:<span><%=aluno.getDisciplinas()%></span><br />
            No Matr.:<span><%=aluno.getMatricula()%></span><br />
            Matriculado:<span><%=matriculado%></span><br />
        </div>
        
    </body>
</html>
