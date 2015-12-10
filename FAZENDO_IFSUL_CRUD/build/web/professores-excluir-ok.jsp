<%@page import="dao.ProfessorDAO"%>
<%@page import="modelo.Professor"%>
<%@include file="cabecalho.jsp"%>
<%
//Exclusão é pela chave primária, no caso é o SIAPE
//Primeiro verifica se veio o siape no parâmentro
if(request.getParameter("siape")==null)
{
    response.sendRedirect("professores.jsp");
}
String siape = request.getParameter("siape");
ProfessorDAO dao = new ProfessorDAO();
//Variável que irá dar uma mensagem ao usuário
String msg;
try
{
    //Primeiramente vamos buscar o Professor que desejamos excluir
    Professor prof = dao.buscarPorSiape(siape);
    //se retornou o objeto realiza a exclusão, caso contrário 
    //diz para o usuário que o professor não foi encontrado
    if(prof!=null)
    {
        dao.excluir(prof);
        msg = "registro excluído com sucesso";
    }
    else
    {
        msg = "Registro não encontrado, verifique os dados enviados";
    }
}
catch (Exception e)
{
    msg = "Não foi possível excluir o registro";
}
%>
         <h1 class="centro">Exclusão de Professores</h1>
            
         <div>
             <%=msg%><br />
             <a href="professores.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
