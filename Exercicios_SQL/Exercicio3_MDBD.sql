create database Exercicios3;
use Exercicios3;
/*exercicio3*/
create table Cargo (
id_Cargo int primary key,
descricao varchar(45)
);
create table Departamento (
id_Departamento int primary key,
descricao varchar(45),
ramal int unique,
id_departamento_campus int
);
create table Municipio (
id_Municipio int primary key,
descricao varchar(45)
);
create table Campus (
id_Campus int primary key auto_increment,
descricao varchar(45),
id_campus_municipio int,
constraint fk_Campus_Municipio
foreign key (id_campus_municipio)
references Municipio(id_Municipio)
);
create table Funcionario (
id_Funcionario int primary key auto_increment,
nome varchar(45),
cpf varchar(45) unique,
telefone varchar(45),
email varchar(45),
id_funcionario_departamento int,
id_funcionario_cargo int,
constraint fk_funcionario_departamento
foreign key (id_funcionario_departamento)
references Departamento(id_Departamento),
constraint fk_funcionario_cargo
foreign key (id_funcionario_cargo)
references Cargo(id_Cargo)
);
alter table  Departamento add constraint fk_departamento_campus foreign key(id_departamento_campus) references Campus (id_Campus);
insert into Municipio (id_Municipio, descricao) values (1, "Natal");
insert into Municipio (id_Municipio, descricao) values (2, "Mossoró");
insert into Municipio (id_Municipio, descricao) values (3, "Parnamirim");
insert into Campus (descricao, id_campus_municipio ) values ("Natal–Central", 1);
insert into Campus (descricao, id_campus_municipio ) values ("Natal–Zona Norte", 1);
insert into Campus (descricao, id_campus_municipio ) values ("Parnamirim", 3);
insert into Campus (descricao, id_campus_municipio ) values ("Mossoró", 2);
insert into Departamento (id_Departamento, descricao, ramal, id_departamento_campus ) values (1, "Direção Geral", 1001, 1);
insert into Departamento (id_Departamento, descricao, ramal, id_departamento_campus ) values (2, "Direção Acadêmica", 1002, 1);
insert into Departamento (id_Departamento, descricao, ramal, id_departamento_campus ) values (3, "Recursos Humanos", 1003, 1);
insert into Departamento (id_Departamento, descricao, ramal, id_departamento_campus ) values (4, "Direção Geral", 2001, 2);
insert into Departamento (id_Departamento, descricao, ramal, id_departamento_campus ) values (5, "Direção Acadêmica", 2002, 2);
insert into Departamento (id_Departamento, descricao, ramal, id_departamento_campus ) values (6, "Recursos Humanos", 2003, 2);
insert into Departamento (id_Departamento, descricao, ramal, id_departamento_campus ) values (7, "Direção Geral", 3001, 3);
insert into Departamento (id_Departamento, descricao, ramal, id_departamento_campus ) values (8, "Direção Acadêmica", 3002, 3);
insert into Departamento (id_Departamento, descricao, ramal, id_departamento_campus ) values (9, "Recursos Humanos", 3003, 3);
insert into Departamento (id_Departamento, descricao, ramal, id_departamento_campus ) values (10, "Direção Geral", 4001, 4);
insert into Departamento (id_Departamento, descricao, ramal, id_departamento_campus ) values (11, "Direção Acadêmica", 4002, 4);
insert into Departamento (id_Departamento, descricao, ramal, id_departamento_campus ) values (12, "Recursos Humanos", 4003, 4);
insert into Cargo (id_Cargo, descricao) values (1, "Diretor Geral");
insert into Cargo (id_Cargo, descricao) values (2, "Professor");
insert into Cargo (id_Cargo, descricao) values (3, "Técnico Administrativo");
/*Diretor Geral*/
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("João Machado", "787.405.440-79", "4584-2145", "Joao_Machado@gmail.com", 1, 1);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Coutinho Santos", "876.164.560-57", "7123-5746", "Coutinho_Santos@gmail.com", 4, 1);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Perreira Arouca", "546.798.660-04", "1274-8653", "Perreira_Arouca@gmail.com", 6, 1);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Matheus Henrique", "901.766.830-03", "7458-1369", "Matheus_Henrique@outlook.com", 8, 1);

