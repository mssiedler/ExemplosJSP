<%-- 
    Document   : Disciplina
    Created on : 01/10/2015, 15:08:52
    Author     : marcelosiedler
--%>
<%@page import="modelo.Disciplina"%>
<%@page import="modelo.Professor"%>
<%
Disciplina disc = new Disciplina();

Professor p = new Professor();
p.setNome("Alex");
p.setSiape("12345");

disc.setProfessor(p);
disc.setNome("TDSI");
disc.setCodigo("00001");
disc.setSemestre(6);





%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Informações da Disciplina <%=disc.getNome()%></h1>
        
        Código:<%=disc.getCodigo()%><br />
        Professor: <%=disc.getProfessor().getNome()%> - SIAPE: 
        <%=disc.getProfessor().getSiape()%><br/>
        Semestre:<%=disc.getSemestre()%>
    </body>
</html>
