create database Ecomerce;
use Ecomerce;

create table Cliente(

	Codigo int not null,
	Nome varchar(100) not null,
	TipoPessoa char not null
);

select *
from Cliente;

insert Cliente values(1, 'Hugo', 'F'),
(2, 'Max', 'F'), 
(3, 'Josue', 'J'),
(4, 'Luiz', 'F'),
(5, 'Juj', 'F');

update Cliente
set TipoPessoa = 'F'
where TipoPessoa = 'J';

delete from Cliente
where Codigo in(5,4,3,2);

insert Cliente values(1, 'Vidal', 'J');

select *
from Cliente
where Codigo = 1
AND TipoPessoa = 'J';


create table Produtos(

	Codigo int not null,
	Nome varchar(100) not null,
	Descricao varchar(200) not null,
	Preco float not null
);

select *
from Produtos;

insert Produtos values
(1, 'Caneta', 'Azul', 2.50),
(2, 'Caderno', 'Caderno 10 materias', 20.99);

create table Pedido(

	Codigo int not null,
	DataSolicitacao datetime not null,
	FlagPago bit not null,
	TotalPedido float not null,
	CodigoCliente int not null
);

select *
from Pedido;

insert Pedido values(1, GETDATE(), 0, 3, 7);

create table PedidoItem(

	Codigo int not null,
	CodigoProduto int not null,
	Preco float not null,
	Quantidade int not null,

);


select *
from PedidoItem;

insert PedidoItem values(1, 1, 2.50, 2);

insert Cliente(Codigo, Nome, TipoPessoa) values(3, 'Steve', 'F');

update Cliente
set Codigo = 2
where Nome = 'Vidal';

select *
from Cliente;

--Chave Primaria
alter table Cliente add constraint pk_cliente primary key(Codigo);

--insert Cliente values(1, 'igor', 'F'); ERROR CHAVE DUPLICADA

select *
from PedidoItem;

--***Adicionado chave primaria em Codigo e CodigoProduto por Design***
--insert PedidoItem values(1, 1, 3.5, 3); ERROR CHAVE DUPLICADA

select *
from Pedido;

--Chave estrangeira
alter table PedidoItem add constraint fk_pedido foreign key (Codigo) references Pedido(Codigo);

delete Produtos;

select *
from Produtos;

insert Produtos values(1, 'Caneta', 'Azul', 2.50),(2,'Caderno', 'Preto 20 materias', 20.00);

