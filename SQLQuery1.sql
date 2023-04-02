create database Ecomerce;
use Ecomerce;

create table Cliente(

	Codigo int not null,
	Nome varchar(100) not null,
	TipoPessoa char not null
)

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
