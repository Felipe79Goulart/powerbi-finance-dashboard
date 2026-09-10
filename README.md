# Power BI Finance Dashboard

[![Language](https://img.shields.io/badge/language-DAX%20%7C%20SQL-blue)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Status](https://img.shields.io/badge/status-completed-brightgreen)]()

> 🇧🇷 Versão em português disponível em [LEIAME.md](LEIAME.md)

## 📊 Overview

An end-to-end **personal finance dashboard** built in Power BI, covering data modeling in SQL, DAX measure creation, and interactive report design. The project simulates a real-world personal finance control system, tracking checking accounts, digital accounts, investment accounts, wallets, credit cards, and loans.

The dashboard is fully localized in **two languages**: Portuguese (Brazil) — the original version — and English (United States), demonstrating both technical data skills and attention to internationalization (i18n) best practices for BI products.

## 🗂️ Repository Structure

```
powerbi-finance-dashboard/
├── 01_sql/                  # SQL scripts for source data modeling
├── 02_powerbi/              # Power BI (.pbix) report files
├── 03_docs/                 # Project documentation
├── 04_images/               # Dashboard screenshots (PT-BR and EN-US)
├── 05_powerbi_service/      # Notes on Power BI Service publishing & links
├── LICENSE                  # MIT License
├── README.md                # Project documentation (English)
└── LEIAME.md                # Project documentation (Portuguese - Brazil)
```

## 📄 Dashboard Pages

| Page (EN-US) | Página (PT-BR) | Description |
|---|---|---|
| Cover | Capa | Landing page with navigation to all report sections |
| General | Geral | Consolidated overview of accounts, balances, and financial health |
| Financial Flow | Fluxo Financeiro | Income vs. expenses, cash flow trends, and category breakdowns |
| Credit Cards | Cartões de Crédito | Bill tracking, credit limit usage, installment purchases, and future commitments |
| Loans | Empréstimos | Loan contracts, payoff progress, interest cost, and installment schedules |

## 🔑 Key Features

- **Multi-account tracking**: Main Checking Account, Digital Account, Investment Account, and Wallet.
- **Custom DAX measures** for dynamic KPI storytelling, including conditional status labels (e.g., *Good*, *Warning*, *High*) and natural-language insights (e.g., *"44.4% of installments paid off"*).
- **Credit card analysis**: bill evolution by due date, full payment vs. installment purchases, and future limit commitment.
- **Loan management**: payoff rate, total interest cost, contracted amount vs. balance due, and detailed amortization table.
- **Bilingual localization**: full translation of visuals, tooltips, column headers, and DAX-driven text between Portuguese (Brazil) and English (United States).

## 🛠️ Tech Stack

- **Power BI Desktop** — data modeling, visuals, and report design
- **DAX** — calculated measures and dynamic KPI logic
- **SQL** — source data preparation and transformation
- **Power Query** — data cleaning and column standardization
- **Power BI Service** — report publishing and sharing

## 🚀 How to Use

1. Clone or download this repository.
2. Open the `.pbix` file located in `02_powerbi/` using Power BI Desktop.
3. Review the SQL scripts in `01_sql/` to understand the source data structure.
4. Check `04_images/` for full-page screenshots of both language versions.
5. See `05_powerbi_service/` for notes on how the report is published and shared via Power BI Service.

## 🌐 Localization Notes

This project was originally built in Portuguese (Brazil) and fully translated into English (United States), including:

- Page names and navigation labels
- Visual titles, axis labels, and legends
- Table column headers and row values
- DAX measure names and dynamically generated insight text (with locale-aware number formatting)

## 📌 Roadmap / Possible Improvements

- [ ] Add a published Power BI Service live link (if made public)
- [ ] Add a GIF or short video walkthrough of the report
- [ ] Publish a tagged release (v1.0) marking the finalized bilingual version
- [ ] Add unit-style validation notes for DAX measures

## 👤 Author

**Felipe Goulart**
GitHub: [@Felipe79Goulart](https://github.com/Felipe79Goulart)

## 📄 License

This project is licensed under the [MIT License](LICENSE).
