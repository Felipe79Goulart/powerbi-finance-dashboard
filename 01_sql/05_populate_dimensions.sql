-- ============================================================
-- Projeto : Power BI Finance Dashboard
-- Arquivo : 05_populate_dimensions.sql
-- Schema  : FINANCE
-- Objetivo: Popular dimensões auxiliares
-- ============================================================


-- ============================================================
-- 1. DIM_TIPO_MOVIMENTO
-- ============================================================

INSERT INTO DIM_TIPO_MOVIMENTO
(
    FLUXO,
    TIPO,
    DESCRICAO
)
VALUES
(
    'ENTRADA',
    'FIXA',
    'Receita fixa'
);

INSERT INTO DIM_TIPO_MOVIMENTO
(
    FLUXO,
    TIPO,
    DESCRICAO
)
VALUES
(
    'ENTRADA',
    'VARIAVEL',
    'Receita variável'
);

INSERT INTO DIM_TIPO_MOVIMENTO
(
    FLUXO,
    TIPO,
    DESCRICAO
)
VALUES
(
    'SAIDA',
    'FIXA',
    'Despesa fixa'
);

INSERT INTO DIM_TIPO_MOVIMENTO
(
    FLUXO,
    TIPO,
    DESCRICAO
)
VALUES
(
    'SAIDA',
    'VARIAVEL',
    'Despesa variável'
);


-- ============================================================
-- 2. DIM_CATEGORIA
-- ============================================================

INSERT INTO DIM_CATEGORIA
(
    CATEGORIA,
    SUBCATEGORIA,
    GRUPO
)
VALUES
(
    'Receitas',
    'Salário',
    'Renda'
);

INSERT INTO DIM_CATEGORIA
(
    CATEGORIA,
    SUBCATEGORIA,
    GRUPO
)
VALUES
(
    'Receitas',
    'Freelance',
    'Renda'
);

INSERT INTO DIM_CATEGORIA
(
    CATEGORIA,
    SUBCATEGORIA,
    GRUPO
)
VALUES
(
    'Moradia',
    'Aluguel',
    'Despesas Essenciais'
);

INSERT INTO DIM_CATEGORIA
(
    CATEGORIA,
    SUBCATEGORIA,
    GRUPO
)
VALUES
(
    'Moradia',
    'Energia Elétrica',
    'Despesas Essenciais'
);

INSERT INTO DIM_CATEGORIA
(
    CATEGORIA,
    SUBCATEGORIA,
    GRUPO
)
VALUES
(
    'Moradia',
    'Internet',
    'Despesas Essenciais'
);

INSERT INTO DIM_CATEGORIA
(
    CATEGORIA,
    SUBCATEGORIA,
    GRUPO
)
VALUES
(
    'Alimentação',
    'Supermercado',
    'Despesas Variáveis'
);

INSERT INTO DIM_CATEGORIA
(
    CATEGORIA,
    SUBCATEGORIA,
    GRUPO
)
VALUES
(
    'Alimentação',
    'Restaurante',
    'Despesas Variáveis'
);

INSERT INTO DIM_CATEGORIA
(
    CATEGORIA,
    SUBCATEGORIA,
    GRUPO
)
VALUES
(
    'Transporte',
    'Combustível',
    'Despesas Variáveis'
);

INSERT INTO DIM_CATEGORIA
(
    CATEGORIA,
    SUBCATEGORIA,
    GRUPO
)
VALUES
(
    'Transporte',
    'Aplicativo de Transporte',
    'Despesas Variáveis'
);

INSERT INTO DIM_CATEGORIA
(
    CATEGORIA,
    SUBCATEGORIA,
    GRUPO
)
VALUES
(
    'Saúde',
    'Farmácia',
    'Despesas Variáveis'
);

INSERT INTO DIM_CATEGORIA
(
    CATEGORIA,
    SUBCATEGORIA,
    GRUPO
)
VALUES
(
    'Lazer',
    'Streaming',
    'Despesas Variáveis'
);

