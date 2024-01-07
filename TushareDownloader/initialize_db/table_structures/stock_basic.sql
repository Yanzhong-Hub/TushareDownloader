-- Stock basic
-- stock_list
-- trading_calendar

-- Create stock_list
DROP TABLE IF EXISTS stock_list;
CREATE TABLE IF NOT EXISTS stock_list (
    id INT PRIMARY KEY auto_increment,
    ts_code VARCHAR(10) NOT NULL,
    symbol VARCHAR(10),
    name VARCHAR(20),
    area VARCHAR(10),
    industry VARCHAR(20),
    market VARCHAR(10),
    list_date DATE,
    fullname VARCHAR(100),
    enname VARCHAR(100),
    cnspell VARCHAR(100),
    exchange VARCHAR(10),
    curr_type VARCHAR(10),
    list_status VARCHAR(10),
    delist_date DATE,
    is_hs VARCHAR(10),
    act_name VARCHAR(50),
    act_ent_type VARCHAR(20),
    update_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    delete_flag BOOLEAN NOT NULL DEFAULT FALSE
    );



-- Create trading_calendar
DROP TABLE IF EXISTS trading_calendar;
CREATE TABLE IF NOT EXISTS trading_calendar (
    id INT PRIMARY KEY auto_increment,
    exchange VARCHAR(10),
    cal_date DATE,
    is_open BOOLEAN,
    pretrade_date DATE,
    update_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    delete_flag BOOLEAN NOT NULL DEFAULT FALSE
    );