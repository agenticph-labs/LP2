# LP2: PH Market Intelligence

[![Status: Live](https://img.shields.io/badge/status-live-22c55e.svg)](https://github.com/agenticph-labs/LP2)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Tests](https://github.com/agenticph-labs/LP2/actions/workflows/test.yml/badge.svg)](https://github.com/agenticph-labs/LP2/actions/workflows/test.yml)
[![Security](https://github.com/agenticph-labs/LP2/actions/workflows/security.yml/badge.svg)](https://github.com/agenticph-labs/LP2/actions/workflows/security.yml)
[![Python 3.10+](https://img.shields.io/badge/python-3.10%2B-blue.svg)](https://www.python.org/downloads/)
[![Streamlit App](https://static.streamlit.io/badges/streamlit_badge_black_white.svg)](https://LP2.streamlit.app)

An interactive market intelligence dashboard analyzing the Philippine coffee shop industry. Built with Python (pandas, plotly, Streamlit) as part of the [AgenticPH Labs](https://agenticph-labs.github.io/portfolio) portfolio.

> **Live demo:** [LP2.streamlit.app](https://LP2.streamlit.app)

---

## Table of Contents

- [PH Use Case](#ph-use-case)
- [Dashboard Features](#dashboard-features)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Key Findings](#key-findings)
- [Methodology](#methodology)
- [Deployment](#deployment)
- [Contributing](#contributing)
- [License](#license)

---

## PH Use Case

### Why This Matters for Philippine Businesses

The Philippine coffee shop market is projected to grow from **$1.82B (2025) to $2.30B (2028)** at a **7.3% CAGR** — one of Southeast Asia's fastest-growing food-service segments. This dashboard turns raw market data into actionable intelligence for:

| Stakeholder | How They Use This |
|-------------|-------------------|
| **Coffee Shop Owners / Franchisees** | Competitive pricing analysis, regional saturation maps, menu positioning strategy |
| **Investors / VCs** | Market sizing, growth rate comparison, franchise opportunity assessment |
| **Suppliers & Distributors** | Regional demand mapping, import dependency insights (94.3% imported), growth corridor identification |
| **Real Estate Professionals** | Geographic density heatmaps for site selection, underserved city identification |
| **Business Students / Researchers** | Methodology reference, market trend analysis, data pipeline blueprint |

### Key PH Market Insights

- **Metro Manila** dominates but is nearing saturation — Visayas (21%) and Mindanao (16%) are underserved growth corridors
- **Value segment** (Pickup Coffee, Zus Coffee) is growing at **100%+ YoY** vs. premium segment at ~10-15%
- **Franchising** drives expansion — 6 of 8 major chains offer franchise models
- **Import dependency** (94.3%) presents opportunity for local roasters and suppliers
- **Per-capita consumption** is 2.5 cups/day among 80% of Filipino adults — extremely high engagement

Use this dashboard to identify market gaps, validate expansion strategies, and benchmark against competitors.

---

## Dashboard Features

| Page | Description |
|------|-------------|
| **Market Overview** | Macro trends: market size, café sales, consumer behavior KPIs |
| **Competitor Analysis** | Store counts, growth rates, competitive landscape maps |
| **Geographic Distribution** | Regional presence, city density, supply-side analysis |
| **Pricing Analysis** | Menu price comparison, price ladders, value gap analysis |
| **Key Insights** | 13 data-driven business observations + methodology |

---

## Project Structure

```
LP2/
├── .github/workflows/
│   ├── test.yml              # CI — ruff lint + import/smoke tests
│   └── security.yml           # bandit + safety scans
├── .streamlit/
│   └── config.toml           # Streamlit Cloud configuration
├── data/
│   ├── raw/                  # Raw data generation script
│   │   └── coffee_shop_data.py
│   └── processed/            # Cleaned CSVs, summaries, insights
│       ├── market_overview_clean.csv
│       ├── competitors_clean.csv
│       ├── pricing_data_clean.csv
│       ├── geographic_distribution_clean.csv
│       ├── pricing_summary.csv
│       ├── competitor_summary.json
│       └── business_insights.md
├── scripts/
│   └── start.bat             # Windows startup script (venv + install + launch)
├── viz/                      # 13 interactive Plotly HTML charts
├── pipeline.py               # Data pipeline (clean → transform → analyze → export)
├── dashboard.py              # Streamlit dashboard application
├── app.py                    # Convenience entry point (same as dashboard.py)
├── requirements.txt
└── README.md
```

---

## Getting Started

### Prerequisites

- Python 3.10+
- pip or uv

### Installation

```bash
# Clone the repository
git clone https://github.com/agenticph-labs/LP2.git
cd LP2

# Create virtual environment and install dependencies
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

# Run the data pipeline
python3 pipeline.py

# Launch the dashboard
streamlit run dashboard.py
```

### Windows Quick Start

Double-click `scripts/start.bat` — it handles venv creation, dependency installation, dashboard launch, and opens your browser automatically.

---

## Key Findings

| Finding | Detail |
|---------|--------|
| **Market Size** | PH coffee market: **$1.82B (2025)**, projected **$2.30B (2028)** — **7.3% CAGR** |
| **Market Leader** | **Starbucks** leads premium with **520 stores**; **Pickup Coffee** leads value with **500+** |
| **Fastest Growth** | **Zus Coffee**: **100% YoY** store growth (120 stores, targeting 200) |
| **Price Gap** | Starbucks (avg ₱183) is **2.6x** Zus Coffee (avg ₱70); a Grande Latte costs **2.5x** a Pickup Latte |
| **Import Dependency** | **94.3%** of coffee is imported — only 22,000 tons produced vs 365,000 tons imported |
| **Regional Concentration** | **Luzon (incl. NCR)** captures **63%** of revenue; Visayas (21%) and Mindanao (16%) underserved |
| **Consumer Habits** | **80%** of Filipino adults drink **2.5 cups/day**; **90%** of households stock coffee |
| **Franchising Boom** | **6 of 8** major chains offer franchising, driving rapid geographic expansion |

---

## Methodology

1. **Data Collection** — Public data from Euromonitor, USDA, Statista, company filings, news reports, and store locator websites (2024–2026)
2. **Data Pipeline** — pandas-based cleaning, transformation, derived metrics (YoY growth, CAGR, import dependency)
3. **Analysis** — Competitive positioning, price ladders, geographic density, market sizing
4. **Visualization** — 13 interactive Plotly charts
5. **Dashboard** — Multi-page Streamlit dashboard

---

## Deployment

### Streamlit Cloud (Recommended)

This app is deployed on Streamlit Community Cloud:

1. Fork/clone the repository
2. Go to [share.streamlit.io](https://share.streamlit.io)
3. Connect your GitHub account
4. Select this repository
5. Set **Main file path** to `dashboard.py`
6. Deploy — the `.streamlit/config.toml` is pre-configured

The deployed app is available at: **[LP2.streamlit.app](https://LP2.streamlit.app)**

---

## Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feat/my-feature`
3. Install dev dependencies: `pip install -r requirements.txt && pip install ruff bandit`
4. Lint with ruff: `ruff check *.py`
5. Run the pipeline: `python pipeline.py`
6. Push and open a pull request

---

## License

MIT — See [LICENSE](LICENSE)

---

*Portfolio Project 2 — [AgenticPH](https://agenticph-labs.github.io/portfolio)*  
*Built by [AgenticPH](https://agenticph-labs.github.io/portfolio) — market intelligence tools for Philippine business decisions*
