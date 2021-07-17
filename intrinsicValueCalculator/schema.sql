  DROP TABLE IF EXISTS company;
  DROP TABLE IF EXISTS report;
  DROP TABLE IF EXISTS projection;

  CREATE TABLE company (
    name VARCHAR(255) UNIQUE NOT NULL,
    ticker VARCHAR(8) PRIMARY KEY,
    sector VARCHAR(255),
    industy VARCHAR(255),
    share_outstanding INTEGER NOT NULL,
    market_cap INTEGER,
    beta FLOAT(4,2) NOT NULL,
    dividend_yeild FLOAT(11,10) NOT NULL,
    risk_free_rate FLOAT(7,6) NOT NULL
    capm FLOAT(7,6) NOT NULL
    net_profit_margin FLOAT(6,2) NOT NULL,
    net_income_to_fcf FLOAT(6,2) NOT NULL,
    fair_value FLOAT(9,2)
  );

  CREATE TABLE report (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ticker VARCHAR(8) NOT NULL,
    publish_date DATE NOT NULL,
    cash_from_operations INTEGER NOT NULL,
    capex INTEGER NOT NULL,
    fcf INTEGER NOT NULL,
    revenue INTEGER NOT NULL,
    net_income INTEGER NOT NULL,
    net_profit_margin FLOAT(6,2) NOT NULL,
    net_income_to_fcf FLOAT(6,2) NOT NULL,
    cash INTEGER NOT NULL,
    short_term_investments INTEGER NOT NULL,
    short_long_term_debt INTEGER NOT NULL,
    long_term_debt INTEGER NOT NULL,
    net_borrowings INTEGER NOT NULL,
    FOREIGN KEY (ticker) REFERENCES company (ticker)
  );

  CREATE TABLE projection (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ticker VARCHAR(8) NOT NULL,
    revenue INTEGER NOT NULL,
    FOREIGN KEY (ticker) REFERENCES company (ticker)
  );
