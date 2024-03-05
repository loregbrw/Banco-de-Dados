use produtos_de_limpeza;

create table produto (
	codigo_produto int not null primary key auto_increment,
    nome varchar(100) not null,
    categoria varchar(50),
    preco decimal(6, 2)
)default charset utf8;

create table cliente (
	codigo_cliente int not null primary key auto_increment,
    nome varchar(200) not null,
    endereço varchar(200),
    telefone decimal(11, 0),
    status varchar(10),
    limite_de_credito decimal(6, 2)
)default charset utf8;

create table pedido (
	numero_pedido int not null primary key auto_increment,
    data_pedido datetime,
    codigo_cliente int not null,
    foreign key (codigo_cliente) references cliente(codigo_cliente)
)default charset utf8;

create table produto_pedido (
	codigo_produto_pedido int not null primary key auto_increment,
    quantidade int not null,
    codigo_produto int not null,
    foreign key (codigo_produto) references produto(codigo_produto)
)default charset utf8;