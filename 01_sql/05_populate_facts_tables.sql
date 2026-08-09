-- ============================================================
-- Projeto : Power BI Finance Dashboard
-- Arquivo : 06_populate_facts.sql
-- Schema  : FINANCE
-- Objetivo: Popular tabelas fato com dados fictícios
-- Período : Janeiro/2025 a Dezembro/2026
-- ============================================================


-- ============================================================
-- 1. FATO_MOVIMENTO_FINANCEIRO
-- ============================================================


-- ------------------------------------------------------------
-- 1.1 SALÁRIO MENSAL
-- Entrada fixa
-- Dia 05 de cada mês
-- ------------------------------------------------------------

INSERT INTO FATO_MOVIMENTO_FINANCEIRO
(
    SK_DATA,
    SK_CONTA,
    SK_CATEGORIA,
    SK_TIPO_MOVIMENTO,
    DESCRICAO,
    VALOR,
    DATA_VIGENCIA,
    OBSERVACAO
)
SELECT
    TO_NUMBER(
        TO_CHAR(
            ADD_MONTHS(DATE '2025-01-05', LEVEL - 1),
            'YYYYMMDD'
        )
    ),

    (
        SELECT SK_CONTA
        FROM DIM_CONTA
        WHERE NOME_CONTA = 'Conta Corrente Principal'
    ),

    (
        SELECT SK_CATEGORIA
        FROM DIM_CATEGORIA
        WHERE CATEGORIA = 'Receitas'
          AND SUBCATEGORIA = 'Salário'
    ),

    (
        SELECT SK_TIPO_MOVIMENTO
        FROM DIM_TIPO_MOVIMENTO
        WHERE FLUXO = 'ENTRADA'
          AND TIPO = 'FIXA'
    ),

    'Salário mensal',

    8500 + ((LEVEL - 1) * 25),

    ADD_MONTHS(DATE '2025-01-05', LEVEL - 1),

    'Receita mensal fictícia para demonstração'

FROM DUAL
CONNECT BY LEVEL <= 24;



-- ------------------------------------------------------------
-- 1.2 RECEITAS DE FREELANCE
-- Entrada variável
-- Alguns meses
-- ------------------------------------------------------------

INSERT INTO FATO_MOVIMENTO_FINANCEIRO
(
    SK_DATA,
    SK_CONTA,
    SK_CATEGORIA,
    SK_TIPO_MOVIMENTO,
    DESCRICAO,
    VALOR,
    DATA_VIGENCIA,
    OBSERVACAO
)
SELECT
    TO_NUMBER(TO_CHAR(DATA_MOVIMENTO, 'YYYYMMDD')),

    (
        SELECT SK_CONTA
        FROM DIM_CONTA
        WHERE NOME_CONTA = 'Conta Digital'
    ),

    (
        SELECT SK_CATEGORIA
        FROM DIM_CATEGORIA
        WHERE CATEGORIA = 'Receitas'
          AND SUBCATEGORIA = 'Freelance'
    ),

    (
        SELECT SK_TIPO_MOVIMENTO
        FROM DIM_TIPO_MOVIMENTO
        WHERE FLUXO = 'ENTRADA'
          AND TIPO = 'VARIAVEL'
    ),

    'Projeto freelance',

    VALOR,

    DATA_MOVIMENTO,

    'Receita eventual fictícia'

FROM
(
    SELECT DATE '2025-02-18' DATA_MOVIMENTO, 1200 VALOR FROM DUAL
    UNION ALL
    SELECT DATE '2025-05-20', 1800 FROM DUAL
    UNION ALL
    SELECT DATE '2025-08-15', 1450 FROM DUAL
    UNION ALL
    SELECT DATE '2025-11-22', 2200 FROM DUAL
    UNION ALL
    SELECT DATE '2026-02-16', 1650 FROM DUAL
    UNION ALL
    SELECT DATE '2026-05-18', 2400 FROM DUAL
    UNION ALL
    SELECT DATE '2026-08-21', 1900 FROM DUAL
    UNION ALL
    SELECT DATE '2026-11-19', 2600 FROM DUAL
);



-- ------------------------------------------------------------
-- 1.3 ALUGUEL
-- Saída fixa
-- ------------------------------------------------------------

