create database dryflow;
drop database dryflow;
use dryflow;
create table clientes(
idcliente int auto_increment primary key,
nome_empresa varchar (100) not null,
cnpj char(18) unique not null, -- 14 caso for somente os números ou 18 com caracteres 
telefone char (15) unique not null,
emaiL varchar (40)unique not null,
senha varchar(45) not null,
endereco varchar(150)not null);

create table sensores(
idsensor int auto_increment primary key,
fkcliente int,
estado varchar(30) Default 'Ativo' check(Estado in('Ativo','Inativo')),
foreign key (fkcliente) references clientes(idcliente)
) auto_increment = 100;

-- CHECK (umidade >= 0 AND umidade <= 100),

 create table registros(
 idregistro int auto_increment primary key,
 fksensor int,
 umidade decimal (5,2) CHECK (umidade >= 0 AND umidade <= 100), 
 datahora datetime default now(), -- 	YYYY-MM-DD HH-MM-SS o padrão vai ser a data e hora do momento do insert
 foreign key (fksensor) references sensores(idsensor)
 );
select* from sensores;
-- Inserindo os dados dos clientes na tabela clientes
insert into clientes(nome_empresa,cnpj,telefone,email,senha,endereco) 
values ('Oficina SPtech', 27816474000162, '(11)97409-3996', 'oficina.SPtech@gmail.com', 1234, 'Rua Haddok Lobo, 595 São Paulo - SP'),
("Pintura Auto Brilho",51387950001584,"(11)98515-5475","auto.brilho@outlook.com","f125","Rua Sarué 989, São Paulo"),
("Carro & Cores","66488572000198","(11)93544-2485","carro&cores@gmail.com","r545","Rua Lentisco,275,São Paulo"),
("Pintura Personal","2764816000198","(11)95547-5731","pintura.personal@bing.com","fdh5592x","Rua Francisco de Barros Cobra,124,São Paulo,SP"),
("Garagem da Tinta","3554828000174","(11)94876-5403","garagem.tinta@outlook.com","5e4fe4e5","Jardim Europa,854,Bragança Paulista,SP"),
("Arte em pintura","688454220001","(24)98331-8563","arte.pintura@gmail.com","65999","Travessa São Salvador do Bonfim,987, Angra dos reis,RJ"),
("PitStop Pinturas","64532897000124","(27)95847-2215","pitstop@gmail.com","5w5d7","Travessa Galpão Dois,548,Vitória,ES"),
("Pintura 5 estrelas","58717698000157","(27)95482-5623","cincoestreslas@outlook.com","f5d5da","Rua São Luiz,Cariacica,ES"),
("Pintura Vip","84695752000124","(71)95412-5752","pinturavip@bing.com","5drww7","Rua Santo Apolônio,54,Salvador,BH"),
("Carro na Tinta","55544528000124","(31)94452-744","carro.tinta@outlook.com","djsnj55","Rua Tenente Freitas,574,Belo Horizonte,MG"),
("Pintura com Classe","52684628000124","(31)319556-7821","pintura.classe","3efr545g","Rua Vitória,887, Belo Horizonte, MG"),
 ('Pintura em Ação', 55571257000195,"(11)94241-8547", 'pinturaemacao@outlook.com', 20292, 'Avenida José Antunes de Lisboa,45 Leme - SP'),
 ('Carro dos Sonhos', 62611721000195,"(81)98547-6582", 'carro.dossonhos@gmail.com', 391011, 'Rua Josefa Maria da Silva (Lot. Vitória), 301 Igarassu - PE'),
 ('Pintura com Qualidade', 80351316000167,"(24)95142-6857",'pinturacom.qualidade@gmail.com', 340912, 'Vila Oxaca, 234 Rio de Janeiro - RJ'),
 ('Cores Personalizadas', 35698173000101,"(47)95862-6423", 'cores.personalizadas@outlook.com', 663381, 'Rua Presidente Juscelino, 987 Jaraguá do Sul - SC'),
 ('Lata & Tinta',87211129000127,"(24)95648-5625",'lata&tinta@gmail.com', 09032, 'Rua Monera, 89 Duque de Caxias - RJ'),
 ('Auto Pintor', 29595680000115,"(24)95859-5863" ,'autopintor@outlook.com',8720, 'Travessa Santa Cecília, 675 Rio de Janeiro - RJ'),
 ('Pintura Viva', 54421595000188,"(81)95872-9856", 'pintura.viva@outlook.com', 91122, 'Rua Nova Olinda, 208 Jaboatão dos Guararapes - PE'),
 ('Detalhes & Cor', 21807582000192,"(81)97534-9824", 'detalhes&cor@gmail.com', 4402, 'Rua Lucílio Reis e Silva, 687 Cabo de Santo Agostinho - PE'),
 ('Estilo Automotivo', 46137404000122,"(92)95682-9865", 'estiloautomotivo@gmail.com', 17254, 'Rua Andorra, 77 Manaus - AM'),
 ('ArtCar Pinturas', 19024184000158,"(92)95878-9826",'artcar.pinturas@gmail.com', 281706, 'Travessa da Salvação, 112 Manaus - AM');
 
 -- Inserindo os dados dos sensores
 insert into sensores(fkcliente,estado)
 values(1,"Ativo"),
  (1,"Ativo"),
  (1,"Ativo"),
  (2,"Ativo"),
  (3,"Ativo"),
  (3,"Ativo"),
  (4,"Ativo"),
  (4,"Ativo"),
  (5,"Ativo"),
  (6,"Ativo"),
  (7,"Ativo"),
  (7,"Ativo"),
  (8,"Ativo"),
  (9,"Ativo"),
  (10,"Ativo"),
  (10,"Ativo"),
  (10,"Ativo"),
  (11,"Ativo"),
  (12,"Ativo"),
  (12,"Ativo"),
  (12,"Ativo"),
  (13,"Ativo"),
  (14,"Ativo"),
  (15,"Ativo"),
  (16,"Ativo"),
  (18,"Ativo"),
  (17,"Ativo"),
  (19,"Ativo"),
  (19,"Ativo"),
  (20,"Ativo"),
  (20,"Ativo");
  
  -- Inserindo os registros dos sensores
  insert into registros(fksensor,umidade)
