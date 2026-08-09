-- ============================================================
-- Projeto: Power BI Finance Dashboard
-- Arquivo: 01_create_schema.sql
-- Banco: Oracle Autonomous AI Database
-- Schema: FINANCE
-- ============================================================

-- 1. Criação do usuário/schema
CREATE USER FINANCE
IDENTIFIED BY "Portfolio123";

-- 2. Permite conexão ao banco
GRANT CREATE SESSION TO FINANCE;

-- 3. Permissões para criação de objetos
GRANT CREATE TABLE TO FINANCE;
GRANT CREATE VIEW TO FINANCE;
GRANT CREATE SEQUENCE TO FINANCE;
GRANT CREATE PROCEDURE TO FINANCE;
GRANT CREATE TRIGGER TO FINANCE;
GRANT CREATE SYNONYM TO FINANCE;

-- 4. Quota para criação de objetos no tablespace DATA
ALTER USER FINANCE
QUOTA 500M ON DATA;
