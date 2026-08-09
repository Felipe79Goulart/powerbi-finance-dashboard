-- ============================================================
-- Projeto : Power BI Finance Dashboard
-- Arquivo : 07_create_views.sql
-- Schema  : FINANCE
-- Objetivo: Criar views analíticas para consumo no Power BI
-- ============================================================


-- ============================================================
-- 1. VW_MOVIMENTO_FINANCEIRO
-- ============================================================

CREATE OR REPLACE VIEW VW_MOVIMENTO_FINANCEIRO AS
SELECT
    F.SK_MOVIMENTO,

    C.SK_DATA,
    C.DATA,
    C.ANO,
    C.MES,
    C.NOME_MES,
    C.ANO_MES,
    C.TRIMESTRE,
    C.NOME_TRIMESTRE,
    C.DIA,
    C.DIA_SEMANA,
    C.NOME_DIA_SEMANA,
    C.SEMANA_ANO,
    C.EH_FIM_SEMANA,
    C.EH_DIA_UTIL,

    CO.SK_CONTA,
    CO.NOME_CONTA,
    CO.INSTITUICAO,
    CO.TIPO_CONTA,

    CAT.SK_CATEGORIA,
    CAT.CATEGORIA,
    CAT.SUBCATEGORIA,
    CAT.GRUPO,

    TM.SK_TIPO_MOVIMENTO,
    TM.FLUXO,
    TM.TIPO,
    TM.DESCRICAO AS DESCRICAO_TIPO_MOVIMENTO,

    F.DESCRICAO AS DESCRICAO_MOVIMENTO,
    F.VALOR,
    F.DATA_VIGENCIA,
    F.OBSERVACAO,
    F.DATA_CARGA

FROM FATO_MOVIMENTO_FINANCEIRO F

INNER JOIN DIM_CALENDARIO C
    ON C.SK_DATA = F.SK_DATA

LEFT JOIN DIM_CONTA CO
    ON CO.SK_CONTA = F.SK_CONTA

LEFT JOIN DIM_CATEGORIA CAT
    ON CAT.SK_CATEGORIA = F.SK_CATEGORIA

INNER JOIN DIM_TIPO_MOVIMENTO TM
    ON TM.SK_TIPO_MOVIMENTO = F.SK_TIPO_MOVIMENTO;
