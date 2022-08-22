/* inner, distinct usa para  distinguir e especificar a busca no caso observar quantas agencias têm no banco */
select banco.numero, banco.nome, agencia.numero, agencia.nome from banco inner join agencia on agencia.banco_numero = banco.numero;
select count (distinct banco.numero) from banco inner join agencia on agencia.banco_numero = banco.numero;
select banco.nome,agencia.nome, conta_corrente.numero, conta_corrente.digito, cliente.nome, tipo_transacao.nome from banco join agencia on agencia.banco_numero = banco.numero
join conta_corrente on conta_corrente.banco_numero = agencia.banco_numero join cliente on cliente.numero = conta_corrente.cliente_numero join cliente_transacoes
on cliente_transacoes.agencia_numero = agencia.banco_numero join tipo_transacao on tipo_transacao.id = cliente_transacoes.tipo_transacao_id;
/* left join */
select banco.numero, banco.nome, agencia.numero, agencia.nome from banco left join agencia on agencia.banco_numero = banco.numero;

/* right join */
select  agencia.numero, agencia.nome, banco.numero, banco.nome from agencia right join banco on agencia.banco_numero = banco.numero;

/* full join */
select banco.numero, banco.nome as numero, agencia.numero, agencia.nome from banco full join agencia on agencia.banco_numero = banco.numero;

/* cross join, uma matriz */
select banco.numero, banco.nome, agencia.numero, agencia.nome from banco cross join agencia;
