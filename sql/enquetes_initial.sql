TRUNCATE table wp_enquetes;
TRUNCATE table wp_questions;
TRUNCATE table wp_selections;
TRUNCATE table wp_answers;

ALTER TABLE wp_enquetes AUTO_INCREMENT=1;
ALTER TABLE wp_questions AUTO_INCREMENT=1;
ALTER TABLE wp_selections AUTO_INCREMENT=1;
ALTER TABLE wp_answers AUTO_INCREMENT=1;

INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'1',
  	'アンケート 1',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'1',
  	'1',
  	'1',
  	'問題1-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1',
	'1',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2',
	'1',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'3',
	'1',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'4',
	'1',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'5',
	'1',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'2',
  	'1',
  	'2',
  	'問題1-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'6',
	'2',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'7',
	'2',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'8',
	'2',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'9',
	'2',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'10',
	'2',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'3',
  	'1',
  	'3',
  	'問題1-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'11',
	'3',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'12',
	'3',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'13',
	'3',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'14',
	'3',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'15',
	'3',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'4',
  	'1',
  	'4',
  	'問題1-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'16',
	'4',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'17',
	'4',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'18',
	'4',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'19',
	'4',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'20',
	'4',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'5',
  	'1',
  	'5',
  	'問題1-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'21',
	'5',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'22',
	'5',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'23',
	'5',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'24',
	'5',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'25',
	'5',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'2',
  	'アンケート 2',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'6',
  	'2',
  	'1',
  	'問題2-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'26',
	'6',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'27',
	'6',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'28',
	'6',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'29',
	'6',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'30',
	'6',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'7',
  	'2',
  	'2',
  	'問題2-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'31',
	'7',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'32',
	'7',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'33',
	'7',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'34',
	'7',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'35',
	'7',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'8',
  	'2',
  	'3',
  	'問題2-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'36',
	'8',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'37',
	'8',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'38',
	'8',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'39',
	'8',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'40',
	'8',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'9',
  	'2',
  	'4',
  	'問題2-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'41',
	'9',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'42',
	'9',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'43',
	'9',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'44',
	'9',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'45',
	'9',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'10',
  	'2',
  	'5',
  	'問題2-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'46',
	'10',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'47',
	'10',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'48',
	'10',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'49',
	'10',
  	'4',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'50',
	'10',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'3',
  	'アンケート 3',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'11',
  	'3',
  	'1',
  	'問題3-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'51',
	'11',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'52',
	'11',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'53',
	'11',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'54',
	'11',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'55',
	'11',
  	'5',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'12',
  	'3',
  	'2',
  	'問題3-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'56',
	'12',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'57',
	'12',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'58',
	'12',
  	'3',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'59',
	'12',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'60',
	'12',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'13',
  	'3',
  	'3',
  	'問題3-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'61',
	'13',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'62',
	'13',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'63',
	'13',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'64',
	'13',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'65',
	'13',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'14',
  	'3',
  	'4',
  	'問題3-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'66',
	'14',
  	'1',
  	'AAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'67',
	'14',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'68',
	'14',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'69',
	'14',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'70',
	'14',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'15',
  	'3',
  	'5',
  	'問題3-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'71',
	'15',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'72',
	'15',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'73',
	'15',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'74',
	'15',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'75',
	'15',
  	'5',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'4',
  	'アンケート 4',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'16',
  	'4',
  	'1',
  	'問題4-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'76',
	'16',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'77',
	'16',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'78',
	'16',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'79',
	'16',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'80',
	'16',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'17',
  	'4',
  	'2',
  	'問題4-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'81',
	'17',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'82',
	'17',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'83',
	'17',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'84',
	'17',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'85',
	'17',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'18',
  	'4',
  	'3',
  	'問題4-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'86',
	'18',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'87',
	'18',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'88',
	'18',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'89',
	'18',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'90',
	'18',
  	'5',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'19',
  	'4',
  	'4',
  	'問題4-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'91',
	'19',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'92',
	'19',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'93',
	'19',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'94',
	'19',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'95',
	'19',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'20',
  	'4',
  	'5',
  	'問題4-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'96',
	'20',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'97',
	'20',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'98',
	'20',
  	'3',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'99',
	'20',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'100',
	'20',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'5',
  	'アンケート 5',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'21',
  	'5',
  	'1',
  	'問題5-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'101',
	'21',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'102',
	'21',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'103',
	'21',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'104',
	'21',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'105',
	'21',
  	'5',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'22',
  	'5',
  	'2',
  	'問題5-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'106',
	'22',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'107',
	'22',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'108',
	'22',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'109',
	'22',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'110',
	'22',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'23',
  	'5',
  	'3',
  	'問題5-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'111',
	'23',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'112',
	'23',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'113',
	'23',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'114',
	'23',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'115',
	'23',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'24',
  	'5',
  	'4',
  	'問題5-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'116',
	'24',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'117',
	'24',
  	'2',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'118',
	'24',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'119',
	'24',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'120',
	'24',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'25',
  	'5',
  	'5',
  	'問題5-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'121',
	'25',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'122',
	'25',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'123',
	'25',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'124',
	'25',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'125',
	'25',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'6',
  	'アンケート 6',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'26',
  	'6',
  	'1',
  	'問題6-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'126',
	'26',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'127',
	'26',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'128',
	'26',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'129',
	'26',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'130',
	'26',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'27',
  	'6',
  	'2',
  	'問題6-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'131',
	'27',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'132',
	'27',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'133',
	'27',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'134',
	'27',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'135',
	'27',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'28',
  	'6',
  	'3',
  	'問題6-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'136',
	'28',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'137',
	'28',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'138',
	'28',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'139',
	'28',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'140',
	'28',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'29',
  	'6',
  	'4',
  	'問題6-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'141',
	'29',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'142',
	'29',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'143',
	'29',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'144',
	'29',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'145',
	'29',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'30',
  	'6',
  	'5',
  	'問題6-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'146',
	'30',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'147',
	'30',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'148',
	'30',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'149',
	'30',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'150',
	'30',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'7',
  	'アンケート 7',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'31',
  	'7',
  	'1',
  	'問題7-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'151',
	'31',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'152',
	'31',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'153',
	'31',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'154',
	'31',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'155',
	'31',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'32',
  	'7',
  	'2',
  	'問題7-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'156',
	'32',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'157',
	'32',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'158',
	'32',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'159',
	'32',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'160',
	'32',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'33',
  	'7',
  	'3',
  	'問題7-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'161',
	'33',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'162',
	'33',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'163',
	'33',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'164',
	'33',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'165',
	'33',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'34',
  	'7',
  	'4',
  	'問題7-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'166',
	'34',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'167',
	'34',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'168',
	'34',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'169',
	'34',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'170',
	'34',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'35',
  	'7',
  	'5',
  	'問題7-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'171',
	'35',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'172',
	'35',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'173',
	'35',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'174',
	'35',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'175',
	'35',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'8',
  	'アンケート 8',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'36',
  	'8',
  	'1',
  	'問題8-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'176',
	'36',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'177',
	'36',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'178',
	'36',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'179',
	'36',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'180',
	'36',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'37',
  	'8',
  	'2',
  	'問題8-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'181',
	'37',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'182',
	'37',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'183',
	'37',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'184',
	'37',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'185',
	'37',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'38',
  	'8',
  	'3',
  	'問題8-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'186',
	'38',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'187',
	'38',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'188',
	'38',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'189',
	'38',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'190',
	'38',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'39',
  	'8',
  	'4',
  	'問題8-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'191',
	'39',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'192',
	'39',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'193',
	'39',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'194',
	'39',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'195',
	'39',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'40',
  	'8',
  	'5',
  	'問題8-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'196',
	'40',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'197',
	'40',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'198',
	'40',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'199',
	'40',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'200',
	'40',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'9',
  	'アンケート 9',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'41',
  	'9',
  	'1',
  	'問題9-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'201',
	'41',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'202',
	'41',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'203',
	'41',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'204',
	'41',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'205',
	'41',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'42',
  	'9',
  	'2',
  	'問題9-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'206',
	'42',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'207',
	'42',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'208',
	'42',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'209',
	'42',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'210',
	'42',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'43',
  	'9',
  	'3',
  	'問題9-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'211',
	'43',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'212',
	'43',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'213',
	'43',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'214',
	'43',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'215',
	'43',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'44',
  	'9',
  	'4',
  	'問題9-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'216',
	'44',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'217',
	'44',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'218',
	'44',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'219',
	'44',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'220',
	'44',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'45',
  	'9',
  	'5',
  	'問題9-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'221',
	'45',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'222',
	'45',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'223',
	'45',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'224',
	'45',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'225',
	'45',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'10',
  	'アンケート 10',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'46',
  	'10',
  	'1',
  	'問題10-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'226',
	'46',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'227',
	'46',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'228',
	'46',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'229',
	'46',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'230',
	'46',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'47',
  	'10',
  	'2',
  	'問題10-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'231',
	'47',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'232',
	'47',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'233',
	'47',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'234',
	'47',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'235',
	'47',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'48',
  	'10',
  	'3',
  	'問題10-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'236',
	'48',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'237',
	'48',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'238',
	'48',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'239',
	'48',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'240',
	'48',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'49',
  	'10',
  	'4',
  	'問題10-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'241',
	'49',
  	'1',
  	'AAAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'242',
	'49',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'243',
	'49',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'244',
	'49',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'245',
	'49',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'50',
  	'10',
  	'5',
  	'問題10-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'246',
	'50',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'247',
	'50',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'248',
	'50',
  	'3',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'249',
	'50',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'250',
	'50',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'11',
  	'アンケート 11',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'51',
  	'11',
  	'1',
  	'問題11-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'251',
	'51',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'252',
	'51',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'253',
	'51',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'254',
	'51',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'255',
	'51',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'52',
  	'11',
  	'2',
  	'問題11-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'256',
	'52',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'257',
	'52',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'258',
	'52',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'259',
	'52',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'260',
	'52',
  	'5',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'53',
  	'11',
  	'3',
  	'問題11-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'261',
	'53',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'262',
	'53',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'263',
	'53',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'264',
	'53',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'265',
	'53',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'54',
  	'11',
  	'4',
  	'問題11-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'266',
	'54',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'267',
	'54',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'268',
	'54',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'269',
	'54',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'270',
	'54',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'55',
  	'11',
  	'5',
  	'問題11-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'271',
	'55',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'272',
	'55',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'273',
	'55',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'274',
	'55',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'275',
	'55',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'12',
  	'アンケート 12',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'56',
  	'12',
  	'1',
  	'問題12-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'276',
	'56',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'277',
	'56',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'278',
	'56',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'279',
	'56',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'280',
	'56',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'57',
  	'12',
  	'2',
  	'問題12-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'281',
	'57',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'282',
	'57',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'283',
	'57',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'284',
	'57',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'285',
	'57',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'58',
  	'12',
  	'3',
  	'問題12-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'286',
	'58',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'287',
	'58',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'288',
	'58',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'289',
	'58',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'290',
	'58',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'59',
  	'12',
  	'4',
  	'問題12-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'291',
	'59',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'292',
	'59',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'293',
	'59',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'294',
	'59',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'295',
	'59',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'60',
  	'12',
  	'5',
  	'問題12-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'296',
	'60',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'297',
	'60',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'298',
	'60',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'299',
	'60',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'300',
	'60',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'13',
  	'アンケート 13',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'61',
  	'13',
  	'1',
  	'問題13-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'301',
	'61',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'302',
	'61',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'303',
	'61',
  	'3',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'304',
	'61',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'305',
	'61',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'62',
  	'13',
  	'2',
  	'問題13-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'306',
	'62',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'307',
	'62',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'308',
	'62',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'309',
	'62',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'310',
	'62',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'63',
  	'13',
  	'3',
  	'問題13-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'311',
	'63',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'312',
	'63',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'313',
	'63',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'314',
	'63',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'315',
	'63',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'64',
  	'13',
  	'4',
  	'問題13-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'316',
	'64',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'317',
	'64',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'318',
	'64',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'319',
	'64',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'320',
	'64',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'65',
  	'13',
  	'5',
  	'問題13-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'321',
	'65',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'322',
	'65',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'323',
	'65',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'324',
	'65',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'325',
	'65',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'14',
  	'アンケート 14',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'66',
  	'14',
  	'1',
  	'問題14-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'326',
	'66',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'327',
	'66',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'328',
	'66',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'329',
	'66',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'330',
	'66',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'67',
  	'14',
  	'2',
  	'問題14-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'331',
	'67',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'332',
	'67',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'333',
	'67',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'334',
	'67',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'335',
	'67',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'68',
  	'14',
  	'3',
  	'問題14-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'336',
	'68',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'337',
	'68',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'338',
	'68',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'339',
	'68',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'340',
	'68',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'69',
  	'14',
  	'4',
  	'問題14-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'341',
	'69',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'342',
	'69',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'343',
	'69',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'344',
	'69',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'345',
	'69',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'70',
  	'14',
  	'5',
  	'問題14-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'346',
	'70',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'347',
	'70',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'348',
	'70',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'349',
	'70',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'350',
	'70',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'15',
  	'アンケート 15',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'71',
  	'15',
  	'1',
  	'問題15-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'351',
	'71',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'352',
	'71',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'353',
	'71',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'354',
	'71',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'355',
	'71',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'72',
  	'15',
  	'2',
  	'問題15-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'356',
	'72',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'357',
	'72',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'358',
	'72',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'359',
	'72',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'360',
	'72',
  	'5',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'73',
  	'15',
  	'3',
  	'問題15-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'361',
	'73',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'362',
	'73',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'363',
	'73',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'364',
	'73',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'365',
	'73',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'74',
  	'15',
  	'4',
  	'問題15-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'366',
	'74',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'367',
	'74',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'368',
	'74',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'369',
	'74',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'370',
	'74',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'75',
  	'15',
  	'5',
  	'問題15-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'371',
	'75',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'372',
	'75',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'373',
	'75',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'374',
	'75',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'375',
	'75',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'16',
  	'アンケート 16',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'76',
  	'16',
  	'1',
  	'問題16-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'376',
	'76',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'377',
	'76',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'378',
	'76',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'379',
	'76',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'380',
	'76',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'77',
  	'16',
  	'2',
  	'問題16-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'381',
	'77',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'382',
	'77',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'383',
	'77',
  	'3',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'384',
	'77',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'385',
	'77',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'78',
  	'16',
  	'3',
  	'問題16-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'386',
	'78',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'387',
	'78',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'388',
	'78',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'389',
	'78',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'390',
	'78',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'79',
  	'16',
  	'4',
  	'問題16-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'391',
	'79',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'392',
	'79',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'393',
	'79',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'394',
	'79',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'395',
	'79',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'80',
  	'16',
  	'5',
  	'問題16-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'396',
	'80',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'397',
	'80',
  	'2',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'398',
	'80',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'399',
	'80',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'400',
	'80',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'17',
  	'アンケート 17',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'81',
  	'17',
  	'1',
  	'問題17-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'401',
	'81',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'402',
	'81',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'403',
	'81',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'404',
	'81',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'405',
	'81',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'82',
  	'17',
  	'2',
  	'問題17-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'406',
	'82',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'407',
	'82',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'408',
	'82',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'409',
	'82',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'410',
	'82',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'83',
  	'17',
  	'3',
  	'問題17-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'411',
	'83',
  	'1',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'412',
	'83',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'413',
	'83',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'414',
	'83',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'415',
	'83',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'84',
  	'17',
  	'4',
  	'問題17-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'416',
	'84',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'417',
	'84',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'418',
	'84',
  	'3',
  	'AAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'419',
	'84',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'420',
	'84',
  	'5',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'85',
  	'17',
  	'5',
  	'問題17-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'421',
	'85',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'422',
	'85',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'423',
	'85',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'424',
	'85',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'425',
	'85',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'18',
  	'アンケート 18',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'86',
  	'18',
  	'1',
  	'問題18-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'426',
	'86',
  	'1',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'427',
	'86',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'428',
	'86',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'429',
	'86',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'430',
	'86',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'87',
  	'18',
  	'2',
  	'問題18-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'431',
	'87',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'432',
	'87',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'433',
	'87',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'434',
	'87',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'435',
	'87',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'88',
  	'18',
  	'3',
  	'問題18-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'436',
	'88',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'437',
	'88',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'438',
	'88',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'439',
	'88',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'440',
	'88',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'89',
  	'18',
  	'4',
  	'問題18-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'441',
	'89',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'442',
	'89',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'443',
	'89',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'444',
	'89',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'445',
	'89',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'90',
  	'18',
  	'5',
  	'問題18-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'446',
	'90',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'447',
	'90',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'448',
	'90',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'449',
	'90',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'450',
	'90',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'19',
  	'アンケート 19',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'91',
  	'19',
  	'1',
  	'問題19-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'451',
	'91',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'452',
	'91',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'453',
	'91',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'454',
	'91',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'455',
	'91',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'92',
  	'19',
  	'2',
  	'問題19-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'456',
	'92',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'457',
	'92',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'458',
	'92',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'459',
	'92',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'460',
	'92',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'93',
  	'19',
  	'3',
  	'問題19-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'461',
	'93',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'462',
	'93',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'463',
	'93',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'464',
	'93',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'465',
	'93',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'94',
  	'19',
  	'4',
  	'問題19-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'466',
	'94',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'467',
	'94',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'468',
	'94',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'469',
	'94',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'470',
	'94',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'95',
  	'19',
  	'5',
  	'問題19-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'471',
	'95',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'472',
	'95',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'473',
	'95',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'474',
	'95',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'475',
	'95',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'20',
  	'アンケート 20',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'96',
  	'20',
  	'1',
  	'問題20-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'476',
	'96',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'477',
	'96',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'478',
	'96',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'479',
	'96',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'480',
	'96',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'97',
  	'20',
  	'2',
  	'問題20-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'481',
	'97',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'482',
	'97',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'483',
	'97',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'484',
	'97',
  	'4',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'485',
	'97',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'98',
  	'20',
  	'3',
  	'問題20-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'486',
	'98',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'487',
	'98',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'488',
	'98',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'489',
	'98',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'490',
	'98',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'99',
  	'20',
  	'4',
  	'問題20-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'491',
	'99',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'492',
	'99',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'493',
	'99',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'494',
	'99',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'495',
	'99',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'100',
  	'20',
  	'5',
  	'問題20-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'496',
	'100',
  	'1',
  	'AAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'497',
	'100',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'498',
	'100',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'499',
	'100',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'500',
	'100',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'21',
  	'アンケート 21',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'101',
  	'21',
  	'1',
  	'問題21-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'501',
	'101',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'502',
	'101',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'503',
	'101',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'504',
	'101',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'505',
	'101',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'102',
  	'21',
  	'2',
  	'問題21-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'506',
	'102',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'507',
	'102',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'508',
	'102',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'509',
	'102',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'510',
	'102',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'103',
  	'21',
  	'3',
  	'問題21-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'511',
	'103',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'512',
	'103',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'513',
	'103',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'514',
	'103',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'515',
	'103',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'104',
  	'21',
  	'4',
  	'問題21-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'516',
	'104',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'517',
	'104',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'518',
	'104',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'519',
	'104',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'520',
	'104',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'105',
  	'21',
  	'5',
  	'問題21-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'521',
	'105',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'522',
	'105',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'523',
	'105',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'524',
	'105',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'525',
	'105',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'22',
  	'アンケート 22',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'106',
  	'22',
  	'1',
  	'問題22-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'526',
	'106',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'527',
	'106',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'528',
	'106',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'529',
	'106',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'530',
	'106',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'107',
  	'22',
  	'2',
  	'問題22-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'531',
	'107',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'532',
	'107',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'533',
	'107',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'534',
	'107',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'535',
	'107',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'108',
  	'22',
  	'3',
  	'問題22-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'536',
	'108',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'537',
	'108',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'538',
	'108',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'539',
	'108',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'540',
	'108',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'109',
  	'22',
  	'4',
  	'問題22-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'541',
	'109',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'542',
	'109',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'543',
	'109',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'544',
	'109',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'545',
	'109',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'110',
  	'22',
  	'5',
  	'問題22-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'546',
	'110',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'547',
	'110',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'548',
	'110',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'549',
	'110',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'550',
	'110',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'23',
  	'アンケート 23',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'111',
  	'23',
  	'1',
  	'問題23-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'551',
	'111',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'552',
	'111',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'553',
	'111',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'554',
	'111',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'555',
	'111',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'112',
  	'23',
  	'2',
  	'問題23-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'556',
	'112',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'557',
	'112',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'558',
	'112',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'559',
	'112',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'560',
	'112',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'113',
  	'23',
  	'3',
  	'問題23-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'561',
	'113',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'562',
	'113',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'563',
	'113',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'564',
	'113',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'565',
	'113',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'114',
  	'23',
  	'4',
  	'問題23-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'566',
	'114',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'567',
	'114',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'568',
	'114',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'569',
	'114',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'570',
	'114',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'115',
  	'23',
  	'5',
  	'問題23-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'571',
	'115',
  	'1',
  	'AAAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'572',
	'115',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'573',
	'115',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'574',
	'115',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'575',
	'115',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'24',
  	'アンケート 24',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'116',
  	'24',
  	'1',
  	'問題24-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'576',
	'116',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'577',
	'116',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'578',
	'116',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'579',
	'116',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'580',
	'116',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'117',
  	'24',
  	'2',
  	'問題24-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'581',
	'117',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'582',
	'117',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'583',
	'117',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'584',
	'117',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'585',
	'117',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'118',
  	'24',
  	'3',
  	'問題24-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'586',
	'118',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'587',
	'118',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'588',
	'118',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'589',
	'118',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'590',
	'118',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'119',
  	'24',
  	'4',
  	'問題24-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'591',
	'119',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'592',
	'119',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'593',
	'119',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'594',
	'119',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'595',
	'119',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'120',
  	'24',
  	'5',
  	'問題24-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'596',
	'120',
  	'1',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'597',
	'120',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'598',
	'120',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'599',
	'120',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'600',
	'120',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'25',
  	'アンケート 25',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'121',
  	'25',
  	'1',
  	'問題25-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'601',
	'121',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'602',
	'121',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'603',
	'121',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'604',
	'121',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'605',
	'121',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'122',
  	'25',
  	'2',
  	'問題25-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'606',
	'122',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'607',
	'122',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'608',
	'122',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'609',
	'122',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'610',
	'122',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'123',
  	'25',
  	'3',
  	'問題25-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'611',
	'123',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'612',
	'123',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'613',
	'123',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'614',
	'123',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'615',
	'123',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'124',
  	'25',
  	'4',
  	'問題25-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'616',
	'124',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'617',
	'124',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'618',
	'124',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'619',
	'124',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'620',
	'124',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'125',
  	'25',
  	'5',
  	'問題25-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'621',
	'125',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'622',
	'125',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'623',
	'125',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'624',
	'125',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'625',
	'125',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'26',
  	'アンケート 26',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'126',
  	'26',
  	'1',
  	'問題26-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'626',
	'126',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'627',
	'126',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'628',
	'126',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'629',
	'126',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'630',
	'126',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'127',
  	'26',
  	'2',
  	'問題26-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'631',
	'127',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'632',
	'127',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'633',
	'127',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'634',
	'127',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'635',
	'127',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'128',
  	'26',
  	'3',
  	'問題26-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'636',
	'128',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'637',
	'128',
  	'2',
  	'AAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'638',
	'128',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'639',
	'128',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'640',
	'128',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'129',
  	'26',
  	'4',
  	'問題26-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'641',
	'129',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'642',
	'129',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'643',
	'129',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'644',
	'129',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'645',
	'129',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'130',
  	'26',
  	'5',
  	'問題26-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'646',
	'130',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'647',
	'130',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'648',
	'130',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'649',
	'130',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'650',
	'130',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'27',
  	'アンケート 27',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'131',
  	'27',
  	'1',
  	'問題27-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'651',
	'131',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'652',
	'131',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'653',
	'131',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'654',
	'131',
  	'4',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'655',
	'131',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'132',
  	'27',
  	'2',
  	'問題27-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'656',
	'132',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'657',
	'132',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'658',
	'132',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'659',
	'132',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'660',
	'132',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'133',
  	'27',
  	'3',
  	'問題27-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'661',
	'133',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'662',
	'133',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'663',
	'133',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'664',
	'133',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'665',
	'133',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'134',
  	'27',
  	'4',
  	'問題27-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'666',
	'134',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'667',
	'134',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'668',
	'134',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'669',
	'134',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'670',
	'134',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'135',
  	'27',
  	'5',
  	'問題27-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'671',
	'135',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'672',
	'135',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'673',
	'135',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'674',
	'135',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'675',
	'135',
  	'5',
  	'AAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'28',
  	'アンケート 28',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'136',
  	'28',
  	'1',
  	'問題28-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'676',
	'136',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'677',
	'136',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'678',
	'136',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'679',
	'136',
  	'4',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'680',
	'136',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'137',
  	'28',
  	'2',
  	'問題28-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'681',
	'137',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'682',
	'137',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'683',
	'137',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'684',
	'137',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'685',
	'137',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'138',
  	'28',
  	'3',
  	'問題28-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'686',
	'138',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'687',
	'138',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'688',
	'138',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'689',
	'138',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'690',
	'138',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'139',
  	'28',
  	'4',
  	'問題28-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'691',
	'139',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'692',
	'139',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'693',
	'139',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'694',
	'139',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'695',
	'139',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'140',
  	'28',
  	'5',
  	'問題28-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'696',
	'140',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'697',
	'140',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'698',
	'140',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'699',
	'140',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'700',
	'140',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'29',
  	'アンケート 29',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'141',
  	'29',
  	'1',
  	'問題29-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'701',
	'141',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'702',
	'141',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'703',
	'141',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'704',
	'141',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'705',
	'141',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'142',
  	'29',
  	'2',
  	'問題29-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'706',
	'142',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'707',
	'142',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'708',
	'142',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'709',
	'142',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'710',
	'142',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'143',
  	'29',
  	'3',
  	'問題29-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'711',
	'143',
  	'1',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'712',
	'143',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'713',
	'143',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'714',
	'143',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'715',
	'143',
  	'5',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'144',
  	'29',
  	'4',
  	'問題29-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'716',
	'144',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'717',
	'144',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'718',
	'144',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'719',
	'144',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'720',
	'144',
  	'5',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'145',
  	'29',
  	'5',
  	'問題29-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'721',
	'145',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'722',
	'145',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'723',
	'145',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'724',
	'145',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'725',
	'145',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'30',
  	'アンケート 30',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'146',
  	'30',
  	'1',
  	'問題30-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'726',
	'146',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'727',
	'146',
  	'2',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'728',
	'146',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'729',
	'146',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'730',
	'146',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'147',
  	'30',
  	'2',
  	'問題30-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'731',
	'147',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'732',
	'147',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'733',
	'147',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'734',
	'147',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'735',
	'147',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'148',
  	'30',
  	'3',
  	'問題30-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'736',
	'148',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'737',
	'148',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'738',
	'148',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'739',
	'148',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'740',
	'148',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'149',
  	'30',
  	'4',
  	'問題30-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'741',
	'149',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'742',
	'149',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'743',
	'149',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'744',
	'149',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'745',
	'149',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'150',
  	'30',
  	'5',
  	'問題30-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'746',
	'150',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'747',
	'150',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'748',
	'150',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'749',
	'150',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'750',
	'150',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'31',
  	'アンケート 31',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'151',
  	'31',
  	'1',
  	'問題31-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'751',
	'151',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'752',
	'151',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'753',
	'151',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'754',
	'151',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'755',
	'151',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'152',
  	'31',
  	'2',
  	'問題31-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'756',
	'152',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'757',
	'152',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'758',
	'152',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'759',
	'152',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'760',
	'152',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'153',
  	'31',
  	'3',
  	'問題31-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'761',
	'153',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'762',
	'153',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'763',
	'153',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'764',
	'153',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'765',
	'153',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'154',
  	'31',
  	'4',
  	'問題31-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'766',
	'154',
  	'1',
  	'AAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'767',
	'154',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'768',
	'154',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'769',
	'154',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'770',
	'154',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'155',
  	'31',
  	'5',
  	'問題31-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'771',
	'155',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'772',
	'155',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'773',
	'155',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'774',
	'155',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'775',
	'155',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'32',
  	'アンケート 32',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'156',
  	'32',
  	'1',
  	'問題32-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'776',
	'156',
  	'1',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'777',
	'156',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'778',
	'156',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'779',
	'156',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'780',
	'156',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'157',
  	'32',
  	'2',
  	'問題32-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'781',
	'157',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'782',
	'157',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'783',
	'157',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'784',
	'157',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'785',
	'157',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'158',
  	'32',
  	'3',
  	'問題32-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'786',
	'158',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'787',
	'158',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'788',
	'158',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'789',
	'158',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'790',
	'158',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'159',
  	'32',
  	'4',
  	'問題32-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'791',
	'159',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'792',
	'159',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'793',
	'159',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'794',
	'159',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'795',
	'159',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'160',
  	'32',
  	'5',
  	'問題32-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'796',
	'160',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'797',
	'160',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'798',
	'160',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'799',
	'160',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'800',
	'160',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'33',
  	'アンケート 33',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'161',
  	'33',
  	'1',
  	'問題33-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'801',
	'161',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'802',
	'161',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'803',
	'161',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'804',
	'161',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'805',
	'161',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'162',
  	'33',
  	'2',
  	'問題33-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'806',
	'162',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'807',
	'162',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'808',
	'162',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'809',
	'162',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'810',
	'162',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'163',
  	'33',
  	'3',
  	'問題33-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'811',
	'163',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'812',
	'163',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'813',
	'163',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'814',
	'163',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'815',
	'163',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'164',
  	'33',
  	'4',
  	'問題33-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'816',
	'164',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'817',
	'164',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'818',
	'164',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'819',
	'164',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'820',
	'164',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'165',
  	'33',
  	'5',
  	'問題33-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'821',
	'165',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'822',
	'165',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'823',
	'165',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'824',
	'165',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'825',
	'165',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'34',
  	'アンケート 34',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'166',
  	'34',
  	'1',
  	'問題34-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'826',
	'166',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'827',
	'166',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'828',
	'166',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'829',
	'166',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'830',
	'166',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'167',
  	'34',
  	'2',
  	'問題34-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'831',
	'167',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'832',
	'167',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'833',
	'167',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'834',
	'167',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'835',
	'167',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'168',
  	'34',
  	'3',
  	'問題34-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'836',
	'168',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'837',
	'168',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'838',
	'168',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'839',
	'168',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'840',
	'168',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'169',
  	'34',
  	'4',
  	'問題34-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'841',
	'169',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'842',
	'169',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'843',
	'169',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'844',
	'169',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'845',
	'169',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'170',
  	'34',
  	'5',
  	'問題34-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'846',
	'170',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'847',
	'170',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'848',
	'170',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'849',
	'170',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'850',
	'170',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'35',
  	'アンケート 35',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'171',
  	'35',
  	'1',
  	'問題35-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'851',
	'171',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'852',
	'171',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'853',
	'171',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'854',
	'171',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'855',
	'171',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'172',
  	'35',
  	'2',
  	'問題35-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'856',
	'172',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'857',
	'172',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'858',
	'172',
  	'3',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'859',
	'172',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'860',
	'172',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'173',
  	'35',
  	'3',
  	'問題35-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'861',
	'173',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'862',
	'173',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'863',
	'173',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'864',
	'173',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'865',
	'173',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'174',
  	'35',
  	'4',
  	'問題35-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'866',
	'174',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'867',
	'174',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'868',
	'174',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'869',
	'174',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'870',
	'174',
  	'5',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'175',
  	'35',
  	'5',
  	'問題35-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'871',
	'175',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'872',
	'175',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'873',
	'175',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'874',
	'175',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'875',
	'175',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'36',
  	'アンケート 36',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'176',
  	'36',
  	'1',
  	'問題36-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'876',
	'176',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'877',
	'176',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'878',
	'176',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'879',
	'176',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'880',
	'176',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'177',
  	'36',
  	'2',
  	'問題36-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'881',
	'177',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'882',
	'177',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'883',
	'177',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'884',
	'177',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'885',
	'177',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'178',
  	'36',
  	'3',
  	'問題36-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'886',
	'178',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'887',
	'178',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'888',
	'178',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'889',
	'178',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'890',
	'178',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'179',
  	'36',
  	'4',
  	'問題36-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'891',
	'179',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'892',
	'179',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'893',
	'179',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'894',
	'179',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'895',
	'179',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'180',
  	'36',
  	'5',
  	'問題36-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'896',
	'180',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'897',
	'180',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'898',
	'180',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'899',
	'180',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'900',
	'180',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'37',
  	'アンケート 37',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'181',
  	'37',
  	'1',
  	'問題37-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'901',
	'181',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'902',
	'181',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'903',
	'181',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'904',
	'181',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'905',
	'181',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'182',
  	'37',
  	'2',
  	'問題37-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'906',
	'182',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'907',
	'182',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'908',
	'182',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'909',
	'182',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'910',
	'182',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'183',
  	'37',
  	'3',
  	'問題37-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'911',
	'183',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'912',
	'183',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'913',
	'183',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'914',
	'183',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'915',
	'183',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'184',
  	'37',
  	'4',
  	'問題37-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'916',
	'184',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'917',
	'184',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'918',
	'184',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'919',
	'184',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'920',
	'184',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'185',
  	'37',
  	'5',
  	'問題37-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'921',
	'185',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'922',
	'185',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'923',
	'185',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'924',
	'185',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'925',
	'185',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'38',
  	'アンケート 38',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'186',
  	'38',
  	'1',
  	'問題38-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'926',
	'186',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'927',
	'186',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'928',
	'186',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'929',
	'186',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'930',
	'186',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'187',
  	'38',
  	'2',
  	'問題38-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'931',
	'187',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'932',
	'187',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'933',
	'187',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'934',
	'187',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'935',
	'187',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'188',
  	'38',
  	'3',
  	'問題38-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'936',
	'188',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'937',
	'188',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'938',
	'188',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'939',
	'188',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'940',
	'188',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'189',
  	'38',
  	'4',
  	'問題38-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'941',
	'189',
  	'1',
  	'AAAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'942',
	'189',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'943',
	'189',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'944',
	'189',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'945',
	'189',
  	'5',
  	'AAAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'190',
  	'38',
  	'5',
  	'問題38-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'946',
	'190',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'947',
	'190',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'948',
	'190',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'949',
	'190',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'950',
	'190',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'39',
  	'アンケート 39',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'191',
  	'39',
  	'1',
  	'問題39-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'951',
	'191',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'952',
	'191',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'953',
	'191',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'954',
	'191',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'955',
	'191',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'192',
  	'39',
  	'2',
  	'問題39-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'956',
	'192',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'957',
	'192',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'958',
	'192',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'959',
	'192',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'960',
	'192',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'193',
  	'39',
  	'3',
  	'問題39-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'961',
	'193',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'962',
	'193',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'963',
	'193',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'964',
	'193',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'965',
	'193',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'194',
  	'39',
  	'4',
  	'問題39-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'966',
	'194',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'967',
	'194',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'968',
	'194',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'969',
	'194',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'970',
	'194',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'195',
  	'39',
  	'5',
  	'問題39-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'971',
	'195',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'972',
	'195',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'973',
	'195',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'974',
	'195',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'975',
	'195',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'40',
  	'アンケート 40',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'196',
  	'40',
  	'1',
  	'問題40-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'976',
	'196',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'977',
	'196',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'978',
	'196',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'979',
	'196',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'980',
	'196',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'197',
  	'40',
  	'2',
  	'問題40-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'981',
	'197',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'982',
	'197',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'983',
	'197',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'984',
	'197',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'985',
	'197',
  	'5',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'198',
  	'40',
  	'3',
  	'問題40-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'986',
	'198',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'987',
	'198',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'988',
	'198',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'989',
	'198',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'990',
	'198',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'199',
  	'40',
  	'4',
  	'問題40-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'991',
	'199',
  	'1',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'992',
	'199',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'993',
	'199',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'994',
	'199',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'995',
	'199',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'200',
  	'40',
  	'5',
  	'問題40-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'996',
	'200',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'997',
	'200',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'998',
	'200',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'999',
	'200',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1000',
	'200',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'41',
  	'アンケート 41',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'201',
  	'41',
  	'1',
  	'問題41-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1001',
	'201',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1002',
	'201',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1003',
	'201',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1004',
	'201',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1005',
	'201',
  	'5',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'202',
  	'41',
  	'2',
  	'問題41-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1006',
	'202',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1007',
	'202',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1008',
	'202',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1009',
	'202',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1010',
	'202',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'203',
  	'41',
  	'3',
  	'問題41-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1011',
	'203',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1012',
	'203',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1013',
	'203',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1014',
	'203',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1015',
	'203',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'204',
  	'41',
  	'4',
  	'問題41-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1016',
	'204',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1017',
	'204',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1018',
	'204',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1019',
	'204',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1020',
	'204',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'205',
  	'41',
  	'5',
  	'問題41-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1021',
	'205',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1022',
	'205',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1023',
	'205',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1024',
	'205',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1025',
	'205',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'42',
  	'アンケート 42',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'206',
  	'42',
  	'1',
  	'問題42-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1026',
	'206',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1027',
	'206',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1028',
	'206',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1029',
	'206',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1030',
	'206',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'207',
  	'42',
  	'2',
  	'問題42-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1031',
	'207',
  	'1',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1032',
	'207',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1033',
	'207',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1034',
	'207',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1035',
	'207',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'208',
  	'42',
  	'3',
  	'問題42-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1036',
	'208',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1037',
	'208',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1038',
	'208',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1039',
	'208',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1040',
	'208',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'209',
  	'42',
  	'4',
  	'問題42-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1041',
	'209',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1042',
	'209',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1043',
	'209',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1044',
	'209',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1045',
	'209',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'210',
  	'42',
  	'5',
  	'問題42-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1046',
	'210',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1047',
	'210',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1048',
	'210',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1049',
	'210',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1050',
	'210',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'43',
  	'アンケート 43',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'211',
  	'43',
  	'1',
  	'問題43-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1051',
	'211',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1052',
	'211',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1053',
	'211',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1054',
	'211',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1055',
	'211',
  	'5',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'212',
  	'43',
  	'2',
  	'問題43-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1056',
	'212',
  	'1',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1057',
	'212',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1058',
	'212',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1059',
	'212',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1060',
	'212',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'213',
  	'43',
  	'3',
  	'問題43-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1061',
	'213',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1062',
	'213',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1063',
	'213',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1064',
	'213',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1065',
	'213',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'214',
  	'43',
  	'4',
  	'問題43-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1066',
	'214',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1067',
	'214',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1068',
	'214',
  	'3',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1069',
	'214',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1070',
	'214',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'215',
  	'43',
  	'5',
  	'問題43-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1071',
	'215',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1072',
	'215',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1073',
	'215',
  	'3',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1074',
	'215',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1075',
	'215',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'44',
  	'アンケート 44',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'216',
  	'44',
  	'1',
  	'問題44-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1076',
	'216',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1077',
	'216',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1078',
	'216',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1079',
	'216',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1080',
	'216',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'217',
  	'44',
  	'2',
  	'問題44-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1081',
	'217',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1082',
	'217',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1083',
	'217',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1084',
	'217',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1085',
	'217',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'218',
  	'44',
  	'3',
  	'問題44-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1086',
	'218',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1087',
	'218',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1088',
	'218',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1089',
	'218',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1090',
	'218',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'219',
  	'44',
  	'4',
  	'問題44-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1091',
	'219',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1092',
	'219',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1093',
	'219',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1094',
	'219',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1095',
	'219',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'220',
  	'44',
  	'5',
  	'問題44-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1096',
	'220',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1097',
	'220',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1098',
	'220',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1099',
	'220',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1100',
	'220',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'45',
  	'アンケート 45',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'221',
  	'45',
  	'1',
  	'問題45-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1101',
	'221',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1102',
	'221',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1103',
	'221',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1104',
	'221',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1105',
	'221',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'222',
  	'45',
  	'2',
  	'問題45-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1106',
	'222',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1107',
	'222',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1108',
	'222',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1109',
	'222',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1110',
	'222',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'223',
  	'45',
  	'3',
  	'問題45-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1111',
	'223',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1112',
	'223',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1113',
	'223',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1114',
	'223',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1115',
	'223',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'224',
  	'45',
  	'4',
  	'問題45-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1116',
	'224',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1117',
	'224',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1118',
	'224',
  	'3',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1119',
	'224',
  	'4',
  	'AAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1120',
	'224',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'225',
  	'45',
  	'5',
  	'問題45-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1121',
	'225',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1122',
	'225',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1123',
	'225',
  	'3',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1124',
	'225',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1125',
	'225',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'46',
  	'アンケート 46',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'226',
  	'46',
  	'1',
  	'問題46-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1126',
	'226',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1127',
	'226',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1128',
	'226',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1129',
	'226',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1130',
	'226',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'227',
  	'46',
  	'2',
  	'問題46-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1131',
	'227',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1132',
	'227',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1133',
	'227',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1134',
	'227',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1135',
	'227',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'228',
  	'46',
  	'3',
  	'問題46-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1136',
	'228',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1137',
	'228',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1138',
	'228',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1139',
	'228',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1140',
	'228',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'229',
  	'46',
  	'4',
  	'問題46-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1141',
	'229',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1142',
	'229',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1143',
	'229',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1144',
	'229',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1145',
	'229',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'230',
  	'46',
  	'5',
  	'問題46-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1146',
	'230',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1147',
	'230',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1148',
	'230',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1149',
	'230',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1150',
	'230',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'47',
  	'アンケート 47',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'231',
  	'47',
  	'1',
  	'問題47-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1151',
	'231',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1152',
	'231',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1153',
	'231',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1154',
	'231',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1155',
	'231',
  	'5',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'232',
  	'47',
  	'2',
  	'問題47-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1156',
	'232',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1157',
	'232',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1158',
	'232',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1159',
	'232',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1160',
	'232',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'233',
  	'47',
  	'3',
  	'問題47-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1161',
	'233',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1162',
	'233',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1163',
	'233',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1164',
	'233',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1165',
	'233',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'234',
  	'47',
  	'4',
  	'問題47-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1166',
	'234',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1167',
	'234',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1168',
	'234',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1169',
	'234',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1170',
	'234',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'235',
  	'47',
  	'5',
  	'問題47-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1171',
	'235',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1172',
	'235',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1173',
	'235',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1174',
	'235',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1175',
	'235',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'48',
  	'アンケート 48',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'236',
  	'48',
  	'1',
  	'問題48-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1176',
	'236',
  	'1',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1177',
	'236',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1178',
	'236',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1179',
	'236',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1180',
	'236',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'237',
  	'48',
  	'2',
  	'問題48-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1181',
	'237',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1182',
	'237',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1183',
	'237',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1184',
	'237',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1185',
	'237',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'238',
  	'48',
  	'3',
  	'問題48-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1186',
	'238',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1187',
	'238',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1188',
	'238',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1189',
	'238',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1190',
	'238',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'239',
  	'48',
  	'4',
  	'問題48-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1191',
	'239',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1192',
	'239',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1193',
	'239',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1194',
	'239',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1195',
	'239',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'240',
  	'48',
  	'5',
  	'問題48-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1196',
	'240',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1197',
	'240',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1198',
	'240',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1199',
	'240',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1200',
	'240',
  	'5',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'49',
  	'アンケート 49',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'241',
  	'49',
  	'1',
  	'問題49-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1201',
	'241',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1202',
	'241',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1203',
	'241',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1204',
	'241',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1205',
	'241',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'242',
  	'49',
  	'2',
  	'問題49-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1206',
	'242',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1207',
	'242',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1208',
	'242',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1209',
	'242',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1210',
	'242',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'243',
  	'49',
  	'3',
  	'問題49-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1211',
	'243',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1212',
	'243',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1213',
	'243',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1214',
	'243',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1215',
	'243',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'244',
  	'49',
  	'4',
  	'問題49-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1216',
	'244',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1217',
	'244',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1218',
	'244',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1219',
	'244',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1220',
	'244',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'245',
  	'49',
  	'5',
  	'問題49-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1221',
	'245',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1222',
	'245',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1223',
	'245',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1224',
	'245',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1225',
	'245',
  	'5',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'50',
  	'アンケート 50',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'246',
  	'50',
  	'1',
  	'問題50-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1226',
	'246',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1227',
	'246',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1228',
	'246',
  	'3',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1229',
	'246',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1230',
	'246',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'247',
  	'50',
  	'2',
  	'問題50-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1231',
	'247',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1232',
	'247',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1233',
	'247',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1234',
	'247',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1235',
	'247',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'248',
  	'50',
  	'3',
  	'問題50-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1236',
	'248',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1237',
	'248',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1238',
	'248',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1239',
	'248',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1240',
	'248',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'249',
  	'50',
  	'4',
  	'問題50-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1241',
	'249',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1242',
	'249',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1243',
	'249',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1244',
	'249',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1245',
	'249',
  	'5',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'250',
  	'50',
  	'5',
  	'問題50-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1246',
	'250',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1247',
	'250',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1248',
	'250',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1249',
	'250',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1250',
	'250',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'51',
  	'アンケート 51',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'251',
  	'51',
  	'1',
  	'問題51-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1251',
	'251',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1252',
	'251',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1253',
	'251',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1254',
	'251',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1255',
	'251',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'252',
  	'51',
  	'2',
  	'問題51-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1256',
	'252',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1257',
	'252',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1258',
	'252',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1259',
	'252',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1260',
	'252',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'253',
  	'51',
  	'3',
  	'問題51-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1261',
	'253',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1262',
	'253',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1263',
	'253',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1264',
	'253',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1265',
	'253',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'254',
  	'51',
  	'4',
  	'問題51-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1266',
	'254',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1267',
	'254',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1268',
	'254',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1269',
	'254',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1270',
	'254',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'255',
  	'51',
  	'5',
  	'問題51-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1271',
	'255',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1272',
	'255',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1273',
	'255',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1274',
	'255',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1275',
	'255',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'52',
  	'アンケート 52',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'256',
  	'52',
  	'1',
  	'問題52-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1276',
	'256',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1277',
	'256',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1278',
	'256',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1279',
	'256',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1280',
	'256',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'257',
  	'52',
  	'2',
  	'問題52-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1281',
	'257',
  	'1',
  	'AAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1282',
	'257',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1283',
	'257',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1284',
	'257',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1285',
	'257',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'258',
  	'52',
  	'3',
  	'問題52-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1286',
	'258',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1287',
	'258',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1288',
	'258',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1289',
	'258',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1290',
	'258',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'259',
  	'52',
  	'4',
  	'問題52-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1291',
	'259',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1292',
	'259',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1293',
	'259',
  	'3',
  	'AAAAAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1294',
	'259',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1295',
	'259',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'260',
  	'52',
  	'5',
  	'問題52-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1296',
	'260',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1297',
	'260',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1298',
	'260',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1299',
	'260',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1300',
	'260',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'53',
  	'アンケート 53',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'261',
  	'53',
  	'1',
  	'問題53-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1301',
	'261',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1302',
	'261',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1303',
	'261',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1304',
	'261',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1305',
	'261',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'262',
  	'53',
  	'2',
  	'問題53-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1306',
	'262',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1307',
	'262',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1308',
	'262',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1309',
	'262',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1310',
	'262',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'263',
  	'53',
  	'3',
  	'問題53-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1311',
	'263',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1312',
	'263',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1313',
	'263',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1314',
	'263',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1315',
	'263',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'264',
  	'53',
  	'4',
  	'問題53-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1316',
	'264',
  	'1',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1317',
	'264',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1318',
	'264',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1319',
	'264',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1320',
	'264',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'265',
  	'53',
  	'5',
  	'問題53-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1321',
	'265',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1322',
	'265',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1323',
	'265',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1324',
	'265',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1325',
	'265',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'54',
  	'アンケート 54',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'266',
  	'54',
  	'1',
  	'問題54-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1326',
	'266',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1327',
	'266',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1328',
	'266',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1329',
	'266',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1330',
	'266',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'267',
  	'54',
  	'2',
  	'問題54-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1331',
	'267',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1332',
	'267',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1333',
	'267',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1334',
	'267',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1335',
	'267',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'268',
  	'54',
  	'3',
  	'問題54-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1336',
	'268',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1337',
	'268',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1338',
	'268',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1339',
	'268',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1340',
	'268',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'269',
  	'54',
  	'4',
  	'問題54-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1341',
	'269',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1342',
	'269',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1343',
	'269',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1344',
	'269',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1345',
	'269',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'270',
  	'54',
  	'5',
  	'問題54-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1346',
	'270',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1347',
	'270',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1348',
	'270',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1349',
	'270',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1350',
	'270',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'55',
  	'アンケート 55',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'271',
  	'55',
  	'1',
  	'問題55-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1351',
	'271',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1352',
	'271',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1353',
	'271',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1354',
	'271',
  	'4',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1355',
	'271',
  	'5',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'272',
  	'55',
  	'2',
  	'問題55-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1356',
	'272',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1357',
	'272',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1358',
	'272',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1359',
	'272',
  	'4',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1360',
	'272',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'273',
  	'55',
  	'3',
  	'問題55-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1361',
	'273',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1362',
	'273',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1363',
	'273',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1364',
	'273',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1365',
	'273',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'274',
  	'55',
  	'4',
  	'問題55-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1366',
	'274',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1367',
	'274',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1368',
	'274',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1369',
	'274',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1370',
	'274',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'275',
  	'55',
  	'5',
  	'問題55-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1371',
	'275',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1372',
	'275',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1373',
	'275',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1374',
	'275',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1375',
	'275',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'56',
  	'アンケート 56',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'276',
  	'56',
  	'1',
  	'問題56-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1376',
	'276',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1377',
	'276',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1378',
	'276',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1379',
	'276',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1380',
	'276',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'277',
  	'56',
  	'2',
  	'問題56-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1381',
	'277',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1382',
	'277',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1383',
	'277',
  	'3',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1384',
	'277',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1385',
	'277',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'278',
  	'56',
  	'3',
  	'問題56-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1386',
	'278',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1387',
	'278',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1388',
	'278',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1389',
	'278',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1390',
	'278',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'279',
  	'56',
  	'4',
  	'問題56-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1391',
	'279',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1392',
	'279',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1393',
	'279',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1394',
	'279',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1395',
	'279',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'280',
  	'56',
  	'5',
  	'問題56-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1396',
	'280',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1397',
	'280',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1398',
	'280',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1399',
	'280',
  	'4',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1400',
	'280',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'57',
  	'アンケート 57',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'281',
  	'57',
  	'1',
  	'問題57-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1401',
	'281',
  	'1',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1402',
	'281',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1403',
	'281',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1404',
	'281',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1405',
	'281',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'282',
  	'57',
  	'2',
  	'問題57-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1406',
	'282',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1407',
	'282',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1408',
	'282',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1409',
	'282',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1410',
	'282',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'283',
  	'57',
  	'3',
  	'問題57-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1411',
	'283',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1412',
	'283',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1413',
	'283',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1414',
	'283',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1415',
	'283',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'284',
  	'57',
  	'4',
  	'問題57-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1416',
	'284',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1417',
	'284',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1418',
	'284',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1419',
	'284',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1420',
	'284',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'285',
  	'57',
  	'5',
  	'問題57-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1421',
	'285',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1422',
	'285',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1423',
	'285',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1424',
	'285',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1425',
	'285',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'58',
  	'アンケート 58',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'286',
  	'58',
  	'1',
  	'問題58-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1426',
	'286',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1427',
	'286',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1428',
	'286',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1429',
	'286',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1430',
	'286',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'287',
  	'58',
  	'2',
  	'問題58-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1431',
	'287',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1432',
	'287',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1433',
	'287',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1434',
	'287',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1435',
	'287',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'288',
  	'58',
  	'3',
  	'問題58-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1436',
	'288',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1437',
	'288',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1438',
	'288',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1439',
	'288',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1440',
	'288',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'289',
  	'58',
  	'4',
  	'問題58-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1441',
	'289',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1442',
	'289',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1443',
	'289',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1444',
	'289',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1445',
	'289',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'290',
  	'58',
  	'5',
  	'問題58-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1446',
	'290',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1447',
	'290',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1448',
	'290',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1449',
	'290',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1450',
	'290',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'59',
  	'アンケート 59',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'291',
  	'59',
  	'1',
  	'問題59-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1451',
	'291',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1452',
	'291',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1453',
	'291',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1454',
	'291',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1455',
	'291',
  	'5',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'292',
  	'59',
  	'2',
  	'問題59-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1456',
	'292',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1457',
	'292',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1458',
	'292',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1459',
	'292',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1460',
	'292',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'293',
  	'59',
  	'3',
  	'問題59-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1461',
	'293',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1462',
	'293',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1463',
	'293',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1464',
	'293',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1465',
	'293',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'294',
  	'59',
  	'4',
  	'問題59-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1466',
	'294',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1467',
	'294',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1468',
	'294',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1469',
	'294',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1470',
	'294',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'295',
  	'59',
  	'5',
  	'問題59-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1471',
	'295',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1472',
	'295',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1473',
	'295',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1474',
	'295',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1475',
	'295',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'60',
  	'アンケート 60',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'296',
  	'60',
  	'1',
  	'問題60-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1476',
	'296',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1477',
	'296',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1478',
	'296',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1479',
	'296',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1480',
	'296',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'297',
  	'60',
  	'2',
  	'問題60-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1481',
	'297',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1482',
	'297',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1483',
	'297',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1484',
	'297',
  	'4',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1485',
	'297',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'298',
  	'60',
  	'3',
  	'問題60-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1486',
	'298',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1487',
	'298',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1488',
	'298',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1489',
	'298',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1490',
	'298',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'299',
  	'60',
  	'4',
  	'問題60-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1491',
	'299',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1492',
	'299',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1493',
	'299',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1494',
	'299',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1495',
	'299',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'300',
  	'60',
  	'5',
  	'問題60-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1496',
	'300',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1497',
	'300',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1498',
	'300',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1499',
	'300',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1500',
	'300',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'61',
  	'アンケート 61',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'301',
  	'61',
  	'1',
  	'問題61-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1501',
	'301',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1502',
	'301',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1503',
	'301',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1504',
	'301',
  	'4',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1505',
	'301',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'302',
  	'61',
  	'2',
  	'問題61-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1506',
	'302',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1507',
	'302',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1508',
	'302',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1509',
	'302',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1510',
	'302',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'303',
  	'61',
  	'3',
  	'問題61-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1511',
	'303',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1512',
	'303',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1513',
	'303',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1514',
	'303',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1515',
	'303',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'304',
  	'61',
  	'4',
  	'問題61-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1516',
	'304',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1517',
	'304',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1518',
	'304',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1519',
	'304',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1520',
	'304',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'305',
  	'61',
  	'5',
  	'問題61-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1521',
	'305',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1522',
	'305',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1523',
	'305',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1524',
	'305',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1525',
	'305',
  	'5',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'62',
  	'アンケート 62',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'306',
  	'62',
  	'1',
  	'問題62-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1526',
	'306',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1527',
	'306',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1528',
	'306',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1529',
	'306',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1530',
	'306',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'307',
  	'62',
  	'2',
  	'問題62-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1531',
	'307',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1532',
	'307',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1533',
	'307',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1534',
	'307',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1535',
	'307',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'308',
  	'62',
  	'3',
  	'問題62-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1536',
	'308',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1537',
	'308',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1538',
	'308',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1539',
	'308',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1540',
	'308',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'309',
  	'62',
  	'4',
  	'問題62-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1541',
	'309',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1542',
	'309',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1543',
	'309',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1544',
	'309',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1545',
	'309',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'310',
  	'62',
  	'5',
  	'問題62-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1546',
	'310',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1547',
	'310',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1548',
	'310',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1549',
	'310',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1550',
	'310',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'63',
  	'アンケート 63',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'311',
  	'63',
  	'1',
  	'問題63-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1551',
	'311',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1552',
	'311',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1553',
	'311',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1554',
	'311',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1555',
	'311',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'312',
  	'63',
  	'2',
  	'問題63-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1556',
	'312',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1557',
	'312',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1558',
	'312',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1559',
	'312',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1560',
	'312',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'313',
  	'63',
  	'3',
  	'問題63-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1561',
	'313',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1562',
	'313',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1563',
	'313',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1564',
	'313',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1565',
	'313',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'314',
  	'63',
  	'4',
  	'問題63-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1566',
	'314',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1567',
	'314',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1568',
	'314',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1569',
	'314',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1570',
	'314',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'315',
  	'63',
  	'5',
  	'問題63-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1571',
	'315',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1572',
	'315',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1573',
	'315',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1574',
	'315',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1575',
	'315',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'64',
  	'アンケート 64',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'316',
  	'64',
  	'1',
  	'問題64-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1576',
	'316',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1577',
	'316',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1578',
	'316',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1579',
	'316',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1580',
	'316',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'317',
  	'64',
  	'2',
  	'問題64-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1581',
	'317',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1582',
	'317',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1583',
	'317',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1584',
	'317',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1585',
	'317',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'318',
  	'64',
  	'3',
  	'問題64-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1586',
	'318',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1587',
	'318',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1588',
	'318',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1589',
	'318',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1590',
	'318',
  	'5',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'319',
  	'64',
  	'4',
  	'問題64-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1591',
	'319',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1592',
	'319',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1593',
	'319',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1594',
	'319',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1595',
	'319',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'320',
  	'64',
  	'5',
  	'問題64-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1596',
	'320',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1597',
	'320',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1598',
	'320',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1599',
	'320',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1600',
	'320',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'65',
  	'アンケート 65',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'321',
  	'65',
  	'1',
  	'問題65-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1601',
	'321',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1602',
	'321',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1603',
	'321',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1604',
	'321',
  	'4',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1605',
	'321',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'322',
  	'65',
  	'2',
  	'問題65-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1606',
	'322',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1607',
	'322',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1608',
	'322',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1609',
	'322',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1610',
	'322',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'323',
  	'65',
  	'3',
  	'問題65-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1611',
	'323',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1612',
	'323',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1613',
	'323',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1614',
	'323',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1615',
	'323',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'324',
  	'65',
  	'4',
  	'問題65-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1616',
	'324',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1617',
	'324',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1618',
	'324',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1619',
	'324',
  	'4',
  	'AAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1620',
	'324',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'325',
  	'65',
  	'5',
  	'問題65-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1621',
	'325',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1622',
	'325',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1623',
	'325',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1624',
	'325',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1625',
	'325',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'66',
  	'アンケート 66',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'326',
  	'66',
  	'1',
  	'問題66-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1626',
	'326',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1627',
	'326',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1628',
	'326',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1629',
	'326',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1630',
	'326',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'327',
  	'66',
  	'2',
  	'問題66-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1631',
	'327',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1632',
	'327',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1633',
	'327',
  	'3',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1634',
	'327',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1635',
	'327',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'328',
  	'66',
  	'3',
  	'問題66-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1636',
	'328',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1637',
	'328',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1638',
	'328',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1639',
	'328',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1640',
	'328',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'329',
  	'66',
  	'4',
  	'問題66-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1641',
	'329',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1642',
	'329',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1643',
	'329',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1644',
	'329',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1645',
	'329',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'330',
  	'66',
  	'5',
  	'問題66-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1646',
	'330',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1647',
	'330',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1648',
	'330',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1649',
	'330',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1650',
	'330',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'67',
  	'アンケート 67',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'331',
  	'67',
  	'1',
  	'問題67-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1651',
	'331',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1652',
	'331',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1653',
	'331',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1654',
	'331',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1655',
	'331',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'332',
  	'67',
  	'2',
  	'問題67-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1656',
	'332',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1657',
	'332',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1658',
	'332',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1659',
	'332',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1660',
	'332',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'333',
  	'67',
  	'3',
  	'問題67-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1661',
	'333',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1662',
	'333',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1663',
	'333',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1664',
	'333',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1665',
	'333',
  	'5',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'334',
  	'67',
  	'4',
  	'問題67-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1666',
	'334',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1667',
	'334',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1668',
	'334',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1669',
	'334',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1670',
	'334',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'335',
  	'67',
  	'5',
  	'問題67-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1671',
	'335',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1672',
	'335',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1673',
	'335',
  	'3',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1674',
	'335',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1675',
	'335',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'68',
  	'アンケート 68',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'336',
  	'68',
  	'1',
  	'問題68-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1676',
	'336',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1677',
	'336',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1678',
	'336',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1679',
	'336',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1680',
	'336',
  	'5',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'337',
  	'68',
  	'2',
  	'問題68-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1681',
	'337',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1682',
	'337',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1683',
	'337',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1684',
	'337',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1685',
	'337',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'338',
  	'68',
  	'3',
  	'問題68-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1686',
	'338',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1687',
	'338',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1688',
	'338',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1689',
	'338',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1690',
	'338',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'339',
  	'68',
  	'4',
  	'問題68-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1691',
	'339',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1692',
	'339',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1693',
	'339',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1694',
	'339',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1695',
	'339',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'340',
  	'68',
  	'5',
  	'問題68-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1696',
	'340',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1697',
	'340',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1698',
	'340',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1699',
	'340',
  	'4',
  	'AAAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1700',
	'340',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'69',
  	'アンケート 69',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'341',
  	'69',
  	'1',
  	'問題69-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1701',
	'341',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1702',
	'341',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1703',
	'341',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1704',
	'341',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1705',
	'341',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'342',
  	'69',
  	'2',
  	'問題69-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1706',
	'342',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1707',
	'342',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1708',
	'342',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1709',
	'342',
  	'4',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1710',
	'342',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'343',
  	'69',
  	'3',
  	'問題69-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1711',
	'343',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1712',
	'343',
  	'2',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1713',
	'343',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1714',
	'343',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1715',
	'343',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'344',
  	'69',
  	'4',
  	'問題69-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1716',
	'344',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1717',
	'344',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1718',
	'344',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1719',
	'344',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1720',
	'344',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'345',
  	'69',
  	'5',
  	'問題69-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1721',
	'345',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1722',
	'345',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1723',
	'345',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1724',
	'345',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1725',
	'345',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'70',
  	'アンケート 70',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'346',
  	'70',
  	'1',
  	'問題70-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1726',
	'346',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1727',
	'346',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1728',
	'346',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1729',
	'346',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1730',
	'346',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'347',
  	'70',
  	'2',
  	'問題70-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1731',
	'347',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1732',
	'347',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1733',
	'347',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1734',
	'347',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1735',
	'347',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'348',
  	'70',
  	'3',
  	'問題70-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1736',
	'348',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1737',
	'348',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1738',
	'348',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1739',
	'348',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1740',
	'348',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'349',
  	'70',
  	'4',
  	'問題70-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1741',
	'349',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1742',
	'349',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1743',
	'349',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1744',
	'349',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1745',
	'349',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'350',
  	'70',
  	'5',
  	'問題70-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1746',
	'350',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1747',
	'350',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1748',
	'350',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1749',
	'350',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1750',
	'350',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'71',
  	'アンケート 71',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'351',
  	'71',
  	'1',
  	'問題71-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1751',
	'351',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1752',
	'351',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1753',
	'351',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1754',
	'351',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1755',
	'351',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'352',
  	'71',
  	'2',
  	'問題71-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1756',
	'352',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1757',
	'352',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1758',
	'352',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1759',
	'352',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1760',
	'352',
  	'5',
  	'AAAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'353',
  	'71',
  	'3',
  	'問題71-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1761',
	'353',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1762',
	'353',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1763',
	'353',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1764',
	'353',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1765',
	'353',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'354',
  	'71',
  	'4',
  	'問題71-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1766',
	'354',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1767',
	'354',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1768',
	'354',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1769',
	'354',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1770',
	'354',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'355',
  	'71',
  	'5',
  	'問題71-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1771',
	'355',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1772',
	'355',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1773',
	'355',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1774',
	'355',
  	'4',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1775',
	'355',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'72',
  	'アンケート 72',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'356',
  	'72',
  	'1',
  	'問題72-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1776',
	'356',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1777',
	'356',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1778',
	'356',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1779',
	'356',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1780',
	'356',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'357',
  	'72',
  	'2',
  	'問題72-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1781',
	'357',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1782',
	'357',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1783',
	'357',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1784',
	'357',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1785',
	'357',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'358',
  	'72',
  	'3',
  	'問題72-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1786',
	'358',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1787',
	'358',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1788',
	'358',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1789',
	'358',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1790',
	'358',
  	'5',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'359',
  	'72',
  	'4',
  	'問題72-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1791',
	'359',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1792',
	'359',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1793',
	'359',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1794',
	'359',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1795',
	'359',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'360',
  	'72',
  	'5',
  	'問題72-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1796',
	'360',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1797',
	'360',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1798',
	'360',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1799',
	'360',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1800',
	'360',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'73',
  	'アンケート 73',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'361',
  	'73',
  	'1',
  	'問題73-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1801',
	'361',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1802',
	'361',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1803',
	'361',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1804',
	'361',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1805',
	'361',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'362',
  	'73',
  	'2',
  	'問題73-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1806',
	'362',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1807',
	'362',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1808',
	'362',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1809',
	'362',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1810',
	'362',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'363',
  	'73',
  	'3',
  	'問題73-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1811',
	'363',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1812',
	'363',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1813',
	'363',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1814',
	'363',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1815',
	'363',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'364',
  	'73',
  	'4',
  	'問題73-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1816',
	'364',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1817',
	'364',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1818',
	'364',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1819',
	'364',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1820',
	'364',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'365',
  	'73',
  	'5',
  	'問題73-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1821',
	'365',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1822',
	'365',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1823',
	'365',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1824',
	'365',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1825',
	'365',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'74',
  	'アンケート 74',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'366',
  	'74',
  	'1',
  	'問題74-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1826',
	'366',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1827',
	'366',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1828',
	'366',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1829',
	'366',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1830',
	'366',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'367',
  	'74',
  	'2',
  	'問題74-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1831',
	'367',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1832',
	'367',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1833',
	'367',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1834',
	'367',
  	'4',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1835',
	'367',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'368',
  	'74',
  	'3',
  	'問題74-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1836',
	'368',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1837',
	'368',
  	'2',
  	'AAAAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1838',
	'368',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1839',
	'368',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1840',
	'368',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'369',
  	'74',
  	'4',
  	'問題74-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1841',
	'369',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1842',
	'369',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1843',
	'369',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1844',
	'369',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1845',
	'369',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'370',
  	'74',
  	'5',
  	'問題74-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1846',
	'370',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1847',
	'370',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1848',
	'370',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1849',
	'370',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1850',
	'370',
  	'5',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'75',
  	'アンケート 75',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'371',
  	'75',
  	'1',
  	'問題75-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1851',
	'371',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1852',
	'371',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1853',
	'371',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1854',
	'371',
  	'4',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1855',
	'371',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'372',
  	'75',
  	'2',
  	'問題75-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1856',
	'372',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1857',
	'372',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1858',
	'372',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1859',
	'372',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1860',
	'372',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'373',
  	'75',
  	'3',
  	'問題75-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1861',
	'373',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1862',
	'373',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1863',
	'373',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1864',
	'373',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1865',
	'373',
  	'5',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'374',
  	'75',
  	'4',
  	'問題75-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1866',
	'374',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1867',
	'374',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1868',
	'374',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1869',
	'374',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1870',
	'374',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'375',
  	'75',
  	'5',
  	'問題75-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1871',
	'375',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1872',
	'375',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1873',
	'375',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1874',
	'375',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1875',
	'375',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'76',
  	'アンケート 76',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'376',
  	'76',
  	'1',
  	'問題76-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1876',
	'376',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1877',
	'376',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1878',
	'376',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1879',
	'376',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1880',
	'376',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'377',
  	'76',
  	'2',
  	'問題76-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1881',
	'377',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1882',
	'377',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1883',
	'377',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1884',
	'377',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1885',
	'377',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'378',
  	'76',
  	'3',
  	'問題76-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1886',
	'378',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1887',
	'378',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1888',
	'378',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1889',
	'378',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1890',
	'378',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'379',
  	'76',
  	'4',
  	'問題76-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1891',
	'379',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1892',
	'379',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1893',
	'379',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1894',
	'379',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1895',
	'379',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'380',
  	'76',
  	'5',
  	'問題76-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1896',
	'380',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1897',
	'380',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1898',
	'380',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1899',
	'380',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1900',
	'380',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'77',
  	'アンケート 77',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'381',
  	'77',
  	'1',
  	'問題77-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1901',
	'381',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1902',
	'381',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1903',
	'381',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1904',
	'381',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1905',
	'381',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'382',
  	'77',
  	'2',
  	'問題77-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1906',
	'382',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1907',
	'382',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1908',
	'382',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1909',
	'382',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1910',
	'382',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'383',
  	'77',
  	'3',
  	'問題77-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1911',
	'383',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1912',
	'383',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1913',
	'383',
  	'3',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1914',
	'383',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1915',
	'383',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'384',
  	'77',
  	'4',
  	'問題77-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1916',
	'384',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1917',
	'384',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1918',
	'384',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1919',
	'384',
  	'4',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1920',
	'384',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'385',
  	'77',
  	'5',
  	'問題77-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1921',
	'385',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1922',
	'385',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1923',
	'385',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1924',
	'385',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1925',
	'385',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'78',
  	'アンケート 78',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'386',
  	'78',
  	'1',
  	'問題78-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1926',
	'386',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1927',
	'386',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1928',
	'386',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1929',
	'386',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1930',
	'386',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'387',
  	'78',
  	'2',
  	'問題78-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1931',
	'387',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1932',
	'387',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1933',
	'387',
  	'3',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1934',
	'387',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1935',
	'387',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'388',
  	'78',
  	'3',
  	'問題78-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1936',
	'388',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1937',
	'388',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1938',
	'388',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1939',
	'388',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1940',
	'388',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'389',
  	'78',
  	'4',
  	'問題78-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1941',
	'389',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1942',
	'389',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1943',
	'389',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1944',
	'389',
  	'4',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1945',
	'389',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'390',
  	'78',
  	'5',
  	'問題78-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1946',
	'390',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1947',
	'390',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1948',
	'390',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1949',
	'390',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1950',
	'390',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'79',
  	'アンケート 79',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'391',
  	'79',
  	'1',
  	'問題79-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1951',
	'391',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1952',
	'391',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1953',
	'391',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1954',
	'391',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1955',
	'391',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'392',
  	'79',
  	'2',
  	'問題79-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1956',
	'392',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1957',
	'392',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1958',
	'392',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1959',
	'392',
  	'4',
  	'AAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1960',
	'392',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'393',
  	'79',
  	'3',
  	'問題79-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1961',
	'393',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1962',
	'393',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1963',
	'393',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1964',
	'393',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1965',
	'393',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'394',
  	'79',
  	'4',
  	'問題79-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1966',
	'394',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1967',
	'394',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1968',
	'394',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1969',
	'394',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1970',
	'394',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'395',
  	'79',
  	'5',
  	'問題79-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1971',
	'395',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1972',
	'395',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1973',
	'395',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1974',
	'395',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1975',
	'395',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'80',
  	'アンケート 80',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'396',
  	'80',
  	'1',
  	'問題80-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1976',
	'396',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1977',
	'396',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1978',
	'396',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1979',
	'396',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1980',
	'396',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'397',
  	'80',
  	'2',
  	'問題80-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1981',
	'397',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1982',
	'397',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1983',
	'397',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1984',
	'397',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1985',
	'397',
  	'5',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'398',
  	'80',
  	'3',
  	'問題80-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1986',
	'398',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1987',
	'398',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1988',
	'398',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1989',
	'398',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1990',
	'398',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'399',
  	'80',
  	'4',
  	'問題80-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1991',
	'399',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1992',
	'399',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1993',
	'399',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1994',
	'399',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1995',
	'399',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'400',
  	'80',
  	'5',
  	'問題80-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1996',
	'400',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1997',
	'400',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1998',
	'400',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'1999',
	'400',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2000',
	'400',
  	'5',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'81',
  	'アンケート 81',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'401',
  	'81',
  	'1',
  	'問題81-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2001',
	'401',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2002',
	'401',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2003',
	'401',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2004',
	'401',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2005',
	'401',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'402',
  	'81',
  	'2',
  	'問題81-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2006',
	'402',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2007',
	'402',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2008',
	'402',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2009',
	'402',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2010',
	'402',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'403',
  	'81',
  	'3',
  	'問題81-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2011',
	'403',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2012',
	'403',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2013',
	'403',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2014',
	'403',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2015',
	'403',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'404',
  	'81',
  	'4',
  	'問題81-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2016',
	'404',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2017',
	'404',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2018',
	'404',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2019',
	'404',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2020',
	'404',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'405',
  	'81',
  	'5',
  	'問題81-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2021',
	'405',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2022',
	'405',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2023',
	'405',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2024',
	'405',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2025',
	'405',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'82',
  	'アンケート 82',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'406',
  	'82',
  	'1',
  	'問題82-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2026',
	'406',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2027',
	'406',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2028',
	'406',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2029',
	'406',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2030',
	'406',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'407',
  	'82',
  	'2',
  	'問題82-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2031',
	'407',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2032',
	'407',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2033',
	'407',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2034',
	'407',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2035',
	'407',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'408',
  	'82',
  	'3',
  	'問題82-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2036',
	'408',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2037',
	'408',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2038',
	'408',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2039',
	'408',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2040',
	'408',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'409',
  	'82',
  	'4',
  	'問題82-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2041',
	'409',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2042',
	'409',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2043',
	'409',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2044',
	'409',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2045',
	'409',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'410',
  	'82',
  	'5',
  	'問題82-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2046',
	'410',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2047',
	'410',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2048',
	'410',
  	'3',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2049',
	'410',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2050',
	'410',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'83',
  	'アンケート 83',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'411',
  	'83',
  	'1',
  	'問題83-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2051',
	'411',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2052',
	'411',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2053',
	'411',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2054',
	'411',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2055',
	'411',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'412',
  	'83',
  	'2',
  	'問題83-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2056',
	'412',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2057',
	'412',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2058',
	'412',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2059',
	'412',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2060',
	'412',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'413',
  	'83',
  	'3',
  	'問題83-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2061',
	'413',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2062',
	'413',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2063',
	'413',
  	'3',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2064',
	'413',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2065',
	'413',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'414',
  	'83',
  	'4',
  	'問題83-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2066',
	'414',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2067',
	'414',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2068',
	'414',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2069',
	'414',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2070',
	'414',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'415',
  	'83',
  	'5',
  	'問題83-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2071',
	'415',
  	'1',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2072',
	'415',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2073',
	'415',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2074',
	'415',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2075',
	'415',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'84',
  	'アンケート 84',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'416',
  	'84',
  	'1',
  	'問題84-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2076',
	'416',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2077',
	'416',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2078',
	'416',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2079',
	'416',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2080',
	'416',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'417',
  	'84',
  	'2',
  	'問題84-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2081',
	'417',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2082',
	'417',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2083',
	'417',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2084',
	'417',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2085',
	'417',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'418',
  	'84',
  	'3',
  	'問題84-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2086',
	'418',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2087',
	'418',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2088',
	'418',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2089',
	'418',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2090',
	'418',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'419',
  	'84',
  	'4',
  	'問題84-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2091',
	'419',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2092',
	'419',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2093',
	'419',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2094',
	'419',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2095',
	'419',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'420',
  	'84',
  	'5',
  	'問題84-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2096',
	'420',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2097',
	'420',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2098',
	'420',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2099',
	'420',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2100',
	'420',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'85',
  	'アンケート 85',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'421',
  	'85',
  	'1',
  	'問題85-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2101',
	'421',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2102',
	'421',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2103',
	'421',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2104',
	'421',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2105',
	'421',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'422',
  	'85',
  	'2',
  	'問題85-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2106',
	'422',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2107',
	'422',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2108',
	'422',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2109',
	'422',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2110',
	'422',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'423',
  	'85',
  	'3',
  	'問題85-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2111',
	'423',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2112',
	'423',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2113',
	'423',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2114',
	'423',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2115',
	'423',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'424',
  	'85',
  	'4',
  	'問題85-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2116',
	'424',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2117',
	'424',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2118',
	'424',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2119',
	'424',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2120',
	'424',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'425',
  	'85',
  	'5',
  	'問題85-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2121',
	'425',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2122',
	'425',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2123',
	'425',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2124',
	'425',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2125',
	'425',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'86',
  	'アンケート 86',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'426',
  	'86',
  	'1',
  	'問題86-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2126',
	'426',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2127',
	'426',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2128',
	'426',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2129',
	'426',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2130',
	'426',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'427',
  	'86',
  	'2',
  	'問題86-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2131',
	'427',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2132',
	'427',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2133',
	'427',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2134',
	'427',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2135',
	'427',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'428',
  	'86',
  	'3',
  	'問題86-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2136',
	'428',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2137',
	'428',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2138',
	'428',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2139',
	'428',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2140',
	'428',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'429',
  	'86',
  	'4',
  	'問題86-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2141',
	'429',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2142',
	'429',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2143',
	'429',
  	'3',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2144',
	'429',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2145',
	'429',
  	'5',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'430',
  	'86',
  	'5',
  	'問題86-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2146',
	'430',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2147',
	'430',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2148',
	'430',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2149',
	'430',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2150',
	'430',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'87',
  	'アンケート 87',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'431',
  	'87',
  	'1',
  	'問題87-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2151',
	'431',
  	'1',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2152',
	'431',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2153',
	'431',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2154',
	'431',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2155',
	'431',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'432',
  	'87',
  	'2',
  	'問題87-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2156',
	'432',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2157',
	'432',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2158',
	'432',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2159',
	'432',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2160',
	'432',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'433',
  	'87',
  	'3',
  	'問題87-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2161',
	'433',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2162',
	'433',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2163',
	'433',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2164',
	'433',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2165',
	'433',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'434',
  	'87',
  	'4',
  	'問題87-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2166',
	'434',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2167',
	'434',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2168',
	'434',
  	'3',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2169',
	'434',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2170',
	'434',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'435',
  	'87',
  	'5',
  	'問題87-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2171',
	'435',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2172',
	'435',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2173',
	'435',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2174',
	'435',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2175',
	'435',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'88',
  	'アンケート 88',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'436',
  	'88',
  	'1',
  	'問題88-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2176',
	'436',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2177',
	'436',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2178',
	'436',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2179',
	'436',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2180',
	'436',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'437',
  	'88',
  	'2',
  	'問題88-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2181',
	'437',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2182',
	'437',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2183',
	'437',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2184',
	'437',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2185',
	'437',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'438',
  	'88',
  	'3',
  	'問題88-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2186',
	'438',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2187',
	'438',
  	'2',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2188',
	'438',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2189',
	'438',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2190',
	'438',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'439',
  	'88',
  	'4',
  	'問題88-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2191',
	'439',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2192',
	'439',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2193',
	'439',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2194',
	'439',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2195',
	'439',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'440',
  	'88',
  	'5',
  	'問題88-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2196',
	'440',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2197',
	'440',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2198',
	'440',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2199',
	'440',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2200',
	'440',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'89',
  	'アンケート 89',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'441',
  	'89',
  	'1',
  	'問題89-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2201',
	'441',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2202',
	'441',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2203',
	'441',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2204',
	'441',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2205',
	'441',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'442',
  	'89',
  	'2',
  	'問題89-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2206',
	'442',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2207',
	'442',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2208',
	'442',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2209',
	'442',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2210',
	'442',
  	'5',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'443',
  	'89',
  	'3',
  	'問題89-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2211',
	'443',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2212',
	'443',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2213',
	'443',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2214',
	'443',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2215',
	'443',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'444',
  	'89',
  	'4',
  	'問題89-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2216',
	'444',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2217',
	'444',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2218',
	'444',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2219',
	'444',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2220',
	'444',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'445',
  	'89',
  	'5',
  	'問題89-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2221',
	'445',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2222',
	'445',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2223',
	'445',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2224',
	'445',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2225',
	'445',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'90',
  	'アンケート 90',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'446',
  	'90',
  	'1',
  	'問題90-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2226',
	'446',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2227',
	'446',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2228',
	'446',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2229',
	'446',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2230',
	'446',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'447',
  	'90',
  	'2',
  	'問題90-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2231',
	'447',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2232',
	'447',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2233',
	'447',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2234',
	'447',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2235',
	'447',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'448',
  	'90',
  	'3',
  	'問題90-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2236',
	'448',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2237',
	'448',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2238',
	'448',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2239',
	'448',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2240',
	'448',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'449',
  	'90',
  	'4',
  	'問題90-4です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2241',
	'449',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2242',
	'449',
  	'2',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2243',
	'449',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2244',
	'449',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2245',
	'449',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'450',
  	'90',
  	'5',
  	'問題90-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2246',
	'450',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2247',
	'450',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2248',
	'450',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2249',
	'450',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2250',
	'450',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'91',
  	'アンケート 91',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'451',
  	'91',
  	'1',
  	'問題91-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2251',
	'451',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2252',
	'451',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2253',
	'451',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2254',
	'451',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2255',
	'451',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'452',
  	'91',
  	'2',
  	'問題91-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2256',
	'452',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2257',
	'452',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2258',
	'452',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2259',
	'452',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2260',
	'452',
  	'5',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'453',
  	'91',
  	'3',
  	'問題91-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2261',
	'453',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2262',
	'453',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2263',
	'453',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2264',
	'453',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2265',
	'453',
  	'5',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'454',
  	'91',
  	'4',
  	'問題91-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2266',
	'454',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2267',
	'454',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2268',
	'454',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2269',
	'454',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2270',
	'454',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'455',
  	'91',
  	'5',
  	'問題91-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2271',
	'455',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2272',
	'455',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2273',
	'455',
  	'3',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2274',
	'455',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2275',
	'455',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'92',
  	'アンケート 92',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'456',
  	'92',
  	'1',
  	'問題92-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2276',
	'456',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2277',
	'456',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2278',
	'456',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2279',
	'456',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2280',
	'456',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'457',
  	'92',
  	'2',
  	'問題92-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2281',
	'457',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2282',
	'457',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2283',
	'457',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2284',
	'457',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2285',
	'457',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'458',
  	'92',
  	'3',
  	'問題92-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2286',
	'458',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2287',
	'458',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2288',
	'458',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2289',
	'458',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2290',
	'458',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'459',
  	'92',
  	'4',
  	'問題92-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2291',
	'459',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2292',
	'459',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2293',
	'459',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2294',
	'459',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2295',
	'459',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'460',
  	'92',
  	'5',
  	'問題92-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2296',
	'460',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2297',
	'460',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2298',
	'460',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2299',
	'460',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2300',
	'460',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'93',
  	'アンケート 93',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'461',
  	'93',
  	'1',
  	'問題93-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2301',
	'461',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2302',
	'461',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2303',
	'461',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2304',
	'461',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2305',
	'461',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'462',
  	'93',
  	'2',
  	'問題93-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2306',
	'462',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2307',
	'462',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2308',
	'462',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2309',
	'462',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2310',
	'462',
  	'5',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'463',
  	'93',
  	'3',
  	'問題93-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2311',
	'463',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2312',
	'463',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2313',
	'463',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2314',
	'463',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2315',
	'463',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'464',
  	'93',
  	'4',
  	'問題93-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2316',
	'464',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2317',
	'464',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2318',
	'464',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2319',
	'464',
  	'4',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2320',
	'464',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'465',
  	'93',
  	'5',
  	'問題93-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2321',
	'465',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2322',
	'465',
  	'2',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2323',
	'465',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2324',
	'465',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2325',
	'465',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'94',
  	'アンケート 94',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'466',
  	'94',
  	'1',
  	'問題94-1です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2326',
	'466',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2327',
	'466',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2328',
	'466',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2329',
	'466',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2330',
	'466',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'467',
  	'94',
  	'2',
  	'問題94-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2331',
	'467',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2332',
	'467',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2333',
	'467',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2334',
	'467',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2335',
	'467',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'468',
  	'94',
  	'3',
  	'問題94-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2336',
	'468',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2337',
	'468',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2338',
	'468',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2339',
	'468',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2340',
	'468',
  	'5',
  	'AAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'469',
  	'94',
  	'4',
  	'問題94-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2341',
	'469',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2342',
	'469',
  	'2',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2343',
	'469',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2344',
	'469',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2345',
	'469',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'470',
  	'94',
  	'5',
  	'問題94-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2346',
	'470',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2347',
	'470',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2348',
	'470',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2349',
	'470',
  	'4',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2350',
	'470',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'95',
  	'アンケート 95',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'471',
  	'95',
  	'1',
  	'問題95-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2351',
	'471',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2352',
	'471',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2353',
	'471',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2354',
	'471',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2355',
	'471',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'472',
  	'95',
  	'2',
  	'問題95-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2356',
	'472',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2357',
	'472',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2358',
	'472',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2359',
	'472',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2360',
	'472',
  	'5',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'473',
  	'95',
  	'3',
  	'問題95-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2361',
	'473',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2362',
	'473',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2363',
	'473',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2364',
	'473',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2365',
	'473',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'474',
  	'95',
  	'4',
  	'問題95-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2366',
	'474',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2367',
	'474',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2368',
	'474',
  	'3',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2369',
	'474',
  	'4',
  	'AAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2370',
	'474',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'475',
  	'95',
  	'5',
  	'問題95-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2371',
	'475',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2372',
	'475',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2373',
	'475',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2374',
	'475',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2375',
	'475',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'96',
  	'アンケート 96',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'476',
  	'96',
  	'1',
  	'問題96-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2376',
	'476',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2377',
	'476',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2378',
	'476',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2379',
	'476',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2380',
	'476',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'477',
  	'96',
  	'2',
  	'問題96-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2381',
	'477',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2382',
	'477',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2383',
	'477',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2384',
	'477',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2385',
	'477',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'478',
  	'96',
  	'3',
  	'問題96-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2386',
	'478',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2387',
	'478',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2388',
	'478',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2389',
	'478',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2390',
	'478',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'479',
  	'96',
  	'4',
  	'問題96-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2391',
	'479',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2392',
	'479',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2393',
	'479',
  	'3',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2394',
	'479',
  	'4',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2395',
	'479',
  	'5',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'480',
  	'96',
  	'5',
  	'問題96-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2396',
	'480',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2397',
	'480',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2398',
	'480',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2399',
	'480',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2400',
	'480',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'97',
  	'アンケート 97',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'481',
  	'97',
  	'1',
  	'問題97-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2401',
	'481',
  	'1',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2402',
	'481',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2403',
	'481',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2404',
	'481',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2405',
	'481',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'482',
  	'97',
  	'2',
  	'問題97-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2406',
	'482',
  	'1',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2407',
	'482',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2408',
	'482',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2409',
	'482',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2410',
	'482',
  	'5',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'483',
  	'97',
  	'3',
  	'問題97-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2411',
	'483',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2412',
	'483',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2413',
	'483',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2414',
	'483',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2415',
	'483',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'484',
  	'97',
  	'4',
  	'問題97-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2416',
	'484',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2417',
	'484',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2418',
	'484',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2419',
	'484',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2420',
	'484',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'485',
  	'97',
  	'5',
  	'問題97-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2421',
	'485',
  	'1',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2422',
	'485',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2423',
	'485',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2424',
	'485',
  	'4',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2425',
	'485',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'98',
  	'アンケート 98',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'486',
  	'98',
  	'1',
  	'問題98-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2426',
	'486',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2427',
	'486',
  	'2',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2428',
	'486',
  	'3',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2429',
	'486',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2430',
	'486',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'487',
  	'98',
  	'2',
  	'問題98-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2431',
	'487',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2432',
	'487',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2433',
	'487',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2434',
	'487',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2435',
	'487',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'488',
  	'98',
  	'3',
  	'問題98-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2436',
	'488',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2437',
	'488',
  	'2',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2438',
	'488',
  	'3',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2439',
	'488',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2440',
	'488',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'489',
  	'98',
  	'4',
  	'問題98-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2441',
	'489',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2442',
	'489',
  	'2',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2443',
	'489',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2444',
	'489',
  	'4',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2445',
	'489',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'490',
  	'98',
  	'5',
  	'問題98-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2446',
	'490',
  	'1',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2447',
	'490',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2448',
	'490',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2449',
	'490',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2450',
	'490',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'99',
  	'アンケート 99',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'491',
  	'99',
  	'1',
  	'問題99-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2451',
	'491',
  	'1',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2452',
	'491',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2453',
	'491',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2454',
	'491',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2455',
	'491',
  	'5',
  	'AAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'492',
  	'99',
  	'2',
  	'問題99-2です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2456',
	'492',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2457',
	'492',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2458',
	'492',
  	'3',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2459',
	'492',
  	'4',
  	'AAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2460',
	'492',
  	'5',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'493',
  	'99',
  	'3',
  	'問題99-3です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2461',
	'493',
  	'1',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2462',
	'493',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2463',
	'493',
  	'3',
  	'AAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2464',
	'493',
  	'4',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2465',
	'493',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'494',
  	'99',
  	'4',
  	'問題99-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2466',
	'494',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2467',
	'494',
  	'2',
  	'AAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2468',
	'494',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2469',
	'494',
  	'4',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2470',
	'494',
  	'5',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'495',
  	'99',
  	'5',
  	'問題99-5です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2471',
	'495',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2472',
	'495',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2473',
	'495',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2474',
	'495',
  	'4',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2475',
	'495',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_enquetes
		  (id,name,start_date,poll_or_question, created, modified)
