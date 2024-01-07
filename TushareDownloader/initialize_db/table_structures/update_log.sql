-- update log
DROP TABLE IF EXISTS update_log;
CREATE TABLE IF NOT EXISTS update_log(
    id INT PRIMARY KEY auto_increment,
    table_name VARCHAR(20) NOT NULL,
    update_status VARCHAR(300) NOT NULL,
    update_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    delete_flag BOOLEAN NOT NULL DEFAULT FALSE
);