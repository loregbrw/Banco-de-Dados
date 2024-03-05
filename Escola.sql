use Escola;

create table aluno (
	id_aluno int not null primary key auto_increment,
    nome varchar(200) not null,
    ocorrencia varchar(500),
    endereço varchar(200),
    data_de_nascimento datetime,
    cpf varchar(15),
    rg varchar(15),
    contato decimal(11, 0),
    nome_da_mae varchar(200)
)default charset utf8;

create table professor (
	id_professor int not null primary key auto_increment,
    numero_de_registro int not null,
    nome varchar(200) not null,
    contato decimal(11, 0),
    especializacao varchar(100)
)default charset utf8;

create table disciplina (
	id_disciplina int not null primary key auto_increment,
    sigla varchar(10),
    carga_horaria int,
    descricao varchar(200)
)default charset utf8;

create table turma (
	id_turma int not null primary key auto_increment,
    sala int,
    horario datetime,
	id_aluno int not null,
    id_disciplina int not null,
    foreign key (id_aluno) references aluno(id_aluno),
    foreign key (id_disciplina) references disciplina(id_disciplina)
)default charset utf8;

