-- ============================================================
-- Projeto : Power BI Finance Dashboard
-- Arquivo : 08_create_indexes.sql
-- Schema  : FINANCE
-- Objetivo: Índices auxiliares para consultas analíticas
-- ============================================================


-- ============================================================
-- FATO_MOVIMENTO_FINANCEIRO
-- ============================================================

CREATE INDEX IX_MOV_DATA
    ON FATO_MOVIMENTO_FINANCEIRO (SK_DATA);

CREATE INDEX IX_MOV_CONTA
    ON FATO_MOVIMENTO_FINANCEIRO (SK_CONTA);

CREATE INDEX IX_MOV_CATEGORIA
    ON FATO_MOVIMENTO_FINANCEIRO (SK_CATEGORIA);

CREATE INDEX IX_MOV_TIPO
    ON FATO_MOVIMENTO_FINANCEIRO (SK_TIPO_MOVIMENTO);


-- ============================================================
-- FATO_CARTAO_CREDITO
-- ============================================================

CREATE INDEX IX_CARTAO_DATA_COMPRA
    ON FATO_CARTAO_CREDITO (SK_DATA_COMPRA);

CREATE INDEX IX_CARTAO_DATA_VENC
    ON FATO_CARTAO_CREDITO (SK_DATA_VENCIMENTO);

CREATE INDEX IX_CARTAO_CARTAO
    ON FATO_CARTAO_CREDITO (SK_CARTAO);

CREATE INDEX IX_CARTAO_CATEGORIA
    ON FATO_CARTAO_CREDITO (SK_CATEGORIA);


-- ============================================================
-- FATO_EMPRESTIMO
-- ============================================================

CREATE INDEX IX_EMP_DATA
    ON FATO_EMPRESTIMO (SK_DATA_CONTRATACAO);

CREATE INDEX IX_EMP_CONTA
    ON FATO_EMPRESTIMO (SK_CONTA);
