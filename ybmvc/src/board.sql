
/* Drop Tables */

DROP TABLE board CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE board_seq;




/* Create Sequences */

CREATE SEQUENCE board_seq;



/* Create Tables */

CREATE TABLE board
(
	num number NOT NULL,
	pass varchar2(30),
	name varchar2(30),
	email varchar2(30),
	title varchar2(50),
	content varchar2(1000),
	readcount number(4,0),
	writedate date,
	PRIMARY KEY (num)
);