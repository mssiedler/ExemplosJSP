<%@page import="dao.ProfessorDAO"%>
<%@page import="modelo.Professor"%>
<%@include file="cabecalho.jsp"%>

<%
    //VERIFICA SE AS INFORMA��ES VIERAM DO FORMUL�RIO
    //SE N�O VIERAM VOLTO PRA P�GINA DE LISTAGEM
    if(request.getParameter("txtNome") == null || 
            request.getParameter("txtSiape") == null)
    {
        //RETORNA PARA A LISTAGEM atrav�s do m�todo sendRedirect
        response.sendRedirect("professores.jsp");
    }
    //BUSCAR AS INFORMA��ES DO FORMUL�RIO
    String nome = request.getParameter("txtNome");
    String siape = request.getParameter("txtSiape");
    
    //Criar meu objeto modelo
    Professor prof = new Professor();
    //Adiciono os valores enviados
    prof.setNome(nome);
    prof.setSiape(siape);
    
    //Instanciar minha classe de acesso a dados
    ProfessorDAO dao = new ProfessorDAO();
    
    //TENTA inserir, se der erro vai gerar uma exce��o
    //nesse caso trataremos a mensagem que ser� exibida para o usu�rio
    //atrav�s de uma vari�vel mensagem
    String mensagem;
    try
    {
        dao.incluir(prof);
        mensagem = "Registro cadastrado com sucesso";
    }
    catch(Exception e)
    {
        mensagem = "N�o foi poss�vel realizar a opera��o";
    }
    
    
%>
         <h1 class="centro">Cadastro de Professores</h1>
            
         <div>
             <%=mensagem%>.<br />
             <a href="professores.jsp">Voltar para Listagem</a>
             
         </div>
    </body>
</html>
