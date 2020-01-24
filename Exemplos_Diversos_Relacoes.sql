/*  select  nome das colunas
from nome das tabelas */

select * from professor;
select * from infoacademica;

/* inner fara uma juncao interna entre prof e infoacademica*/
select nome, tituloMaximo from professor inner join infoacademica using (numRegistro) ;

/*USING utilizado quando há coincidencia entre nome de colunas*/
/*on professor.numRegistro = infoacademica.numRegistro;* <- o ON é usado quando */ 

-- o numero de registro (chave estrangeira) sao iguais
select disciplina.nome as "Disciplina", professor.nome as "Prof. Resposavel" from disciplina
	inner join professor using (numRegistro); -- aqui foi feito a relacao das duas tabelas disciplina e prof
    -- as serve para "dar" nome para as colunas.
    
    select disciplina.nome as "disciplina",
    professor.nome as "prof. responsavel",
    tituloMaximo as "titulação"
    
    from disciplina inner join professor using (numRegistro)
					inner join infoacademica using (numRegistro);
	
    select * from curso inner join grade using (codigoCurso);
    
    /*recuperando o conjunto de disciplinas que fazem parte da grade do curso*/ 
    /*select curso.nome, curso.area, grade.anoVigencia,
		disciplina.nome, disciplina.cargaHoraria, grade_disciplina*/
    
    -- show tables; <-- esse comando é para mostrar todas as tabelas existentes no banco
    -- describe curso; <-- esse comando exibe as propriedades (os tipos, inteiro, varchar, etc.. )das tabelas
    
    /*consultar todos os professores que estao ministrando aula no 1o semstre de 2020 */
    /*select professor.nome, semestre, prof_disciplina.ano from professor 
    inner join prof_disciplina using (numRegistro)
    where semestre = 1;*/
    
    -- join relaciona, where filtra, inner obedece relacao, outer obede e tb ñ obedece relacao
    
    /*consultar todos os prof que tem info academica*/
    
    
    /*consultar todos os prof que tem info academica*/
    
    /*quantas disciplinas eu tenho na grade 1*/
    /* select count (codDisiplina) from disciplina inner join grade_disciplina using (codDisciplina)
		inner join grade 
        */
    
    
    
    