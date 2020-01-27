-- MODELO FÍSICO

create database firma;
use firma;

create table departamento(
	idDepto 	integer not null auto_increment,
    nomeDep 	varchar(50),
    andar 		integer,
    
    constraint pk_departamento primary key (idDepto)
);
    
create table funcionario(
	idFunc 		integer not null auto_increment,
    nomeFunc 	varchar(100),
    email 		varchar(100),
    telefone 	varchar(15),
    idDepto 	integer,
    
    constraint pk_funcionario	primary key (idFunc),
    constraint fk_departamento	foreign key (idDepto) references departamento (idDepto)
);

create table projeto(
	idProj 		integer,
    titulo 		varchar(100),
    dataInicio 	date,
    numContrato integer not null,
    cliente 	varchar (100),
    
    constraint pk_projeto primary key (idProj)
);
    
create table participa(
	idFunc 		integer not null,
    idProj 		integer not null,
    dataInicio 	date,
    dataFim 	date,
    
    constraint pk_participa		primary key (idFunc, idProj, dataInicio),
    constraint fk_funcionario	foreign key (idFunc) references funcionario(idFunc),
    constraint fk_projeto		foreign key (idProj) references projeto(idProj)
);