DO
$$
DECLARE
	n1 INT := 5;
	n2 INT := 5;
	n3 NUMERIC (5,2) := 5;
	n4 INT := -5;
BEGIN
	--divisão inteira
	RAISE NOTICE '% / % = %', n1, n2, n1 / n2
	--divisão real
	RAISE NOTICE '% / % = %', n3, n2, to_char( n3 / n2, '99.99');
	--resto da divisão
	RAISE NOTICE '% %% % = %', n1, n2, n % n2;
	--exponenciação
	RAISE NOTICE '% ^ % = %', n1, n2, n1 ^n2;
	--raiz quadrada
	RAISE NOTICE '|/% = %', n1, |/n1;
	--raiz cubica
	RAISE NOTICE '||/% = %', n1, ||/n1;
	--valor absuluto
	RAISE NOTICE '@% = % e @% = %', n1, @n1, n4, @n4;
END $$;
	



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