INSERT INTO FATO_MOVIMENTO_FINANCEIRO
(
    SK_DATA,
    SK_CONTA,
    SK_CATEGORIA,
    SK_TIPO_MOVIMENTO,
    DESCRICAO,
    VALOR,
    DATA_VIGENCIA,
    OBSERVACAO
)
SELECT
    TO_NUMBER(
        TO_CHAR(
            ADD_MONTHS(DATE '2025-01-10', LEVEL - 1),
            'YYYYMMDD'
        )
    ),

    (
        SELECT SK_CONTA
        FROM DIM_CONTA
        WHERE NOME_CONTA = 'Conta Corrente Principal'
    ),

    (
        SELECT SK_CATEGORIA
        FROM DIM_CATEGORIA
        WHERE CATEGORIA = 'Moradia'
          AND SUBCATEGORIA = 'Aluguel'
    ),

    (
        SELECT SK_TIPO_MOVIMENTO
        FROM DIM_TIPO_MOVIMENTO
        WHERE FLUXO = 'SAIDA'
          AND TIPO = 'FIXA'
    ),

    'Aluguel residencial',

    CASE
        WHEN LEVEL <= 12 THEN 2200
        ELSE 2350
    END,

    ADD_MONTHS(DATE '2025-01-10', LEVEL - 1),

    'Despesa mensal fictícia'

FROM DUAL
CONNECT BY LEVEL <= 24;



-- ------------------------------------------------------------
-- 1.4 ENERGIA ELÉTRICA
-- Saída variável
-- ------------------------------------------------------------

INSERT INTO FATO_MOVIMENTO_FINANCEIRO
(
    SK_DATA,
    SK_CONTA,
    SK_CATEGORIA,
    SK_TIPO_MOVIMENTO,
    DESCRICAO,
    VALOR,
    DATA_VIGENCIA,
    OBSERVACAO
)
SELECT
    TO_NUMBER(
        TO_CHAR(
            ADD_MONTHS(DATE '2025-01-15', LEVEL - 1),
            'YYYYMMDD'
        )
    ),

    (
        SELECT SK_CONTA
        FROM DIM_CONTA
        WHERE NOME_CONTA = 'Conta Corrente Principal'
    ),

    (
        SELECT SK_CATEGORIA
        FROM DIM_CATEGORIA
        WHERE CATEGORIA = 'Moradia'
          AND SUBCATEGORIA = 'Energia Elétrica'
    ),

    (
        SELECT SK_TIPO_MOVIMENTO
        FROM DIM_TIPO_MOVIMENTO
        WHERE FLUXO = 'SAIDA'
          AND TIPO = 'VARIAVEL'
    ),

    'Conta de energia elétrica',

    180 + MOD(LEVEL * 37, 110),

    ADD_MONTHS(DATE '2025-01-15', LEVEL - 1),

    'Consumo mensal fictício'

FROM DUAL
CONNECT BY LEVEL <= 24;



-- ------------------------------------------------------------
-- 1.5 INTERNET
-- Saída fixa
-- ------------------------------------------------------------

INSERT INTO FATO_MOVIMENTO_FINANCEIRO
(
    SK_DATA,
    SK_CONTA,
    SK_CATEGORIA,
    SK_TIPO_MOVIMENTO,
    DESCRICAO,
    VALOR,
    DATA_VIGENCIA,
    OBSERVACAO
)
SELECT
    TO_NUMBER(
        TO_CHAR(
            ADD_MONTHS(DATE '2025-01-12', LEVEL - 1),
            'YYYYMMDD'
        )
    ),

    (
        SELECT SK_CONTA
        FROM DIM_CONTA
        WHERE NOME_CONTA = 'Conta Digital'
    ),

    (
        SELECT SK_CATEGORIA
        FROM DIM_CATEGORIA
        WHERE CATEGORIA = 'Moradia'
          AND SUBCATEGORIA = 'Internet'
    ),

    (
        SELECT SK_TIPO_MOVIMENTO
        FROM DIM_TIPO_MOVIMENTO
        WHERE FLUXO = 'SAIDA'
          AND TIPO = 'FIXA'
    ),

    'Internet residencial',

    CASE
        WHEN LEVEL <= 12 THEN 119.90
        ELSE 129.90
    END,

    ADD_MONTHS(DATE '2025-01-12', LEVEL - 1),

    'Assinatura mensal fictícia'

FROM DUAL
CONNECT BY LEVEL <= 24;



-- ------------------------------------------------------------
-- 1.6 SUPERMERCADO
-- Duas compras mensais
-- ------------------------------------------------------------

