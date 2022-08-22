/* view */
CREATE OR REPLACE view vw_bancos as (select numero, nome, ativo from banco);
select numero, nome, ativo from vw_bancos;
CREATE OR REPLACE view vw_bancos_2 (banco_numero, banco_nome, banco_ativo) as 
(select numero, nome, ativo from vw_bancos);
select banco_numero, banco_nome, banco_ativo from vw_bancos_2;
/* usando o insert na view vai para a tabela 'real'*/
INSERT INTO vw_bancos_2 (banco_numero, banco_nome, banco_ativo) Values (51, 'Banco Inter', TRUE); 
select banco_numero, banco_nome, banco_ativo from vw_bancos_2 WHERE banco_numero = 51;
select numero, nome, ativo from banco WHERE numero = 51;
/* update na view vai para a tabela 'real'*/
UPDATE vw_bancos_2 SET banco_ativo = false where banco_numero = 51;
select banco_numero, banco_nome, banco_ativo from vw_bancos_2 WHERE banco_numero = 51;
select numero, nome, ativo from banco WHERE numero = 51;
/* delete */
DELETE FROM vw_bancos_2 where banco_numero = 51;
select banco_numero, banco_nome, banco_ativo from vw_bancos_2 WHERE banco_numero = 51;
select numero, nome, ativo from banco WHERE numero = 51;
/* temporary view para esta sessão */
CREATE OR REPLACE TEMPORARY VIEW vw_agencia as (select nome from agencia);
select nome from vw_agencia;
/* wtih options */
CREATE OR REPLACE view vw_bancos_ativos as ( select numero, nome, ativo from banco where ativo is true) WITH LOCAL CHECK OPTION;
INSERT INTO vw_bancos_ativos (numero, nome , ativo) Values (51, 'Banco Inter', FALSE); 
CREATE OR REPLACE view vw_bancos_com_a as ( select numero, nome, ativo from vw_bancos_ativos where nome ilike 'a%') WITH LOCAL CHECK OPTION;
select numero, nome, ativo from vw_bancos_com_a;
INSERT INTO vw_bancos_com_a (numero, nome , ativo) Values (51, 'Alfa Bank Omega', TRUE); 
select numero, nome, ativo from vw_bancos_com_a;
INSERT INTO vw_bancos_com_a (numero, nome , ativo) Values (333, 'Mega Bank Omega', FALSE); 
INSERT INTO vw_bancos_com_a (numero, nome , ativo) Values (51, 'Alfa Bank Omega', TRUE); 
CREATE OR REPLACE view vw_bancos_ativos as ( select numero, nome, ativo from banco where ativo is true);
CREATE OR REPLACE view vw_bancos_com_a as ( select numero, nome, ativo from vw_bancos_ativos where nome ilike 'a%') WITH CASCADED CHECK OPTION;
INSERT INTO vw_bancos_com_a (numero, nome , ativo) Values (1000, 'Mega Bank Omega', FALSE);
/* Recursive, CREATE OR RECURSIVE view vw_bancos_com_a   */