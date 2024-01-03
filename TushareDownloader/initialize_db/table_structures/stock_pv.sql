-- stock price and volume data
-- stock_daily
-- stock_weekly
-- stock_monthly

-- Create stock_daily
CREATE TABLE IF NOT EXISTS stock_daily(
    ts_code VARCHAR(10) NOT NULL,
    trade_date DATE NOT NULL,
    open FLOAT,
    high FLOAT,
    low FLOAT,
    close FLOAT,
    pre_close FLOAT,
    `change` FLOAT,
    pct_chg FLOAT,
    vol FLOAT,
    amount FLOAT,
    update_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    delete_flag BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY(ts_code, trade_date)
);


-- Create stock_weekly
CREATE TABLE IF NOT EXISTS stock_weekly(
    ts_code VARCHAR(10) NOT NULL,
    trade_date DATE NOT NULL,
    open FLOAT,
    high FLOAT,
    low FLOAT,
    close FLOAT,
    pre_close FLOAT,
    `change` FLOAT,
    pct_chg FLOAT,
    vol FLOAT,
    amount FLOAT,
    update_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    delete_flag BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY(ts_code, trade_date)
);


-- Create stock_monthly
CREATE TABLE IF NOT EXISTS stock_monthly(
    ts_code VARCHAR(10) NOT NULL,
    trade_date DATE NOT NULL,
    open FLOAT,
    high FLOAT,
    low FLOAT,
    close FLOAT,
    pre_close FLOAT,
    `change` FLOAT,
    pct_chg FLOAT,
    vol FLOAT,
    amount FLOAT,
    update_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    delete_flag BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY(ts_code, trade_date)
);
