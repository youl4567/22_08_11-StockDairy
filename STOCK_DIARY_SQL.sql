Use bootDB;

SELECT * FROM tbl_users;
SELECT * FROM tbl_board;
SELECT * FROM tbl_Stock;

drop table tbl_users;
drop table tbl_board;
drop table tbl_stock;

CREATE TABLE  tbl_users (	
	 		username VARCHAR(125) PRIMARY KEY,
	 		password VARCHAR(125) NOT NULL,
	 		name VARCHAR(50),
	 		email VARCHAR(125),
	 		role VARCHAR(10)
		);
        
CREATE TABLE tbl_board (
		b_num BIGINT auto_increment PRIMARY KEY,
		b_title VARCHAR(125) NOT NULL,
		b_hit BIGINT,
		b_content VARCHAR(5000) NOT NULL,
		b_writer VARCHAR(50),
		b_date VARCHAR(50),
		b_time VARCHAR(50)
);

CREATE TABLE tbl_Stock (
		s_writer	VARCHAR(50) NOT NULL,
		s_num		BIGINT auto_increment PRIMARY KEY,
		s_name		VARCHAR(125) NOT NULL,
		s_buy		BIGINT NOT NULL,
		s_amount	INT NOT NULL,
		s_buyDate	VARCHAR(50),
		s_total_buy	BIGINT,
		s_sell		INT,
		s_sellDate	VARCHAR(50),
		s_total_sell	BIGINT,
		s_rate		INT,
		s_benefit	BIGINT
            );