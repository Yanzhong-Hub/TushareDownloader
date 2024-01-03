-- Stock basic
-- stock_list
-- trading_calendar

-- Create stock_list
CREATE TABLE IF NOT EXISTS stock_list (
    ts_code VARCHAR(10) NOT NULL,
    symbol VARCHAR(10) NOT NULL,
    name VARCHAR(20) NOT NULL,
    area VARCHAR(10) NOT NULL,
    industry VARCHAR(20) NOT NULL,
    market VARCHAR(10) NOT NULL,
    list_date DATE NOT NULL,
    fullname VARCHAR(20) NOT NULL,
    enname VARCHAR(100) NOT NULL,
    cnspell VARCHAR(100) NOT NULL,
    exchang VARCHAR(10) NOT NULL,
    curr_type VARCHAR(10) NOT NULL,
    list_status VARCHAR(10) NOT NULL,
    delist_date DATE NOT NULL,
    is_hs VARCHAR(10) NOT NULL,
    act_name VARCHAR(50) NOT NULL,
    act_ent_type VARCHAR(20) NOT NULL,
    update_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    delete_flag BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY (ts_code)
    );



-- Create trading_calendar
CREATE TABLE IF NOT EXISTS trading_calendar (
    exchange VARCHAR(10) NOT NULL,
    cal_date DATE NOT NULL,
    is_open BOOLEAN NOT NULL,
    pretrade_date DATE NOT NULL,
    update_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    delete_flag BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY (exchange, cal_date)
    );