INSERT INTO FATO_MOVIMENTO_FINANCEIRO
(
    SK_DATA,
    SK_CONTA,
    SK_CATEGORIA,
    SK_TIPO_MOVIMENTO,
    DESCRICAO,
    VALOR,
    DATA_VIGENCIA,
    OBSERVACAO
)
SELECT
    TO_NUMBER(TO_CHAR(DATA_MOVIMENTO, 'YYYYMMDD')),

    (
        SELECT SK_CONTA
        FROM DIM_CONTA
        WHERE NOME_CONTA = 'Conta Corrente Principal'
    ),

    (
        SELECT SK_CATEGORIA
        FROM DIM_CATEGORIA
        WHERE CATEGORIA = 'Alimentação'
          AND SUBCATEGORIA = 'Supermercado'
    ),

    (
        SELECT SK_TIPO_MOVIMENTO
        FROM DIM_TIPO_MOVIMENTO
        WHERE FLUXO = 'SAIDA'
          AND TIPO = 'VARIAVEL'
    ),

    'Compra de supermercado',

    VALOR,

    DATA_MOVIMENTO,

    'Despesa alimentar fictícia'

FROM
(
    SELECT
        ADD_MONTHS(DATE '2025-01-08', LEVEL - 1) DATA_MOVIMENTO,
        480 + MOD(LEVEL * 53, 170) VALOR
    FROM DUAL
    CONNECT BY LEVEL <= 24

    UNION ALL

    SELECT
        ADD_MONTHS(DATE '2025-01-22', LEVEL - 1),
        320 + MOD(LEVEL * 41, 150)
    FROM DUAL
    CONNECT BY LEVEL <= 24
);



-- ============================================================
-- 2. FATO_CARTAO_CREDITO
-- ============================================================


-- ------------------------------------------------------------
-- 2.1 STREAMING
-- Compra integral mensal
-- ------------------------------------------------------------

INSERT INTO FATO_CARTAO_CREDITO
(
    SK_DATA_COMPRA,
    SK_DATA_VENCIMENTO,
    SK_CARTAO,
    SK_CATEGORIA,
    DESCRICAO,
    VALOR_TOTAL_COMPRA,
    VALOR_PARCELA,
    TIPO_COMPRA,
    NUMERO_PARCELA,
    TOTAL_PARCELAS
)
SELECT
    TO_NUMBER(
        TO_CHAR(
            ADD_MONTHS(DATE '2025-01-03', LEVEL - 1),
            'YYYYMMDD'
        )
    ),

    TO_NUMBER(
        TO_CHAR(
            ADD_MONTHS(DATE '2025-01-12', LEVEL - 1),
            'YYYYMMDD'
        )
    ),

    (
        SELECT SK_CARTAO
        FROM DIM_CARTAO
        WHERE NOME_CARTAO = 'Cartão Platinum'
    ),

    (
        SELECT SK_CATEGORIA
        FROM DIM_CATEGORIA
        WHERE CATEGORIA = 'Lazer'
          AND SUBCATEGORIA = 'Streaming'
    ),

    'Assinatura streaming',

    69.90,

    69.90,

    'INTEGRAL',

    1,

    1

FROM DUAL
CONNECT BY LEVEL <= 24;



-- ------------------------------------------------------------
-- 2.2 RESTAURANTES
-- Compra integral
-- ------------------------------------------------------------

INSERT INTO FATO_CARTAO_CREDITO
(
    SK_DATA_COMPRA,
    SK_DATA_VENCIMENTO,
    SK_CARTAO,
    SK_CATEGORIA,
    DESCRICAO,
    VALOR_TOTAL_COMPRA,
    VALOR_PARCELA,
    TIPO_COMPRA,
    NUMERO_PARCELA,
    TOTAL_PARCELAS
)
SELECT
    TO_NUMBER(
        TO_CHAR(
            ADD_MONTHS(DATE '2025-01-18', LEVEL - 1),
            'YYYYMMDD'
        )
    ),

    TO_NUMBER(
        TO_CHAR(
            ADD_MONTHS(DATE '2025-02-12', LEVEL - 1),
            'YYYYMMDD'
        )
    ),

    (
        SELECT SK_CARTAO
        FROM DIM_CARTAO
        WHERE NOME_CARTAO = 'Cartão Platinum'
    ),

    (
        SELECT SK_CATEGORIA
        FROM DIM_CATEGORIA
        WHERE CATEGORIA = 'Lazer'
          AND SUBCATEGORIA = 'Restaurante e Bar'
    ),

    'Restaurante',

    140 + MOD(LEVEL * 29, 190),

    140 + MOD(LEVEL * 29, 190),

    'INTEGRAL',

    1,

    1

