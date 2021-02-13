-- Data Atual
SELECT CURRENT_DATE AS data_atual;

-- Hora Atual
SELECT CURRENT_TIME AS hora_atual;

-- Calcular data futura
SELECT CURRENT_DATE + INTERVAL '3 DAY' AS data_vencimento;

SELECT CURRENT_DATE + INTERVAL '3 MONTH' AS data_vencimento;

-- Calcular data passada
SELECT CURRENT_DATE - INTERVAL '3 DAY' AS data_matricula;

-- Diferença entre datas
SELECT DATE_PART('year', '2019-01-01'::date) - DATE_PART('year', '2011-10-02'::date) AS em_anos;

SELECT (DATE_PART('year', '2019-01-01'::date) - DATE_PART('year', '2011-10-02'::date)) * 12 +
(DATE_PART('month', '2019-01-01'::date) - DATE_PART('month', '2011-10-02'::date))
AS em_meses;

-- Em semanas
SELECT TRUNC(DATE_PART('day', '2019-01-01'::timestamp - '2011-12-22'::timestamp) / 7) AS em_semanas;

-- Em dias
SELECT DATE_PART('day', '2019-01-01'::timestamp - '2011-10-02'::timestamp)

-- Em Horas
SELECT DATE_PART('day' ,'2019-01-02 11:55'::timestamp - '2019-01-01 09:55'::timestamp) * 24 +
    DATE_PART('hour' ,'2019-01-02 11:55'::timestamp - '2019-01-01 09:55'::timestamp)
	AS horas
	
-- Em Minutos
SELECT DATE_PART('day' ,'2019-01-01 11:55'::timestamp - '2019-01-01 09:55'::timestamp) * 24 * 60 +
    DATE_PART('hour' ,'2019-01-01 11:55'::timestamp - '2019-01-01 09:55'::timestamp) * 60 +
	DATE_PART('minute' ,'2019-01-01 11:55'::timestamp - '2019-01-01 09:55'::timestamp)
	AS minutos

-- Em segundos
SELECT DATE_PART('day' ,'2019-01-01 11:55'::timestamp - '2019-01-01 09:55'::timestamp) * 24 * 60 * 60 +
    DATE_PART('hour' ,'2019-01-01 11:55'::timestamp - '2019-01-01 09:55'::timestamp) * 60 * 60 +
	DATE_PART('minute' ,'2019-01-01 11:55'::timestamp - '2019-01-01 09:55'::timestamp) * 60 + 
	DATE_PART('second' ,'2019-01-01 11:55'::timestamp - '2019-01-01 09:55'::timestamp)
	AS segundos

-- Formatando data
SELECT TO_CHAR(CURRENT_DATE, 'dd/mm/YYYY') AS data_atual;

SELECT TO_CHAR(NOW(), 'dd/mm/YYYY HH24:MI:SS') AS data_hora_atual;

-- Dia com inicial maiúscula
SELECT TO_CHAR(CURRENT_TIMESTAMP, 'Day') AS dia_da_semana;

-- Dia com inicial minúscula
SELECT TO_CHAR(CURRENT_TIMESTAMP, 'day') AS dia_da_semana;

-- Dia abreviado
SELECT TO_CHAR(CURRENT_TIMESTAMP, 'Dy') AS dia_da_semana;

-- Mês com inicial maiúscula
SELECT TO_CHAR(CURRENT_TIMESTAMP, 'Month') AS mes;

-- Mês com inicial minúscula
SELECT TO_CHAR(CURRENT_TIMESTAMP, 'month') AS mes;

-- Mês abreviado
SELECT TO_CHAR(CURRENT_TIMESTAMP, 'Mon') AS mes;

-- Língua
SHOW lc_time

SET lc_time = 'pt_BR.UTF8'

-- Data/hora em pt br
SELECT TO_CHAR(CURRENT_TIMESTAMP, 'TMMon') AS dia_da_semana;
SELECT TO_CHAR(CURRENT_TIMESTAMP, 'TMday') AS dia_da_semana;

-- Extraindo partes de uma data
SELECT EXTRACT(MONTH FROM CURRENT_TIMESTAMP) AS numero_do_Mes;
SELECT EXTRACT(DAY FROM CURRENT_TIMESTAMP) AS dia;
SELECT EXTRACT(YEAR FROM CURRENT_TIMESTAMP) AS ano;
SELECT EXTRACT(WEEK FROM CURRENT_TIMESTAMP) AS numero_da_semana;
SELECT EXTRACT(HOUR FROM CURRENT_TIMESTAMP) AS hora;
SELECT EXTRACT(MINUTE FROM CURRENT_TIMESTAMP) AS minuto;
SELECT EXTRACT(SECOND FROM CURRENT_TIMESTAMP) AS segundo;

-- Data hora
SELECT NOW() AS data_hora;

-- Convertendo de segundo para hora
SELECT TO_CHAR((2000 || 'seconds')::interval, 'HH24:MI:SS') AS tempo_total;

-- segundo de hora
SELECT EXTRACT(EPOCH FROM CURRENT_TIMESTAMP::time) AS em_segundos;








