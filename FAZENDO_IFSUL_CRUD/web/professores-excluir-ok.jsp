<%@page import="dao.ProfessorDAO"%>
<%@page import="modelo.Professor"%>
<%@include file="cabecalho.jsp"%>
<%
//Exclus�o � pela chave prim�ria, no caso � o SIAPE
//Primeiro verifica se veio o siape no par�mentro
if(request.getParameter("siape")==null)
{
    response.sendRedirect("professores.jsp");
}
String siape = request.getParameter("siape");
ProfessorDAO dao = new ProfessorDAO();
//Vari�vel que ir� dar uma mensagem ao usu�rio
String msg;
try
{
    //Primeiramente vamos buscar o Professor que desejamos excluir
    Professor prof = dao.buscarPorSiape(siape);
    //se retornou o objeto realiza a exclus�o, caso contr�rio 
    //diz para o usu�rio que o professor n�o foi encontrado
    if(prof!=null)
    {
        dao.excluir(prof);
        msg = "registro exclu�do com sucesso";
    }
    else
    {
        msg = "Registro n�o encontrado, verifique os dados enviados";
    }
}
catch (Exception e)
{
    msg = "N�o foi poss�vel excluir o registro";
}
%>
         <h1 class="centro">Exclus�o de Professores</h1>
            
         <div>
             <%=msg%><br />
             <a href="professores.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