FROM DUAL
CONNECT BY LEVEL <= 24;



-- ------------------------------------------------------------
-- 2.3 CURSO ONLINE PARCELADO
-- 6 parcelas
-- ------------------------------------------------------------

INSERT INTO FATO_CARTAO_CREDITO
(
    SK_DATA_COMPRA,
    SK_DATA_VENCIMENTO,
    SK_CARTAO,
    SK_CATEGORIA,
    DESCRICAO,
    VALOR_TOTAL_COMPRA,
    VALOR_PARCELA,
    TIPO_COMPRA,
    NUMERO_PARCELA,
    TOTAL_PARCELAS
)
SELECT
    20250315,

    TO_NUMBER(
        TO_CHAR(
            ADD_MONTHS(DATE '2025-04-17', LEVEL - 1),
            'YYYYMMDD'
        )
    ),

    (
        SELECT SK_CARTAO
        FROM DIM_CARTAO
        WHERE NOME_CARTAO = 'Cartão Gold'
    ),

    (
        SELECT SK_CATEGORIA
        FROM DIM_CATEGORIA
        WHERE CATEGORIA = 'Educação'
          AND SUBCATEGORIA = 'Cursos'
    ),

    'Curso de especialização em dados',

    1800,

    300,

    'PARCELADA',

    LEVEL,

    6

FROM DUAL
CONNECT BY LEVEL <= 6;



-- ------------------------------------------------------------
-- 2.4 NOTEBOOK PARCELADO
-- 10 parcelas
-- ------------------------------------------------------------

INSERT INTO FATO_CARTAO_CREDITO
(
    SK_DATA_COMPRA,
    SK_DATA_VENCIMENTO,
    SK_CARTAO,
    SK_CATEGORIA,
    DESCRICAO,
    VALOR_TOTAL_COMPRA,
    VALOR_PARCELA,
    TIPO_COMPRA,
    NUMERO_PARCELA,
    TOTAL_PARCELAS
)
SELECT
    20260210,

    TO_NUMBER(
        TO_CHAR(
            ADD_MONTHS(DATE '2026-03-27', LEVEL - 1),
            'YYYYMMDD'
        )
    ),

    (
        SELECT SK_CARTAO
        FROM DIM_CARTAO
        WHERE NOME_CARTAO = 'Cartão Black'
    ),

    (
        SELECT SK_CATEGORIA
        FROM DIM_CATEGORIA
        WHERE CATEGORIA = 'Educação'
          AND SUBCATEGORIA = 'Cursos'
    ),

    'Notebook para estudos e projetos',

    6500,

    650,

    'PARCELADA',

    LEVEL,

    10

FROM DUAL
CONNECT BY LEVEL <= 10;



-- ============================================================
-- 3. FATO_EMPRESTIMO
-- ============================================================


-- ------------------------------------------------------------
-- 3.1 EMPRÉSTIMO PESSOAL
-- ------------------------------------------------------------

INSERT INTO FATO_EMPRESTIMO
(
    SK_DATA_CONTRATACAO,
    SK_CONTA,
    DESCRICAO,
    VALOR_CONTRATADO,
    VALOR_PARCELA,
    QUANTIDADE_PARCELAS,
    PARCELAS_PAGAS,
    TAXA_JUROS_MENSAL,
    TAXA_JUROS_ANUAL,
    STATUS
)
SELECT
    20250120,

    SK_CONTA,

    'Empréstimo pessoal',

    12000,

    1185.40,

    12,

    12,

    1.75,

    23.14,

    'QUITADO'

FROM DIM_CONTA
WHERE NOME_CONTA = 'Conta Corrente Principal';



-- ------------------------------------------------------------
-- 3.2 FINANCIAMENTO DE EQUIPAMENTO
-- ------------------------------------------------------------

INSERT INTO FATO_EMPRESTIMO
(
    SK_DATA_CONTRATACAO,
    SK_CONTA,
    DESCRICAO,
    VALOR_CONTRATADO,
    VALOR_PARCELA,
    QUANTIDADE_PARCELAS,
    PARCELAS_PAGAS,
    TAXA_JUROS_MENSAL,
    TAXA_JUROS_ANUAL,
    STATUS
)
SELECT
    20260408,

    SK_CONTA,

    'Financiamento de equipamento',

    18000,

    985.70,

    24,

    4,

    1.95,

    26.08,

    'ATIVO'

FROM DIM_CONTA
WHERE NOME_CONTA = 'Conta Digital';



COMMIT;
