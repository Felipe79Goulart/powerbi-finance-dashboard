# Dashboard Financeiro em Power BI

[![Language](https://img.shields.io/badge/linguagem-DAX%20%7C%20SQL-blue)]()
[![License: MIT](https://img.shields.io/badge/Licença-MIT-yellow.svg)](LICENSE)
[![Status](https://img.shields.io/badge/status-concluído-brightgreen)]()

> 🇺🇸 English version available at [README.md](README.md)

## 📊 Visão Geral

Um **dashboard financeiro pessoal** completo, desenvolvido em Power BI, abrangendo modelagem de dados em SQL, criação de medidas DAX e design de relatórios interativos. O projeto simula um sistema real de controle financeiro pessoal, acompanhando conta corrente principal, conta digital, conta de investimentos, carteira, cartões de crédito e empréstimos.

O dashboard está totalmente localizado em **dois idiomas**: Português (Brasil) — versão original — e Inglês (Estados Unidos), demonstrando tanto habilidades técnicas em dados quanto atenção a boas práticas de internacionalização (i18n) em produtos de BI.

## 🗂️ Estrutura do Repositório

```
powerbi-finance-dashboard/
├── 01_sql/                  # Scripts SQL para modelagem dos dados de origem
├── 02_powerbi/              # Arquivos do relatório Power BI (.pbix)
├── 03_docs/                 # Documentação do projeto
├── 04_images/               # Capturas de tela do dashboard (PT-BR e EN-US)
├── 05_powerbi_service/      # Notas sobre publicação e links no Power BI Service
├── LICENSE                  # Licença MIT
├── README.md                # Documentação do projeto (Inglês)
└── LEIAME.md                # Documentação do projeto (Português - Brasil)
```

## 📄 Páginas do Dashboard

| Página (PT-BR) | Page (EN-US) | Descrição |
|---|---|---|
| Capa | Cover | Página inicial com navegação para todas as seções do relatório |
| Geral | General | Visão consolidada de contas, saldos e saúde financeira |
| Fluxo Financeiro | Financial Flow | Receitas vs. despesas, tendências de fluxo de caixa e detalhamento por categoria |
| Cartões de Crédito | Credit Cards | Acompanhamento de faturas, uso do limite, compras parceladas e compromissos futuros |
| Empréstimos | Loans | Contratos de empréstimo, progresso de quitação, custo de juros e cronograma de parcelas |

## 🔑 Principais Funcionalidades

- **Acompanhamento multi-conta**: Conta Corrente Principal, Conta Digital, Conta Investimentos e Carteira.
- **Medidas DAX personalizadas** para storytelling dinâmico de KPIs, incluindo rótulos de status condicionais (ex.: *Bom*, *Atenção*, *Elevado*) e insights em linguagem natural (ex.: *"44,4% das parcelas quitadas"*).
- **Análise de cartão de crédito**: evolução da fatura por data de vencimento, compras à vista vs. parceladas e comprometimento futuro do limite.
- **Gestão de empréstimos**: taxa de quitação, custo total de juros, valor contratado vs. saldo a pagar e tabela detalhada de amortização.
- **Localização bilíngue**: tradução completa de visuais, tooltips, cabeçalhos de colunas e textos gerados por DAX entre Português (Brasil) e Inglês (Estados Unidos).

## 🛠️ Tecnologias Utilizadas

- **Power BI Desktop** — modelagem de dados, visuais e design de relatório
- **DAX** — medidas calculadas e lógica dinâmica de KPIs
- **SQL** — preparação e transformação dos dados de origem
- **Power Query** — limpeza de dados e padronização de colunas
- **Power BI Service** — publicação e compartilhamento do relatório

## 🚀 Como Usar

1. Clone ou baixe este repositório.
2. Abra o arquivo `.pbix` localizado em `02_powerbi/` usando o Power BI Desktop.
3. Consulte os scripts SQL em `01_sql/` para entender a estrutura dos dados de origem.
4. Veja `04_images/` para capturas de tela completas das páginas em ambos os idiomas.
5. Confira `05_powerbi_service/` para notas sobre como o relatório é publicado e compartilhado via Power BI Service.

## 🌐 Notas sobre Localização

Este projeto foi originalmente construído em Português (Brasil) e totalmente traduzido para Inglês (Estados Unidos), incluindo:

- Nomes de páginas e rótulos de navegação
- Títulos de visuais, rótulos de eixos e legendas
- Cabeçalhos de colunas e valores de linhas em tabelas
- Nomes de medidas DAX e textos de insight gerados dinamicamente (com formatação numérica sensível ao idioma)

## 📌 Próximos Passos / Possíveis Melhorias

- [ ] Adicionar link de publicação ativo no Power BI Service (caso seja tornado público)
- [ ] Adicionar um GIF ou vídeo curto demonstrando o relatório
- [ ] Publicar uma release marcada (v1.0) sinalizando a versão bilíngue finalizada
- [ ] Adicionar notas de validação para as medidas DAX

## 👤 Autor

**Felipe Goulart**
GitHub: [@Felipe79Goulart](https://github.com/Felipe79Goulart)

## 📄 Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE).
