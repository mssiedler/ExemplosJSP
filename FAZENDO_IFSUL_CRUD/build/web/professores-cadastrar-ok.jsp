<%@page import="dao.ProfessorDAO"%>
<%@page import="modelo.Professor"%>
<%@include file="cabecalho.jsp"%>

<%
    //VERIFICA SE AS INFORMAÇÕES VIERAM DO FORMULÁRIO
    //SE NÃO VIERAM VOLTO PRA PÁGINA DE LISTAGEM
    if(request.getParameter("txtNome") == null || 
            request.getParameter("txtSiape") == null)
    {
        //RETORNA PARA A LISTAGEM através do método sendRedirect
        response.sendRedirect("professores.jsp");
    }
    //BUSCAR AS INFORMAÇÕES DO FORMULÁRIO
    String nome = request.getParameter("txtNome");
    String siape = request.getParameter("txtSiape");
    
    //Criar meu objeto modelo
    Professor prof = new Professor();
    //Adiciono os valores enviados
    prof.setNome(nome);
    prof.setSiape(siape);
    
    //Instanciar minha classe de acesso a dados
    ProfessorDAO dao = new ProfessorDAO();
    
    //TENTA inserir, se der erro vai gerar uma exceção
    //nesse caso trataremos a mensagem que será exibida para o usuário
    //através de uma variável mensagem
    String mensagem;
    try
    {
        dao.incluir(prof);
        mensagem = "Registro cadastrado com sucesso";
    }
    catch(Exception e)
    {
        mensagem = "Não foi possível realizar a operação";
    }
    
    
%>
         <h1 class="centro">Cadastro de Professores</h1>
            
         <div>
             <%=mensagem%>.<br />
             <a href="professores.jsp">Voltar para Listagem</a>
             
         </div>
    </body>
</html>
