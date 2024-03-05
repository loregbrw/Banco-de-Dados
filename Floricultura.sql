use floricultura;

create table cliente (
	id_cliente int not null primary key auto_increment,
    nome varchar(200) not null,
    rg varchar(14),
    telefone decimal(11, 0),
    endereço varchar(200)
)default charset utf8;

create table produto (
	id_produto int not null primary key auto_increment,
	nome varchar(100) not null,
    flor varchar(100),
    vaso varchar(50),
    planta varchar(100),
    preco decimal(6, 2),
    quantidade int
)default charset utf8;

create database compra (
	id_compra int not null primary key auto_increment,
    data_compra datetime,
    valor_total decimal(6, 2)
	# foreign key produto
    # foreign key cliente
)default charset utf8;