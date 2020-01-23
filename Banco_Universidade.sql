create database universidade;
use universidade;
CREATE TABLE curso (
	codigoCurso integer NOT NULL auto_increment,
    nome		VARCHAR(100) NOT NULL,
    area		VARCHAR(50),
    modalidade	CHAR(1),
    CONSTRAINT pk_curso PRIMARY KEY(codigoCurso)
);

/*recuperando dados */
select * FROM curso;

	insert into curso (nome,area,modalide) value (null,'Ciencia da Computacao','Exatas','I');


