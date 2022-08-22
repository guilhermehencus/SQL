create database vendas_Guilherme;
use vendas_Guilherme;
/* Agora vai ser a criação das tabelas que contém chave primaria*/
create table status(
idstatus int,
descricao varchar(15)
);
create table produto(
idproduto int,
descricao varchar(45),
preco decimal(8,2),
unidadesemestoque int,
niveldereposicao int,
descontinuado char(1)
);
create table tipotelefone(
idtipotelefone int,
descricao varchar(20)
);
create table estado(
idestado int,
descricao varchar(20),
sigla char(2)
);
/* Agora vai ser a criação das tabelas que contém chave estrangueira*/
create table Cliente(
idCliente int,
nome varchar(45),
CPF varchar(15),
sexo char(1),
nomemae varchar(45),
idstatus int
);
create table telefone(
idContato int,
numddd varchar(31),
numtelefone varchar(8),
Cliente_idcliente int,
tipotelefone_idtipotelefone int,
idtipotelefone int
);
create table pedido(
idpedido int,
datapedido datetime,
dataentrega datetime,
datadeenvio datetime,
via int,
frete decimal(8,2),
Cliente_idCliente int not null,
logradouroentrega varchar(45),
bairroentrega varchar(20),
cidadentrega varchar(20),
estado_idestado int,
valor decimal(8,2)
);
create table endereco(
idendereco int,
logradouro varchar(45),
bairro varchar(20),
cidade varchar(20),
Cliente_idCliente int,
estado_idestado int
);
create table detalhespedido(
iddetalhespedido int,
precounitario decimal(8,2),
quantidade int,
desconto decimal(2,2),
pedido_idpedido int,
pedido_estado_idestado int,
produto_idproduto int
);
drop table estado;
drop table tipotelefone;
drop table status;
create table estado(
idestado int,
descricao varchar(20),
sigla char(2)
);
create table tipotelefone(
idtipotelefone int,
descricao varchar(20)
);
create table status(
idstatus int,
descricao varchar(15)
);
alter table status add primary key(idstatus);
alter table produto add primary key(idproduto);
alter table tipotelefone add primary key(idtipotelefone);
alter table Cliente add primary key(idCliente);
alter table telefone add primary key(idcontato);
alter table pedido add primary key(idpedido,estado_idestado);
alter table endereco add primary key(idendereco,Cliente_IdCliente,estado_idestado);
alter table estado add primary key(idestado);
alter table detalhespedido add primary key(iddetalhespedido,pedido_idpedido,pedido_estado_idestado,produto_idproduto);
alter table Cliente add constraint fk_Cliente_status foreign key (idstatus) references status(idstatus);
alter table telefone add constraint fk_Contato_Cliente foreign key (Cliente_idCliente) references Cliente(idCliente);
alter table telefone add constraint fk_telefone_tipotelefone foreign key (tipotelefone_idtipotelefone) references tipotelefone(idtipotelefone);
alter table endereco add constraint fk_endereco_Cliente foreign key (Cliente_idCliente) references Cliente(idCliente);
alter table endereco add constraint fk_endereco_estado foreign key (estado_idestado) references estado(idestado);
alter table pedido add constraint fk_pedido_Cliente foreign key (Cliente_idCliente) references Cliente(idCliente);
alter table pedido add constraint fk_pedido_estado foreign key (estado_idestado) references estado(idestado);
alter table detalhespedido add constraint fk_detalhespedido_pedido foreign key (pedido_idpedido) references pedido(idpedido);
alter table detalhespedido add constraint fk_detalhespedido_produto foreign key (produto_idproduto) references produto(idproduto);
alter table Cliente add unique(CPF);
alter table estado add unique(sigla);
alter table pedido add nome varchar(45) not null;
alter table pedido add numeropedido int not null;
create table classificacao (
idclassificacao int not null primary key,
descricao varchar(45) not null unique
);
alter table classificacao add Cliente_classificacao int;
alter table classificacao add constraint fk_classificacao_Cliente foreign key (Cliente_classificacao) references Cliente(idCliente);
alter table detalhespedido add precovenda decimal(8,2);
alter table detalhespedido drop precovenda;
/*exercicio 2*/
insert into status (idstatus,descricao) values(1,"ativo");
insert into status (idstatus,descricao) values(2,"inativo");
insert into status (idstatus,descricao) values(3,"em ativação");
insert into tipotelefone (idtipotelefone,descricao) values(1,"Fixo Residencial");
insert into tipotelefone (idtipotelefone,descricao) values(2,"Movel Pessoal");
insert into tipotelefone (idtipotelefone,descricao) values(3,"Movel Comercial");
insert into tipotelefone (idtipotelefone,descricao) values(4,"Fixo Comercial");
/*exercicio 2 estados*/
insert into estado (idestado,descricao,sigla) values(1,"Paraná","PR");
insert into estado (idestado,descricao,sigla) values(2,"Rio Grande do Sul","RS");
insert into estado (idestado,descricao,sigla) values(3,"Santa Catarina","SC");
insert into estado (idestado,descricao,sigla) values(4,"São Paulo","SP");
insert into estado (idestado,descricao,sigla) values(5,"Rio de Janeiro","RJ");
insert into estado (idestado,descricao,sigla) values(6,"Minas Gerais","MG");
insert into estado (idestado,descricao,sigla) values(7,"Espirito Santos","ES");
insert into estado (idestado,descricao,sigla) values(8,"Bahia","BA");
insert into estado (idestado,descricao,sigla) values(9,"Sergipe","SE");
insert into estado (idestado,descricao,sigla) values(10,"Alagoas","AL");
insert into estado (idestado,descricao,sigla) values(11,"Pernamburco","PE");
insert into estado (idestado,descricao,sigla) values(12,"Paraíba","PB");
insert into estado (idestado,descricao,sigla) values(13,"Rio Grande do Norte","RN");
insert into estado (idestado,descricao,sigla) values(14,"Ceará","CE");
insert into estado (idestado,descricao,sigla) values(15,"Piauí","PI");
insert into estado (idestado,descricao,sigla) values(16,"Maranhão","MA");
insert into estado (idestado,descricao,sigla) values(17,"Mato Grosso do Sul","MS");
insert into estado (idestado,descricao,sigla) values(18,"Mato Grosso","MT");
insert into estado (idestado,descricao,sigla) values(19,"Goiás","GO");
insert into estado (idestado,descricao,sigla) values(20,"Distrito Federal","DF");
insert into estado (idestado,descricao,sigla) values(21,"Tocantins","TO");
insert into estado (idestado,descricao,sigla) values(22,"Rondônia","RO");
insert into estado (idestado,descricao,sigla) values(23,"Acre","AC");
insert into estado (idestado,descricao,sigla) values(24,"Amazonas","AM");
insert into estado (idestado,descricao,sigla) values(25,"Pará","PA");
insert into estado (idestado,descricao,sigla) values(26,"Amapá","AP");
insert into estado (idestado,descricao,sigla) values(27,"Roraima","RR");
/*exercicio 2 clientes*/
insert into Cliente (idCliente,nome,CPF,sexo,nomemae,idstatus) values(1,"Paulo","1111111111","M","Aline",3); 
insert into Cliente (idCliente,nome,CPF,sexo,nomemae,idstatus) values(2,"Maria","1111111112","F","Giovana",3);
insert into Cliente (idCliente,nome,CPF,sexo,nomemae,idstatus) values(3,"Pedro","1111111113","M","Renata",2);
insert into Cliente (idCliente,nome,CPF,sexo,nomemae,idstatus) values(4,"Larissa","1111111114","F","Anna",1);
insert into Cliente (idCliente,nome,CPF,sexo,nomemae,idstatus) values(5,"Gustavo","1111111115","M","Amanda",3);
insert into Cliente (idCliente,nome,CPF,sexo,nomemae,idstatus) values(6,"Bianca","1111111116","F","Carol",2);
insert into Cliente (idCliente,nome,CPF,sexo,nomemae,idstatus) values(7,"Roberto","1111111117","M","Gabriela",1);
insert into Cliente (idCliente,nome,CPF,sexo,nomemae,idstatus) values(8,"Beatriz","1111111118","F","Nicole",2);
insert into Cliente (idCliente,nome,CPF,sexo,nomemae,idstatus) values(9,"Augusto","1111111119","M","Ana",3);
insert into Cliente (idCliente,nome,CPF,sexo,nomemae,idstatus) values(10,"Simone","1111111120","F","Joana",1);         
/*Cliente e telefone*/
insert into telefone (idContato,numddd,numtelefone,Cliente_idCliente,tipotelefone_idtipotelefone,idtipotelefone) values(1,30,"11112222",1,2,2);   
insert into telefone (idContato,numddd,numtelefone,Cliente_idCliente,tipotelefone_idtipotelefone,idtipotelefone) values(2,20,"11113333",2,2,2);
insert into telefone (idContato,numddd,numtelefone,Cliente_idCliente,tipotelefone_idtipotelefone,idtipotelefone) values(3,18,"11114444",3,1,1);    
insert into telefone (idContato,numddd,numtelefone,Cliente_idCliente,tipotelefone_idtipotelefone,idtipotelefone) values(4,55,"11115555",4,4,3); 
insert into telefone (idContato,numddd,numtelefone,Cliente_idCliente,tipotelefone_idtipotelefone,idtipotelefone) values(5,19,"11116666",5,3,3);
insert into telefone (idContato,numddd,numtelefone,Cliente_idCliente,tipotelefone_idtipotelefone,idtipotelefone) values(6,18,"11117777",6,2,4); 
insert into telefone (idContato,numddd,numtelefone,Cliente_idCliente,tipotelefone_idtipotelefone,idtipotelefone) values(7,21,"11118884",7,3,4);
insert into telefone (idContato,numddd,numtelefone,Cliente_idCliente,tipotelefone_idtipotelefone,idtipotelefone) values(8,18,"11118888",8,1,2);
insert into telefone (idContato,numddd,numtelefone,Cliente_idCliente,tipotelefone_idtipotelefone,idtipotelefone) values(9,86,"11119998",9,3,1);
insert into telefone (idContato,numddd,numtelefone,Cliente_idCliente,tipotelefone_idtipotelefone,idtipotelefone) values(10,71,"11119876",10,2,2);     
/*produtos*/
insert into produto (idproduto,descricao,preco,unidadesemestoque,niveldereposicao,descontinuado) values(1,"Computador",3000,0,100,"n");
insert into produto (idproduto,descricao,preco,unidadesemestoque,niveldereposicao,descontinuado) values(2,"Televisão",1000,0,50,"n");
insert into produto (idproduto,descricao,preco,unidadesemestoque,niveldereposicao,descontinuado) values(3,"Micro-ondas",300,0,20,"n");
insert into produto (idproduto,descricao,preco,unidadesemestoque,niveldereposicao,descontinuado) values(4,"Geladeira",1200,1,10,"s");
insert into produto (idproduto,descricao,preco,unidadesemestoque,niveldereposicao,descontinuado) values(5,"Celular",3400,0,20,"n");
insert into produto (idproduto,descricao,preco,unidadesemestoque,niveldereposicao,descontinuado) values(6,"Tablet",500,0,40,"n");
insert into produto (idproduto,descricao,preco,unidadesemestoque,niveldereposicao,descontinuado) values(7,"Notebook",2000,0,15,"n");
insert into produto (idproduto,descricao,preco,unidadesemestoque,niveldereposicao,descontinuado) values(8,"Lavar_Ropas",1500,0,70,"n");
insert into produto (idproduto,descricao,preco,unidadesemestoque,niveldereposicao,descontinuado) values(9,"Secador",35,0,50,"n");
insert into produto (idproduto,descricao,preco,unidadesemestoque,niveldereposicao,descontinuado) values(10,"Video_Game",2000,0,10,"n");
insert into produto (idproduto,descricao,preco,unidadesemestoque,niveldereposicao,descontinuado) values(11,"Refrigerador",900,0,30,"n");
insert into produto (idproduto,descricao,preco,unidadesemestoque,niveldereposicao,descontinuado) values(12,"Ar_Condicionado",450,0,27,"n");
insert into produto (idproduto,descricao,preco,unidadesemestoque,niveldereposicao,descontinuado) values(13,"Placa_Video",6000,0,14,"n");
insert into produto (idproduto,descricao,preco,unidadesemestoque,niveldereposicao,descontinuado) values(14,"Chuveiro",250,0,44,"n");
insert into produto (idproduto,descricao,preco,unidadesemestoque,niveldereposicao,descontinuado) values(15,"Placa_Mãe",3000,0,49,"n");
/*endereco*/
insert into endereco(idendereco,logradouro,bairro,cidade,cliente_idcliente,estado_idestado) values (1,"Avenida do sá","República","São Mathieus",1,10);
insert into endereco(idendereco,logradouro,bairro,cidade,cliente_idcliente,estado_idestado) values (2,"Rua nomen est","Puella","Ameria",2,14);
insert into endereco(idendereco,logradouro,bairro,cidade,cliente_idcliente,estado_idestado) values (3,"Rua Fernão Lopes","Karatov","Res",3,22);
/*select*/
select nome, CPF from Cliente where sexo="M";
select descricao, preco, unidadesemestoque from produto where niveldereposicao > unidadesemestoque;
insert into pedido (idpedido, datapedido, dataentrega, datadeenvio, via, frete,cliente_idcliente,logradouroentrega,bairroentrega,cidadentrega,estado_idestado,valor,numeropedido) values (1,"2019-07-14 12:51:12","2019-07-25 15:05:18","2019-07-20 17:35:12",1,12.5,1,"Rua Bernardo Kuster","Bairro Imperial","Cidade Imperial",4,300.3,2);
insert into pedido (idpedido, datapedido, dataentrega, datadeenvio, via, frete,cliente_idcliente,logradouroentrega,bairroentrega,cidadentrega,estado_idestado,valor,numeropedido) values (2,"2019-10-23 18:21:31","2019-10-31 14:05:26","2019-10-28 22:46:06",1,26.5,2,"Rua Allan dos Santos","Bairro Revista Terça Livre","Cidade Terça Livre",14,250,1);
insert into pedido (idpedido, datapedido, dataentrega, datadeenvio, via, frete,cliente_idcliente,logradouroentrega,bairroentrega,cidadentrega,estado_idestado,valor,numeropedido) values (3,"2019-02-18 08:21:51",null,null,1,28.7,3,"Rua Santiago Bernabeu","Bairro Madrid","Atlético de Madrid",21,1000,1);
select idpedido, datapedido, valor from pedido where (dataentrega is null);
select A.nome, B.numtelefone from Cliente A, telefone B where A.idstatus=2 and idCliente=Cliente_idCliente;
select A.nome, B.idpedido, B.datapedido, B.valor from pedido B, Cliente A where datadeenvio is null and idCliente=Cliente_idCliente;
insert into detalhespedido (iddetalhespedido, precounitario, quantidade , pedido_idpedido, pedido_estado_idestado, produto_idproduto)values(1, 1000, 2, 1, 15, 2);
select A.nome, B.datapedido, B.valor, C.descricao from Cliente A, pedido B,  produto C, detalhespedido D where B.datadeenvio is not null and B.idpedido=D.pedido_idpedido and  A.idcliente=B.cliente_idcliente;