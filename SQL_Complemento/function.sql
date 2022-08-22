/* functions */
CREATE OR REPLACE FUNCTION fuc_somar(INTEGER, INTEGER)
	RETURNS INTEGER
	SECURITY DEFINER
	RETURNS NULL ON NULL INPUT /* SE UMA ENTRADA ESTIVER NULA, TODA FUNÇÃO RETORNARÁ NULA */
	LANGUAGE SQL
	AS $$
		SELECT $1 + $2;
	$$;
SELECT fuc_somar(1, 0); 
/*  */
CREATE OR REPLACE FUNCTION fuc_somar(INTEGER, INTEGER)
	RETURNS INTEGER
	SECURITY DEFINER
	CALLED ON NULL INPUT /* SE UMA ENTRADA ESTIVER NULA, FUNÇÃO FUNCIONARÁ NORMALMENTE */
	LANGUAGE SQL
	AS $$
		SELECT $1 + $2;
	$$;
SELECT fuc_somar(1, NULL);
/* TRATAR O NULO FUNÇÃO SELECT COALESCE ()*/ 
CREATE OR REPLACE FUNCTION fuc_somar(INTEGER, INTEGER)
	RETURNS INTEGER
	SECURITY DEFINER
	CALLED ON NULL INPUT /* SE UMA ENTRADA ESTIVER NULA, FUNÇÃO FUNCIONARÁ NORMALMENTE */
	LANGUAGE SQL
	AS $$
		SELECT COALESCE ($1, 0) +  COALESCE ($2, 0);
	$$;
SELECT fuc_somar(1, NULL);
/* pl/sql */
CREATE OR REPLACE FUNCTION bancos_add (p_numero int, p_nome VARCHAR, p_ativo BOOLEAN)
	RETURNS INTEGER
	SECURITY INVOKER 
	CALLED ON NULL INPUT
	LANGUAGE PLPGSQL
	AS $$
		DECLARE variavel_id INTEGER;
		BEGIN
			IF p_nome is null OR p_numero is null or p_ativo is null  THEN
				RETURN 0;
			END IF;
			SELECT INTO variavel_id numero FROM banco where numero = p_numero;
			IF variavel_id is null THEN 
				INSERT INTO banco (numero, nome, ativo) Values (p_numero, p_nome , p_ativo);	
			ELSE
				RETURN 0;
			END IF;
				SELECT INTO variavel_id numero FROM banco where numero = p_numero;
				return variavel_id;
		END;
	$$;
select bancos_add (500, 'Banco Atlas', true);
select numero, nome, ativo from banco where numero = 500;