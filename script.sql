DO $$
DECLARE
	n1 NUMERIC (5, 2);
	n2 INTEGER;
	limite_inferior INTEGER := 5;
	limite_superior INTEGER := 17;
BEGIN
	--0 <= n1 < 1 (intervalo real)
	n1 := random ();
	RAISE NOTICE 'n1; %', n1;
	-- 1 <= n1 <10 (intervalro real)
	n1 := 1 + random() * 9;
	-- 1 <= n2 < 10 (::int faz type cast) floor arrendonda para baixo
	n2 := floor(random() * 10 + 1) :: INT;
	RAISE NOTICE 'n2: %', n2;
	--gerar um valor inteiro entre 5 e 17
	n2 := limite_inferior + floor(random() * (limite_superior - limite_inferior + 1))::int;
END;
$$

-- DO
-- $$
-- DECLARE
-- 	n1 INT := 5;
-- 	n2 INT := 5;
-- 	n3 NUMERIC (5,2) := 5;
-- 	n4 INT := -5;
-- BEGIN
-- 	--divisão inteira
-- 	RAISE NOTICE '% / % = %', n1, n2, n1 / n2;
-- 	--divisão real
-- 	RAISE NOTICE '% / % = %', n3, n2, to_char( n3 / n2, '99.99');
-- 	--resto da divisão
-- 	RAISE NOTICE '% %% % = %', n1, n2, n1 % n2;
-- 	--exponenciação
-- 	RAISE NOTICE '% ^ % = %', n1, n2, n1 ^n2;
-- 	--raiz quadrada
-- 	RAISE NOTICE '|/% = %', n1, |/n1;
-- 	--raiz cubica
-- 	RAISE NOTICE '||/% = %', n1, ||/n1;
-- 	--valor absuluto
-- 	RAISE NOTICE '@% = % e @% = %', n1, @n1, n4, @n4;
-- END $$;
	
--DO $$
--DECLARE
--codigo INTEGER := 1;
--nome_completo VARCHAR(200) := 'João Santos';
-- 11 digitos no total, dois para valores decimais
--salario numeric (11, 2) := 20.5 ;
--BEGIN
--RAISE NOTICE 'Meu código é %, me chamo % e meu salário é R$%',
--codigo, nome_completo, salario;
--END $$;