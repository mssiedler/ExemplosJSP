<%@include file="cabecalho.jsp"%>
<%
    String matricula = request.getParameter("matricula");
%>
         <h1 class="centro">Exclus�o de Alunos</h1>
            
         <div>
             O Aluno <%=matricula%> foi exclu�do com sucesso.<br />
             <a href="alunos.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
