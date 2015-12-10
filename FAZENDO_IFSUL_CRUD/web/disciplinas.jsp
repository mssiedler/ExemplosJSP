<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Professor"%>
<%@page import="dao.ProfessorDAO"%>
<%@include file="cabecalho.jsp"%>
<%
//Buscar os professores cadastrado
//Primeiro instancia a classe DAO
DisciplinaDAO dao = new DisciplinaDAO();
//chama o m�todo que retorna todos os registros, no 
//JPA o padr�o � chamado findAll
List<Disciplina> lista = dao.listar();
//Abaixo iremos percorrer a lista para montar din�micamente a tabela


%>
        <div>
            <h1 class="centro">Disciplina</h1>
            
            <div>
                +<a href="disciplina-cadastrar.jsp">Novo Disciplina</a><br />
                <form>
                    <input type="text" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>C�digo</th>
                            <th>Nome</th>
                            <th>Professor</th>
                             <th>Curso</th>
                            <th>A��es</th>
                        </tr>
                        <%

                        //percorre os registros buscados na base de dados
                        for(Disciplina item:lista)
                        {
                        
                        %>
                        <tr>
                            <td><%=item.getCodigo()%></td>
                            <td><%=item.getNome()%></td>
                             <td><%=item.getProfessor()%></td>
                             <td><%=item.getCurso()%></td>
                             <td><a href="disciplinas-editar.jsp?codigo=
                                    <%=item.getCodigo()%>">Editar</a>
                                <a href="professores-excluir-ok.jsp?codigo=
                                    <%=item.getCodigo()%>">Excluir</a>
                            </td>
                            
                        </tr>
                        <%
                        }
                        %>
                    </table>
                    
                </form>
            </div>
        </div>
    </body>
</html>
