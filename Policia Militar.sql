use policia_militar;

create table soldado (
	id_soldado int not null primary key auto_increment,
    nome varchar(200) not null,
    registro_militar int,
    data_de_nascimento datetime
)default charset utf8;

create table municao (
	id_municao int not null primary key auto_increment,
    tipo varchar(100) not null
)default charset utf8;

create table arma (
	id_arma int not null primary key auto_increment,
    numero_de_serie int not null,
    tipo varchar(50),
    calibre varchar(50)
)default charset utf8;

create table soldado_arma (
	id_soldado_arma int not null primary key auto_increment,
	id_soldado int not null,
    id_arma int not null,
    foreign key (id_soldado) references soldado(id_soldado),
    foreign key (id_arma) references arma(id_arma)
)default charset utf8;

create table limpar_armas (
	id_limpar_armas int not null primary key auto_increment,
    id_soldado int not null,
    id_arma int not null,
    foreign key (id_soldado) references soldado(id_soldado),
    foreign key (id_arma) references arma(id_arma)
)default charset utf8;

create table arma_municao (
	id_arma_monicao int not null primary key auto_increment,
	id_arma int not null,
    id_municao int not null,
    foreign key (id_arma) references arma(id_arma),
    foreign key (id_municao) references municao(id_municao)
)default charset utf8;