create database Exercicios2;
use Exercicios2;
/*exercicio2*/
create table Categoria (
id int primary key,
descricao varchar(45)
);
create table Fabricante (
id int primary key,
descricao varchar(45)
);
create table Modelo (
id int primary key auto_increment,
descricao varchar(45),
id_modelo_fabricante int,
constraint fk_Modelo_Fabricante
foreign key (id_modelo_fabricante)
references Fabricante(id)
);
create table Carro (
identificacao int primary key auto_increment,
cor varchar(45),
placa varchar(45),
ano_Fabricacao int,
preco float,
id_carro_categoria int,
id_carro_modelo int,
constraint fk_Carro_Categoria
foreign key (id_carro_categoria)
references Categoria(id),
constraint fk_Carro_Modelo
foreign key (id_carro_modelo)
references Modelo(id)
);
insert into Categoria (id,descricao) values (1, "Hatch");
insert into Categoria (id,descricao) values (2, "Sedã");
insert into Categoria (id,descricao) values (3, "Picape");
insert into Categoria (id,descricao) values (4, "Utilitário");
insert into Fabricante (id,descricao) values (1, "Toyota");
insert into Fabricante (id,descricao) values (2, "Volkswagen");
insert into Fabricante (id,descricao) values (3, "Hyundai");
insert into Modelo (descricao, id_modelo_fabricante) values ("Yaris", 1);
insert into Modelo (descricao, id_modelo_fabricante) values ("Hilux", 1);
insert into Modelo (descricao, id_modelo_fabricante) values ("Etios", 1);
insert into Modelo (descricao, id_modelo_fabricante) values ("Novo Jetta", 2);
insert into Modelo (descricao, id_modelo_fabricante) values ("Amarok", 2);
insert into Modelo (descricao, id_modelo_fabricante) values ("Gol", 2);
insert into Modelo (descricao, id_modelo_fabricante) values ("New Azera", 3);
insert into Modelo (descricao, id_modelo_fabricante) values ("Santa Fé", 3);
insert into Modelo (descricao, id_modelo_fabricante) values ("New Tucson", 3);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Branco", "HTW-8320", 2017, 27196, 2, 1);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Vermelho", "HGD-3518", 2017, 28325, 2, 1);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Azul", "GBH-9014", 2017, 27682, 2, 1);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Preto", "WSA-4320", 2016, 196990, 3, 2);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Vermelho", "WXV-5713", 2016, 198320, 3, 2);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Azul", "ASU-7713", 2016, 200320, 3, 2);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Cinza", "HLZ-6103", 2019, 51532, 1, 3);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Branco", "MLP-2163", 2019, 50862, 1, 3);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Vermelho", "XBU-5513", 2019, 51258, 1, 3);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Preto", "SDF-3180", 2019, 109612, 2, 4);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Branco", "AQE-6200", 2019, 107612, 2, 4);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Preto", "QUA-3680", 2019, 108412, 2, 4);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Azul", "ASH-6712", 2013, 79542, 3, 5);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Branco", "DFG-9074", 2016, 80471, 3, 5);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Cinza", "WRT-4178", 2019, 91522, 3, 5);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Vermelho", "TYV-8112", 2019, 40472, 2, 6);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Branco", "DVB-2452", 2019, 51712, 2, 6);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Amarelo", "NHJ-1472", 2016, 70452, 2, 6);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Preto", "RHJ-7012", 2018, 150472, 2, 7);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Cinza", "EBN-4789", 2018, 149472, 2, 7);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Vermelho", "UIT-1423", 2015, 50178, 2, 7);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Branco", "GHJ-1746", 2019, 184547, 2, 8);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Preto", "QZC-4712", 2019, 180717, 2, 8);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Marrom", "RTM-4782", 2018, 100547, 2, 8);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Branco", "QML-1746", 2020, 195647, 2, 9);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Cinza", "KHS-3268", 2019, 51647, 2, 9);
insert into Carro (cor, placa, ano_Fabricacao, preco, id_carro_categoria, id_carro_modelo ) values ("Azul", "WIT-8221", 2020, 185647, 2, 9);
select D.descricao as 'Fabricação', C.descricao as 'Modelo', B.descricao as 'Categoria', A.identificacao, A.cor as 'cor do carro', A.placa as 'placa do carro', A.ano_Fabricacao, A.preco from Carro A  join Categoria B on(A.id_carro_categoria = B.id) join Modelo C on(A.id_carro_modelo = C.id) join Fabricante D on(C.id_modelo_fabricante = D.id)
order by B.descricao, D.descricao, C.descricao,  A.ano_Fabricacao;
