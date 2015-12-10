package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Curso;
import modelo.Professor;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2015-12-03T11:44:20")
@StaticMetamodel(Disciplina.class)
public class Disciplina_ { 

    public static volatile SingularAttribute<Disciplina, Integer> codigo;
    public static volatile SingularAttribute<Disciplina, Professor> professor;
    public static volatile SingularAttribute<Disciplina, Curso> curso;
    public static volatile SingularAttribute<Disciplina, String> nome;
    public static volatile SingularAttribute<Disciplina, Integer> semestre;

}