/*professores*/
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Pedro Custodio", "122.352.980-01", "9884-5741", "Pedro_Custodio@outlook.com", 2, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Manuel Ancora", "861.886.610-56", "4785-1475", "Manuel_Ancora@outlook.com", 2, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Ricardo Lobos", "063.096.280-46", "0145-7825", "Ricardo_Lobos@gmail.com", 2, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Leonaldo Silva Costa", "482.194.270-43", "7822-4547", "Leo_Silva@gmail.com", 2, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Gabriel Camalo", "680.867.790-50", "3541-4787", "Gabriel_Camalo@gmail.com", 2, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("André Pimentel", "184.257.030-77", "1548-8521", "Andre_Pi@outlook.com", 5, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Adriano Santos", "446.905.400-39", "4417-8564", "Adrianoe_Santos@outlook.com", 5, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Rosa Vallejo", "527.208.750-07", "3547-8621", "Rosa_Vallejo@gmail.com", 5, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Luciana Carvalho", "182.144.620-88", "7155-4788", "Luci_Carvalho@gmail.com", 5, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Patricia Souza", "408.891.140-72", "7449-1515", "Patricia_Souza@outlook.com", 5, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Lucius Pinto", "977.625.910-36", "7155-5487", "Lucius_Pinto@gmail.com", 7, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Augusto Fernando", "121.931.950-30", "4254-8454", "Augusto_Fernando@gmail.com", 7, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Rafael Mendes", "736.090.830-26", "5841-2484", "Rafael_Men@outlook.com", 7, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Vinicius Guimarães", "727.438.210-19", "1154-5500", "Vinicius_Guimaraes@outlook.com", 7, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Kleber Sousa", "815.208.730-00", "8554-4578", "Kleber_Sousa@outlook.com", 7, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Alisson Costa", "127.360.810-05", "4858-5481", "Alisson_Costa@gmail.com", 9, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Giovana Amélia", "584.740.820-05", "9872-5346", "Gi_Amélia@outlook.com", 9, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Daniel Ronaldo", "114.766.100-61", "7445-5587", "Daniel_Ronald@outlook.com", 9, 2);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Guilherme Luis", "553.544.770-69", "1421-4425", "Guilherme_Luis@outlook.com", 9, 2);
/*Técnico Administrativo*/
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Henrique Patricio", "510.692.200-35", "4788-9621", "Henrique_Patricio@gmail.com", 1, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Claudio Sebastião", "505.901.060-07", "8585-8427", "Claudio_Sebastiao@gmail.com", 1, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Renata Fernadez", "602.907.190-46", "8588-4354", "Renat_Fernadez@gmail.com", 4, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("José Batista", "454.818.950-56", "9885-6545", "Jose_Batista@gmail.com", 4, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Arthur Cardoso", "301.456.540-79", "2155-4584", "Arthur_Cardoso@outlook.com", 6, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Alexandre Borja", "604.211.320-86", "3254-1554", "Alexandre_Borja@outlook.com", 6, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Marta Ribeiro", "607.198.160-33", "5456-8460", "Marta_Ribeiro@outlook.com", 8, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Roberta Marquez", "300.283.210-30", "7455-6200", "Roberta_Marquez@gmail.com", 8, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Marcio Teixeira", "180.729.260-63", "5321-1889", "Marcio_Teixeira@gmail.com", 3, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Fernando Libras", "892.091.120-75", "8252-5485", "Fernando_Libras@gmail.com", 3, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Bernardo Silva ", "148.412.350-60", "6214-5744", "Bernardo_Silva@gmail.com", 3, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Maria Aparecida", "116.051.470-44", "8965-5047", "Maria_Aparecida@gmail.com", 6, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("David Prudente", "494.983.470-34", "8852-1534", "David_Prudente@gmail.com", 6, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Ingrid Ramos", "875.618.300-33", "1224-5841", "Ingrid_Ramos@gmail.com", 6, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Carlos Eduardo", "591.738.120-80", "4585-7841", "Carlos_Eduardo@gmail.com", 9, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Rafael Moreira", "079.515.240-00", "0054-7818", "Rafael_Moreira@outlook.com", 9, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Luis Perreira", "834.603.160-20", "7785-8814", "Luis_Perreira@gmail.com", 9, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Luisa Silva", "876.989.480-99", "8985-0999", "Luisa_Silva@gmail.com", 12, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Claudio Coutinho", "032.251.020-16", "5698-1549", "Claudio_Coutinho@gmail.com", 12, 3);
insert into Funcionario (nome, cpf, telefone, email, id_funcionario_departamento, id_funcionario_cargo) values ("Bernarda Cristina", "110.357.320-92", "9875-2441", "Bernarda_Cri@gmail.com", 12, 3);
select E.descricao as 'Município', D.descricao as 'Campus', C.descricao as 'Departamento',  A.nome, A.cpf, A.telefone, A.email from Funcionario A join Cargo B on (A.id_funcionario_cargo=B.id_Cargo) join Departamento C on (A.id_funcionario_departamento=C.id_Departamento) join 
Campus D  on (C.id_departamento_campus=D.id_Campus) join Municipio E on (E.id_Municipio=D.id_campus_municipio) order by E.descricao, D.descricao, C.descricao, A.nome;
select  C.descricao as 'Municipio',  B.descricao as 'Campus',  D.descricao as 'Cargo', A.nome from Campus B join Municipio C on (C.id_Municipio=B.id_campus_municipio) join Departamento E on (E.id_departamento_campus=B.id_Campus) join Funcionario A  on (A.id_funcionario_departamento=E.id_Departamento)join Cargo D on (A.id_funcionario_cargo=D.id_Cargo)  where A.id_funcionario_cargo=1   order by C.descricao, B.descricao, A.nome;
select A.nome, A.email from Funcionario A join Departamento B on  (A.id_funcionario_departamento=B.id_Departamento) join Campus C on (B.id_departamento_campus=C.id_Campus) where B.id_departamento_campus=1 order by A.nome desc;
