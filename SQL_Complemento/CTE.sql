/* CTE COMMON TABLE EXPRESSIONS, with. Agiliza nas consultas grandes */
select numero, nome from banco;
select banco_numero, numero, nome from agencias;

with tbl_tmp_banco as (
	select numero, nome from banco
)
select numero, nome from tbl_tmp_banco;
/* parâmetros para consulta mais especificas */
with params as (
	select 1 as banco_numero
), tbl_tmp_banco as (
	select numero, nome from banco join params on params.banco_numero = banco.numero
)
select numero, nome from tbl_tmp_banco;
with clientes_e_transacoes as (
	select cliente.nome as cliente_nome, tipo_transacao.nome as tipo_transacao, cliente_transacoes.valor as valor from cliente_transacoes join 
	cliente on cliente_transacoes.cliente_numero = cliente.numero join tipo_transacao on tipo_transacao.id = cliente_transacoes.tipo_transacao_id
	join banco on banco.numero = cliente_transacoes.banco_numero where /* ou and */ banco.nome ilike '%Itaú%'
)
select cliente_nome, tipo_transacao, valor from clientes_e_transacoes; 