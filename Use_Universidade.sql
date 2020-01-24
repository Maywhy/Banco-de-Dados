use universidade;
create table grade(
	codigoGrade integer not null auto_increment,
	anoVigencia integer not null,
	portariaDOU varchar(20),
	codigoCurso integer not null,

constraint pk_grade primary key (codigoGrade),
constraint fk_curso foreign key (codigoCurso) references curso(codigoCurso)
);

create table professor(
	numRegistro integer not null auto_increment,
    nome		varchar(100),
    email		varchar(100),
    telefone	varchar(20),
    salHora		float,
    
    constraint pk_professor primary key (numRegistro)
);

create table infoacademica (
	numRegistro 	integer not null,
    tituloMaximo	varchar(30),
    anoTitulo 		integer,
    instituicao 	varchar(100),
    curso 			varchar(100),
    
    constraint pk_infoacademica primary key (numRegistro),
    constraint fk_professor     foreign key (numRegistro) references professor (numRegistro)
);

create table disciplina (
	codigoDisc 			integer not null auto_increment,
    nome 				varchar(100), 
	ementa 				text, 
	justificativa 		text, 
	cargaHoraria 		integer,
	bibliografia 		text,
	unidadesTematicas	text,
    numRegistro 		integer,
    
    constraint pk_disciplina primary key (codigoDisc),
    constraint fk_prof       foreign key (numRegistro) references professor (numRegistro)
);

create table grade_disciplina (
	codigoGrade	integer not null,
    codigoDisc	integer not null,
    semestre	integer not null,
    
    constraint pk_grade primary key (codigoGrade, codigoDisc),
    constraint fk_grade foreign key (codigoGrade) references grade (codigoGrade),
    constraint fk_discg foreign key (codigoDisc) references disciplina (codigoDisc)
);

create table prof_disciplina (
	codigoDisc	integer not null,
    numRegistro	integer not null,
    semestre	integer not null,
    ano			integer not null,
    
    constraint pk_profdisciplina	primary key(codigoDisc, numRegistro, semestre, ano),
    constraint fk_disc_m 			foreign key(codigoDisc) references disciplina(codigoDisc),
    constraint fk_prof_m 			foreign key(numRegistro) references professor(numRegistro)
);