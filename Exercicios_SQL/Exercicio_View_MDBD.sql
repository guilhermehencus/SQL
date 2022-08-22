/*exercicio view*/
/*1*/
create database RA18061;
use RA18061;
/*2*/
create table pessoa (
id int  primary key auto_increment,
nome_pessoa varchar(80)
);
create table contato (
id_contato_pessoa int,
num_telefone varchar(80)
);
alter table contato add constraint fk_Contato_Pessoa foreign key (id_contato_pessoa) references pessoa(id);
insert into pessoa (nome_pessoa) values ("João");
insert into pessoa (nome_pessoa) values ("Maria");
insert into pessoa (nome_pessoa) values ("Carlos");
insert into contato(id_contato_pessoa, num_telefone) values (1, "4408-5120");
/*3*/
CREATE VIEW vwpessoa AS SELECT nome_pessoa from pessoa Order by nome_pessoa;
select * from vwpessoa;
/*4*/
CREATE VIEW vwpessoatelefone as select nome_pessoa, num_telefone FROM pessoa INNER JOIN contato ON id = id_contato_pessoa Order by nome_pessoa;
select * from vwpessoatelefone;
/*5*/
CREATE VIEW vwpessoasemtelefone as select nome_pessoa  FROM  pessoa  where  id not in (select id_contato_pessoa from contato) Order by nome_pessoa;
select* from vwpessoasemtelefone;
/*6*/
delimiter $$
create procedure CadastraPessoa(in pnome varchar(80))
begin
insert into pessoa (nome_pessoa) values (pnome);
end $$
delimiter ;
call CadastraPessoa("João de Deus");
select * from pessoa;

/*7*/
delimiter $$
create procedure Pessoa(in pnome varchar(80), in ptelefone varchar(80))
begin
declare id_contato int;
insert into pessoa (nome_pessoa) values (pnome);
set id_contato=(select max(id) from pessoa);
insert into contato (id_contato_pessoa, num_telefone) values (id_contato, ptelefone);
end $$
delimiter ;
call Pessoa("Augusto", "55508-1667");
select nome_pessoa, num_telefone FROM pessoa INNER JOIN contato ON id = id_contato_pessoa;

/*7 com pessoas não inserida o número de telefone*/
delimiter $$
	create procedure Pessoat(in pnome varchar(80), in ptelefone varchar(80))
	begin
	insert into contato (id_contato_pessoa, num_telefone) values ((select id from pessoa where nome_pessoa=pnome), ptelefone);
	end $$
delimiter ;
select* from vwpessoasemtelefone;
call Pessoat("João", "7030-1567");
select nome_pessoa, num_telefone FROM pessoa INNER JOIN contato ON id = id_contato_pessoa;

/*8*/
DELIMITER $$
create function AcharTelefone(ptelefone varchar(80)) returns varchar(80)
begin
return(select nome_pessoa FROM pessoa INNER JOIN contato ON id = id_contato_pessoa where num_telefone=ptelefone);
end $$
delimiter ;
select * from vwpessoatelefone;
select AcharTelefone("4408-5120");
/*9*/
DELIMITER $$
create function TelefoneAchar(ptelefone varchar(80)) returns int(1)
begin
return (select if((select num_telefone from contato where num_telefone=ptelefone),1,0));
end $$
delimiter ;
select TelefoneAchar("4408-5120"); /*1*/
select TelefoneAchar("4408-5020"); /*0*/
/*10*/
select id from pessoa where nome_pessoa='João';
select count(num_telefone) from contato where id_contato_pessoa= (select id from pessoa where nome_pessoa='João');
DELIMITER $$
create function QuantosTelefones(pnome varchar(80)) returns int(2)
begin 
return (select count(num_telefone) from contato where id_contato_pessoa= (select id from pessoa where nome_pessoa=pnome));
end $$
delimiter ;
select * from vwpessoatelefone;
insert into contato (id_contato_pessoa, num_telefone) values ("3", "5050-1256");
select * from contato;
select QuantosTelefones("João");
/*Se um Número é par e impar */
delimiter $$
	create procedure NumeroAchar(in num int)
    begin
    declare divisivel varchar(10);
    if(mod(num,2)=0) then
    select divisivel="par";
    else
    select divisivel="impar";
    end if;
    end $$
    delimiter ;
    call NumeroAchar(5);
/*Mes */
delimiter $$
	create procedure AcharMes(in num int)
    begin
    declare mes varchar(50);
    if(num=1) then 
    select mes="Janeiro";
    elseif(num=2) then
     select mes="Fevereiro";
     elseif(num=3) then
     select mes="Março";
     elseif(num=4) then
     select mes="Abril";
     elseif(num=5) then
     select mes="Maio";
     elseif(num=6) then
     select mes="Junho";
     elseif(num=7) then
     select mes="Julho";
     elseif(num=8) then
     select mes="Agosto";
     elseif(num=9) then
     select mes="Setembro";
     elseif(num=10) then
     select mes="Outubro";
     elseif(num=11) then
     select mes="Novembro";
     elseif(num=12) then
     select mes="Fevereiro";
	 else
     select mes="O número que voce colocou, nao é de um mes";
     end if;
     end $$
     delimiter ;
     call AcharMes(1);
/* exiba dois numeros pares */
delimiter $$
	create procedure ExibirPares(in num int, in num2 int)
    begin
declare numdois int;
set numdois=num2;
	if (num<num2) then
		while num<num2 do
				set num= num+1;
			if(mod(num,2)=0) then
                select num;
		end if;	
        end while;
    else
		while numdois<num do
				set numdois= numdois+1;
			if(mod(numdois,2)=0) then
                select numdois;
		end if;	
		end while;
    end if;
    end $$
delimiter ;
call ExibirPares(19, 11);