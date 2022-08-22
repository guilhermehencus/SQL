SELECT column_name, data_type FROM information_schema.columns where table_name= 'banco'; /* Para olhar as colunas */
/* AVG */
SELECT AVG (valor) from cliente_transacoes;
/* count and having funciona como where */
SELECT COUNT (numero) from cliente;
SELECT COUNT (numero), email from cliente where email ilike '%@gmail.com' group by email;
SELECT COUNT (id), tipo_transacao_id from cliente_transacoes group by tipo_transacao_id having COUNT (id)>150;
/* min */
SELECT MIN (valor), tipo_transacao_id from cliente_transacoes group by tipo_transacao_id;
/* max */
SELECT MAX (valor), tipo_transacao_id from cliente_transacoes group by tipo_transacao_id;
/* sum */
SELECT SUM (valor) from cliente_transacoes;
SELECT SUM (valor), tipo_transacao_id from cliente_transacoes group by tipo_transacao_id ORDER BY tipo_transacao_id ;
SELECT SUM (valor), tipo_transacao_id from cliente_transacoes group by tipo_transacao_id ORDER BY tipo_transacao_id desc ;
