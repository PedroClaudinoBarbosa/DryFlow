create database sprint1;
use sprint1;

create table clientes(
IdCliente int auto_increment primary key,
Nome_representante varchar (100) not null,
Nome_empresa varchar (100) not null,
CNPJ char(14) unique not null,
Telefone char (15) unique not null,
Email varchar (40)unique not null,
Senha varchar(15) not null
);

INSERT INTO clientes (Nome_representante, Nome_empresa, CNPJ, Telefone, Email, Senha) 
		VALUES	('Carlos Silva', 'Auto Pinturas Ltda', '12345678000195', '(11)98765-4321', 'carlos@autopinturas.com', 'senha123'),
				('Mariana Souza', 'Pintura Rápida ME', '98765432000188', '(21)97654-3210', 'mariana@pinturarapida.com', 'mariana456'),
				('Roberto Lima', 'Oficina Brilhante', '45612378000177', '(31)96543-2109', 'roberto@oficinabrilhante.com', 'roberto789'),
				('Fernanda Costa', 'Spray Color LTDA', '78945612000166', '(41)95432-1098', 'fernanda@spraycolor.com', 'fernanda321'),
				('Gustavo Nunes', 'Auto Design ME', '15975348000155', '(51)94321-0987', 'gustavo@autodesign.com', 'gustavo654'),
				('Patrícia Oliveira', 'Tinta & Arte', '35795126000144', '(61)93210-9876', 'patricia@tintaearte.com', 'patricia987');


drop table clientes;

select * from clientes;


 create table registros(
 IdRegistro int auto_increment primary key,
 FkClientes int,
 Umidade decimal (5,2), 
 DataHora datetime,
 alerta varchar(30),
 constraint ck_alerta check(alerta in('Urgente', 'Não urgente', 'Limite próximo')),
 foreign key (FkClientes) references clientes(IdCliente)
 );
 
 INSERT INTO registros (FkClientes, Umidade, DataHora, alerta) 
		VALUES	(1, 78.5, '2025-03-10 10:30:00', 'Urgente'),
				(2, 60.2, '2025-03-10 11:00:00', 'Não urgente'),
				(3, 69.8, '2025-03-10 11:30:00', 'Limite próximo'),
				(4, 82.1, '2025-03-10 12:00:00', 'Urgente'),
				(5, 55.0, '2025-03-10 12:30:00', 'Não urgente'),
				(6, 70.5, '2025-03-10 13:00:00', 'Limite próximo');
                
 drop table registros;
 
 select * from registros;