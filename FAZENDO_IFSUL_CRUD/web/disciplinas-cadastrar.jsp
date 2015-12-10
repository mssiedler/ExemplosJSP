<%@page import="modelo.Professor"%>
<%@page import="dao.ProfessorDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Curso"%>

<%@page import="dao.CursoDAO"%>
<%@include file="cabecalho.jsp"%>
<%
 ProfessorDAO pDao = new ProfessorDAO();
 List<Professor> pLista = pDao.listar();
 CursoDAO cDao = new CursoDAO();
 List<Curso> cLista = cDao.listar();
 
  
 %>
        <div>
            <h1 class="centro">Cadastro de Disciplina</h1>
            
            <div>
                
                <form action="disciplinas-cadastrar-ok.jsp" method="post">
                    <label>Código:</label><input type="text" name="txtCodigo"/><br />
                    <label>Nome:</label><input type="text" name="txtNome"/><br />
                    <label>Semestre:</label><input type="number" name="txtSemestre"/><br />
                    <label>Curso:</label>
                    <select name="selCurso">
                        <option value="">Selecione</option>
                        <%
                            for(Curso citem:cLista)
                            {
                        %>
                        <option value="<%=citem.getCodigo()%>">
                         <%=citem%></option>
                        <%
                            }
                        %>
                    </select>
                    
                    
                    <br />
                    <label>Professor:</label>
                    <select name="selProfessor">
                        <option value="">Selecione</option>
                        
                    </select>
                    <br />
                    
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Cadastrar" />
                </form>
            </div>
        </div>



    </body>
</html>
