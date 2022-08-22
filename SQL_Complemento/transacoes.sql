/* transações. ROLLBACK: Forçar o erro não muda nada */
select numero, nome, ativo from banco ORDER BY numero;
UPDATE banco set ativo = FALSE where numero = 0;
BEGIN;
	UPDATE banco set ativo = TRUE where numero = 0;
ROLLBACK;
/* commit */
UPDATE banco set ativo = FALSE where numero = 0;
BEGIN;
	UPDATE banco set ativo = TRUE where numero = 0;
COMMIT;
select numero, nome, ativo from banco ORDER BY numero;
/* SAVEPOINT nome_do_savepoint e depois de alguma operação utilizar o ROLLBACK TO nome_do_savepoint */