INSERT INTO DIM_CATEGORIA
(
    CATEGORIA,
    SUBCATEGORIA,
    GRUPO
)
VALUES
(
    'Lazer',
    'Restaurante e Bar',
    'Despesas Variáveis'
);

INSERT INTO DIM_CATEGORIA
(
    CATEGORIA,
    SUBCATEGORIA,
    GRUPO
)
VALUES
(
    'Educação',
    'Cursos',
    'Despesas Pessoais'
);

INSERT INTO DIM_CATEGORIA
(
    CATEGORIA,
    SUBCATEGORIA,
    GRUPO
)
VALUES
(
    'Financeiro',
    'Tarifas Bancárias',
    'Despesas Financeiras'
);

INSERT INTO DIM_CATEGORIA
(
    CATEGORIA,
    SUBCATEGORIA,
    GRUPO
)
VALUES
(
    'Financeiro',
    'Juros',
    'Despesas Financeiras'
);


-- ============================================================
-- 3. DIM_CONTA
-- ============================================================

INSERT INTO DIM_CONTA
(
    NOME_CONTA,
    INSTITUICAO,
    TIPO_CONTA
)
VALUES
(
    'Conta Corrente Principal',
    'Banco Alfa',
    'CONTA CORRENTE'
);

INSERT INTO DIM_CONTA
(
    NOME_CONTA,
    INSTITUICAO,
    TIPO_CONTA
)
VALUES
(
    'Conta Digital',
    'Banco Beta',
    'CONTA DIGITAL'
);

INSERT INTO DIM_CONTA
(
    NOME_CONTA,
    INSTITUICAO,
    TIPO_CONTA
)
VALUES
(
    'Conta Investimentos',
    'Corretora Gamma',
    'INVESTIMENTO'
);

INSERT INTO DIM_CONTA
(
    NOME_CONTA,
    INSTITUICAO,
    TIPO_CONTA
)
VALUES
(
    'Carteira',
    'Dinheiro',
    'CARTEIRA'
);


-- ============================================================
-- 4. DIM_CARTAO
-- ============================================================

INSERT INTO DIM_CARTAO
(
    NOME_CARTAO,
    BANDEIRA,
    EMISSOR,
    DIA_FECHAMENTO,
    DIA_VENCIMENTO,
    MELHOR_DIA_COMPRA,
    LIMITE_COMPRA,
    LIMITE_SAQUE
)
VALUES
(
    'Cartão Platinum',
    'VISA',
    'Banco Alfa',
    5,
    12,
    6,
    12000.00,
    2000.00
);

INSERT INTO DIM_CARTAO
(
    NOME_CARTAO,
    BANDEIRA,
    EMISSOR,
    DIA_FECHAMENTO,
    DIA_VENCIMENTO,
    MELHOR_DIA_COMPRA,
    LIMITE_COMPRA,
    LIMITE_SAQUE
)
VALUES
(
    'Cartão Gold',
    'MASTERCARD',
    'Banco Beta',
    10,
    17,
    11,
    8000.00,
    1500.00
);

INSERT INTO DIM_CARTAO
(
    NOME_CARTAO,
    BANDEIRA,
    EMISSOR,
    DIA_FECHAMENTO,
    DIA_VENCIMENTO,
    MELHOR_DIA_COMPRA,
    LIMITE_COMPRA,
    LIMITE_SAQUE
)
VALUES
(
    'Cartão Black',
    'VISA',
    'Banco Gamma',
    20,
    27,
    21,
    20000.00,
    3000.00
);

INSERT INTO DIM_CARTAO
(
    NOME_CARTAO,
    BANDEIRA,
    EMISSOR,
    DIA_FECHAMENTO,
    DIA_VENCIMENTO,
    MELHOR_DIA_COMPRA,
    LIMITE_COMPRA,
    LIMITE_SAQUE
)
VALUES
(
    'Cartão Loja',
    'PRIVATE LABEL',
    'Loja Delta',
    15,
    22,
    16,
    3000.00,
    0.00
);


COMMIT;
