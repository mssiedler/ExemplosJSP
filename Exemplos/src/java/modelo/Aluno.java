package modelo;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author marcelosiedler
 */
public class Aluno {
    private String nome;
    private String matricula;
    private Integer disciplinas;
    private Boolean matriculado;
    
    public Aluno()
    {
        this.nome = null;
        this.matricula = null;
        this.disciplinas = 0;
        this.matriculado = false;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public Integer getDisciplinas() {
        return disciplinas;
    }

    public void setDisciplinas(Integer disciplinas) {
        this.disciplinas = disciplinas;
    }

    public Boolean isMatriculado() {
        return matriculado;
    }

    public void setMatriculado(Boolean matriculado) {
        this.matriculado = matriculado;
    }
    
    
}
