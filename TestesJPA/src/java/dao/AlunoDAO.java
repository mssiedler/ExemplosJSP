/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Aluno;

/**
 *
 * @author marcelosiedler
 */
public class AlunoDAO {
 



   
    
    public AlunoDAO(){
     
    }
    
    
    
    public EntityManager getEm() throws Exception{
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        return emf.createEntityManager();
    }
    
    
    public void incluir(Aluno obj) throws Exception {
        EntityManager em = getEm();
 
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        }
        finally{
            em.close();

        }
        
    }

    public List<Aluno> listar() throws Exception {
        return getEm().createNamedQuery("Aluno.listar").getResultList();
    }
    
    public void alterar(Aluno obj) throws Exception {
        EntityManager em = getEm();
        //cliente = em.getReference(Cliente.class,cliente.getEmail()); 
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        }
        finally {
            em.close();
        }
    }

    public void excluir(Aluno obj) throws Exception {
        EntityManager em = getEm();
        try {
            //Cliente cliente = em.find(Cliente.class, id);
            // = em.getReference(Cliente.class,cliente.getEmail()); 
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }
    
    public Aluno buscarPorChavePrimaria(Object chaveprimaria) throws Exception {
        EntityManager em = getEm();
        return em.find(Aluno.class, chaveprimaria);
    }
    public void fechaEmf(){
        Conexao.closeConexao();
    }       
}


