<%@include file="cabecalho.jsp"%>
<%
String siape = request.getParameter("siape");
%>
         <h1 class="centro">Exclus�o de Professores</h1>
            
         <div>
             O Registro <%=siape%> foi exclu�do com sucesso.<br />
             <a href="Professores.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