VALUES
(
	'100',
  	'アンケート 100',
  	'2013-12-01',
  	'1',
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'496',
  	'100',
  	'1',
  	'問題100-1です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2476',
	'496',
  	'1',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2477',
	'496',
  	'2',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2478',
	'496',
  	'3',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2479',
	'496',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2480',
	'496',
  	'5',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'497',
  	'100',
  	'2',
  	'問題100-2です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2481',
	'497',
  	'1',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2482',
	'497',
  	'2',
  	'AAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2483',
	'497',
  	'3',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2484',
	'497',
  	'4',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2485',
	'497',
  	'5',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'498',
  	'100',
  	'3',
  	'問題100-3です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2486',
	'498',
  	'1',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2487',
	'498',
  	'2',
  	'AAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2488',
	'498',
  	'3',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2489',
	'498',
  	'4',
  	'AAAAAAAAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2490',
	'498',
  	'5',
  	'AA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'499',
  	'100',
  	'4',
  	'問題100-4です。',
	'1',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2491',
	'499',
  	'1',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2492',
	'499',
  	'2',
  	'AAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2493',
	'499',
  	'3',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2494',
	'499',
  	'4',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2495',
	'499',
  	'5',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer, created, modified)
VALUES
(
	'500',
  	'100',
  	'5',
  	'問題100-5です。',
	'2',
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2496',
	'500',
  	'1',
  	'A',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2497',
	'500',
  	'2',
  	'AAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2498',
	'500',
  	'3',
  	'AAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2499',
	'500',
  	'4',
  	'AAAAAAAAA',
  	 false,
	now(),
	now()
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag, created, modified)
VALUES
(
  	'2500',
	'500',
  	'5',
  	'AAAA',
  	 false,
	now(),
	now()
);
