-- ============================================================
-- Projeto : Power BI Finance Dashboard
-- Arquivo : 04_populate_dim_calendario.sql
-- Schema  : FINANCE
-- Objetivo: Popular DIM_CALENDARIO
-- Período : 01/01/2024 até 31/12/2035
-- ============================================================

INSERT INTO DIM_CALENDARIO
(
    SK_DATA,
    DATA,
    ANO,
    MES,
    NOME_MES,
    ANO_MES,
    TRIMESTRE,
    NOME_TRIMESTRE,
    DIA,
    DIA_SEMANA,
    NOME_DIA_SEMANA,
    SEMANA_ANO,
    EH_FIM_SEMANA,
    EH_DIA_UTIL
)
SELECT
    TO_NUMBER(TO_CHAR(DATA_CALENDARIO, 'YYYYMMDD'))
        AS SK_DATA,

    DATA_CALENDARIO
        AS DATA,

    EXTRACT(YEAR FROM DATA_CALENDARIO)
        AS ANO,

    EXTRACT(MONTH FROM DATA_CALENDARIO)
        AS MES,

    INITCAP(
        TO_CHAR(
            DATA_CALENDARIO,
            'FMMONTH',
            'NLS_DATE_LANGUAGE=PORTUGUESE'
        )
    ) AS NOME_MES,

    TO_CHAR(DATA_CALENDARIO, 'YYYY-MM')
        AS ANO_MES,

    TO_NUMBER(
        TO_CHAR(DATA_CALENDARIO, 'Q')
    ) AS TRIMESTRE,

    TO_CHAR(DATA_CALENDARIO, 'Q') || 'º Trim'
        AS NOME_TRIMESTRE,

    EXTRACT(DAY FROM DATA_CALENDARIO)
        AS DIA,

    -- Segunda = 1 ... Domingo = 7
    TRUNC(DATA_CALENDARIO)
        - TRUNC(DATA_CALENDARIO, 'IW')
        + 1
        AS DIA_SEMANA,

    INITCAP(
        TO_CHAR(
            DATA_CALENDARIO,
            'FMDAY',
            'NLS_DATE_LANGUAGE=PORTUGUESE'
        )
    ) AS NOME_DIA_SEMANA,

    TO_NUMBER(
        TO_CHAR(DATA_CALENDARIO, 'IW')
    ) AS SEMANA_ANO,

    CASE
        WHEN TO_CHAR(DATA_CALENDARIO, 'DY',
                     'NLS_DATE_LANGUAGE=ENGLISH')
             IN ('SAT', 'SUN')
        THEN 'S'
        ELSE 'N'
    END AS EH_FIM_SEMANA,

    CASE
        WHEN TO_CHAR(DATA_CALENDARIO, 'DY',
                     'NLS_DATE_LANGUAGE=ENGLISH')
             IN ('SAT', 'SUN')
        THEN 'N'
        ELSE 'S'
    END AS EH_DIA_UTIL

FROM
(
    SELECT
        DATE '2024-01-01' + LEVEL - 1 AS DATA_CALENDARIO
    FROM DUAL
    CONNECT BY LEVEL <=
        DATE '2035-12-31' - DATE '2024-01-01' + 1
);

COMMIT;
