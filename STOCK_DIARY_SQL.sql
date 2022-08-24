Use bootDB;

SELECT * FROM tbl_users;
SELECT * FROM tbl_board;

drop table tbl_users;

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