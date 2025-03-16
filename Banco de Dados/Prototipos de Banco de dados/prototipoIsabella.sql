
​
create database sprint1;
use sprint1;
create table clientes(
IdCliente int auto_increment primary key,
Nome varchar (50),
Cnpj char(14),
Telefone int,
EmaiL varchar(40),
Senha varchar(15),
Endereço varchar(100));

create table sensores(
IdSensor int auto_increment primary key,
FkCliente int,
Nome varchar(40),
Localização varchar(40),
Status varchar(30) Default 'Ativo' check(Status in('Ativo','Inativo')),
foreign key (FkCliente) references clientes(IdCliente)
);
 create table registros(
 IdRegistro int auto_increment primary key,
 FkSensor int,
 Umidade decimal (5,2),
 DataHora datetime,
 foreign key (FkSensor) references sensores(IdSensor)
 );