values (100, 10),
    (101, 12),
    (102, 15),
    (103, 18),
    (104, 20),
    (105, 22),
    (106, 25),
    (107, 28),
    (108, 30),
    (109, 32),
    (110, 35),
    (111, 38),
    (112, 40),
    (113, 42),
    (114, 45),
    (115, 48),
    (116, 50),
    (117, 47),
    (118, 50),
    (119, 41),
    (120, 39),
    (121, 37),
    (122, 34),
    (123, 31),
    (124, 29),
    (125, 26),
    (126, 23),
    (127, 21),
    (128, 19),
    (129, 16),
    (130, 14);

-- 1
select idCliente as Clientes, nome_empresa as Empresa, cnpj, telefone, email,endereco from clientes;
-- 2
select nome_empresa as Empresa from clientes where endereco like '%SP';
-- 3 
select 	nome_empresa as Empresa from clientes where nome_empresa like '%p';
-- 4
select idcliente as Clientes, nome_empresa as Empresa, cnpj, telefone, email,endereço from clientes where cnpj = 55544528000124;
-- 5
select* from sensores;
-- 6 
update sensores set estado='Inativo' where idsensor in(102,105,107);
--
select* from registros where umidade >45;
select* from sensores where idsensor in(115,116,117,118);
select idcliente as Clientes, nome_empresa as Empresa, cnpj, telefone, email,endereço from clientes where   idcliente in(10,11,12);
-- 7 
delete from clientes where nome_empresa ='Carro na Tinta' and idcliente>0; -- vai dar erro
select* from  clientes where nome_empresa ='Carro na Tinta';-- descobrimos que o id=10
select* from sensores where fkcliente=10;-- descobrimos que o id sensor =114,115,116
select* from registros where fksensor in(114,115,116);-- descobrimos que o sensor tem os seguintes registros=15,16,17
update registros set fksensor = null where idregistro in (15,16,17);-- tiramos os valores da fk
update  sensores set fkcliente=null where idsensor in(114,115,116);
-- Agora que todas as fk foram retiradas podemos apagar o cliente
delete from clientes where nome_empresa ='Carro na Tinta' and idcliente>0;



