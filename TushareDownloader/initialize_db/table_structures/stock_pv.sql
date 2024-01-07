-- stock price and volume data
-- stock_daily
-- stock_weekly
-- stock_monthly

-- Create stock_daily
DROP TABLE IF EXISTS stock_daily;
CREATE TABLE IF NOT EXISTS stock_daily(
    id INT PRIMARY KEY auto_increment,
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
    delete_flag BOOLEAN NOT NULL DEFAULT FALSE
);


-- Create stock_weekly
DROP TABLE IF EXISTS stock_weekly;
CREATE TABLE IF NOT EXISTS stock_weekly(
    id INT PRIMARY KEY auto_increment,
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
    delete_flag BOOLEAN NOT NULL DEFAULT FALSE
);


-- Create stock_monthly
DROP TABLE IF EXISTS stock_monthly;
CREATE TABLE IF NOT EXISTS stock_monthly(
    id INT PRIMARY KEY auto_increment,
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
    delete_flag BOOLEAN NOT NULL DEFAULT FALSE
);
