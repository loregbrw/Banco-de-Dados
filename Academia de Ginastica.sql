use academia_de_ginastica;

create table aluno (
	id_aluno int not null primary key auto_increment,
    nome varchar(200) not null,
    idade int,
    sexo char(1),
    instituicao varchar(100),
    telefone char(11)
)default charset utf8;

create table professor (
	id_professor int not null primary key auto_increment,
    nome varchar(200) not null,
    telefone decimal(11, 0)
)default charset utf8;

create table aula (
	numero_sequencial int not null primary key auto_increment,
    nivel_de_dificuldade varchar(20),
    sala int,
    id_professor int not null,
    foreign key (id_professor) references professor(id_professor)
)default charset utf8;
