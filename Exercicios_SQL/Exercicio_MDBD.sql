create database Exercicios;
use Exercicios;
/*exercicio1*/
create table Departamento (
id int primary key ,
nome varchar(45),
nomeDiretor varchar(25),
ramal int 
);
create table Funcionario (
id int primary key ,
nome varchar(45),
telefone varchar(99),
idade int,
dataNascimento date,
endereco varchar(20) 
);
alter table Funcionario add id_depatamento_funcionario int; 
alter table Funcionario add constraint fk_Funcionario_Depatamneto foreign key(id_depatamento_funcionario) references Departamento(id);
insert into Departamento (id,nome,nomeDiretor,ramal) values(1,"Segurança","Godwin",4444);
insert into Departamento (id,nome,nomeDiretor,ramal) values(2,"Comércio","Reginaldo",8888);
insert into Departamento (id,nome,nomeDiretor,ramal) values(3,"Agricultura e Sustentabilidade","Simone",4433);
insert into Funcionario (id, nome, telefone,idade,dataNascimento,endereco, id_depatamento_funcionario) values (1,"Jailson","44448888",55,"1964-06-15", "Rua Jacaré",1);
insert into Funcionario (id, nome, telefone,idade,dataNascimento,endereco, id_depatamento_funcionario) values (2,"João","44445555",49,"1970-03-21", "Rua Japan",2);
insert into Funcionario (id, nome, telefone,idade,dataNascimento,endereco, id_depatamento_funcionario) values (3,"Maria","44445675",37,"1982-06-15", "Rua Camarón",3);
insert into Funcionario (id, nome, telefone,idade,dataNascimento,endereco, id_depatamento_funcionario) values (4,"Bernardo","44446666",43,"1976-07-25", "Rua San Piedo",2);
insert into Funcionario (id, nome, telefone,idade,dataNascimento,endereco, id_depatamento_funcionario) values (5,"Gustavo","44448888",39,"1980-07-15", "Rua Jacaré",3);
select A.nome AS 'Deparmento', B.nome AS 'Funcionario', B.telefone from Departamento A inner join Funcionario B on(A.id = B.id_depatamento_funcionario) order by A.nome, B.nome;
/*exercicio2*/
create table Turma (
id int primary key,
nome varchar(45)
);
create table Aluno (
id int primary key auto_increment,
nome varchar(45),
telefone varchar(25),
idade int,
dataNascimento date,
id_Aluno_Turma int,
constraint fk_Aluno_Turma
foreign key (id_Aluno_Turma)
references Turma(id)
);
insert into Turma (id,nome) values (1, "A");
insert into Turma (id,nome) values (2, "B");
insert into Turma (id,nome) values (3, "C");
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Beatriz", "55558888",12,"2007-12-06", 1);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("André", "99997777",13,"2006-12-06", 1);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Ricardo", "99996666",11,"2006-06-23", 3);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Laura", "88885674",11,"2008-09-06", 3);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Gusto", "87654327",13,"2006-02-25", 1);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Uilson", "99987659",11,"2007-08-23", 1);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Rodrigo", "98765804",11,"2008-04-08", 3);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Giovana", "98964238",12,"2007-09-24", 1);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Pedro", "876598071",12,"2008-11-12", 3);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Rafael", "76589032",10,"2009-05-14", 2);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Daniel", "95678359",12,"2007-02-04", 1);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Reginaldo", "98978238",12,"2007-04-09", 1);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Robert", "78456789",12,"2007-05-14", 1);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Diego", "79876429",12,"2007-10-12", 1);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Alisson", "76784319",12,"2007-12-22", 1);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Tiago", "78956423",10,"2009-09-12", 2);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Augusto", "56784239",10,"2009-02-21", 2);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Caio", "65467894",10,"2009-11-02", 2);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Tiago", "45678083",10,"2009-01-25", 2);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Gabriel", "78956673",10,"2009-05-11", 2);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Amaral", "56789759",10,"2009-05-03", 2);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Teodoro", "67845672",10,"2009-11-03", 2);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Caique", "13456789",10,"2009-07-24", 2);
insert into Aluno (nome,telefone,idade, dataNascimento, id_Aluno_Turma) values ("Arthur", "34578979",10,"2009-04-10", 2);
select A.nome as 'Turma', B.nome 'Aluno', B.idade from Turma A inner join Aluno B on(A.id = B.id_Aluno_Turma) order by A.nome, B.nome;
/*exercicio3*/
create table Estado (
sigla varchar(2),
nome varchar(45),
id int primary key
);
create table Cidade (
id int primary key auto_increment,
nome varchar(45),
id_Cidade_Estado int,
constraint fk_Cidade_Estado
foreign key (id_Cidade_Estado)
references Estado(id)
);
create table Bairro (
id int primary key,
nome varchar(45),
id_Bairro_Cidade int not null,
constraint fk_Bairro_Cidade
foreign key (id_Bairro_Cidade)
references Cidade(id)
);
insert into Estado (sigla,nome, id) values ("SP","São Paulo",1);
insert into Estado (sigla,nome, id) values ("RJ","Rio de Janeiro",2);
insert into Cidade (nome, id_Cidade_Estado) values ("Rio de Janeiro",2);
insert into Cidade (nome, id_Cidade_Estado) values ("Paraty",2);
insert into Cidade (nome, id_Cidade_Estado) values ("Angra dos Reis",2);
insert into Cidade (nome, id_Cidade_Estado) values ("São Paulo",1);
insert into Cidade (nome, id_Cidade_Estado) values ("Osasco",1);
insert into Cidade (nome, id_Cidade_Estado) values ("Ourinhos",1);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (1, "Bairro da Liberdade",4);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (2, "Bairro da Freguesia do O",4);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (3, "Bairro da República",4);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (4, "Bairro do Socorro",4);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (5, "Bairro do Boi Mirim",4);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (6, "Copacabana",1);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (7, "Fluminense",1);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (8, "Botafogo",1);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (9, "Bangu",1);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (10, "Deodoro",1);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (11, "Corumbê",2);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (12, "Dom Pedro",2);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (13, "Portão de Ferro I",2);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (14, "Portão de Ferro II",2);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (15, "Portão de Ferro III",2);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (16, "Mambucaba",3);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (17, "Frade",3);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (18, "Campo Belo",3);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (19, "Parque Belém",3);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (20, "Camorim",3);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (21, "Castelo Branco",5);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (22, "Centro",5);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (23, "Cipava",5);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (24, "Km 18",5);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (25, "Pestana",5);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (26, "Jardim do Sol",6);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (27, "Jardim do Sol II",6);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (28, "Itaipiva",6);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (29, "Nova Ourinhos",6);
insert into Bairro (id, nome, id_Bairro_Cidade ) values (30, "Jardim Carolina",6);
select A.nome as 'Estado', B.nome as 'Cidade', C.nome as 'Bairro' from Estado A inner join Cidade B on(A.id = B.id_Cidade_Estado)inner join Bairro C on (B.id = C.id_Bairro_Cidade) order by A.nome, B.nome, C.nome;
