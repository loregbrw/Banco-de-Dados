use sistema_hospitalar;

create table medico (
	crm char(9) not null primary key,
    nome varchar(200) not null,
    especialidade varchar(70)
)default charset utf8;

create table paciente (
	codigo_paciente int not null primary key auto_increment,
    nome varchar(200) not null,
    endereço varchar(200),
    idade int
)default charset utf8;

create table consulta (
	id_consulta int not null primary key auto_increment,
	crm char(9) not null,
    codigo_paciente int not null,
    foreign key (crm) references medico(crm),
	foreign key (codigo_paciente) references paciente(codigo_paciente)
)default charset utf8;

create table medicamento (
	id_medicamento int not null primary key auto_increment,
    data_medicamento datetime,
    descricao varchar(500),
    id_consulta int not null,
    
    foreign key (id_consulta) references consulta(id_consulta)
)default charset utf8;

create table exame (
	id_exame int not null primary key auto_increment,
    nome varchar(100),
    id_consulta int not null,
    foreign key (id_consulta) references consulta(id_consulta)
)default charset utf8;
