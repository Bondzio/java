
/* Drop Tables */

DROP TABLE tb_board CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE seq_board;




/* Create Sequences */

CREATE SEQUENCE seq_board;



/* Create Tables */

CREATE TABLE tb_board
(
	no number NOT NULL,
	name varchar2(20) NOT NULL,
	title varchar2(100) NOT NULL,
	content varchar2(4000) NOT NULL,
	pwd varchar2(128) NOT NULL,
	regdate date DEFAULT sysdate NOT NULL,
	viewcount number DEFAULT 0 NOT NULL,
	PRIMARY KEY (no)
);

select * from tb_board
order by no desc;

select no, name, title, regdate, viewcount
from TB_BOARD
order by no desc;

select no, name, title, regdate, viewcount, content
from tb_board
where no=1;




select B.*
from (select rownum as rnum, A.*
	from ( select no, title, name, regdate, viewcount
			from tb_board
			order by no desc) A) B
where rnum between 1 and 10


select rownum as rnum, A.*
	from ( select no, title, name, regdate, viewcount
			from tb_board
			order by no desc) A
where rnum between 1 and 10;



select trunc(count(*)/10)+1 from tb_board;

select *            
from tb_board	 	
where title like '%카%';


select B.*                                                
from (select rownum as rnum, A.*                          
		from ( 	select no, title, name, regdate, viewcount 
				from tb_board    
				order by no desc) A) B                     
where rnum between 1 and 10
and title like '%카%'; 

select B.* from (select rownum as rnum, A.* 
from ( 	select no, title, name, regdate, viewcount
		from tb_board 				
		order by no desc) A) B 
where rnum between 1 and 10 
and	
content like '%곧%'; 


select B.* from (select rownum as rnum, A.* 
from ( 	select no, title, name, regdate, viewcount	from tb_board 	order by no desc) A) B 
where rnum between 1 and 10 and title like '% 카 %'


select * from tb_board;
