USE wordpress;

TRUNCATE table wp_enquetes;

TRUNCATE table wp_questions;

TRUNCATE table wp_selections;

INSERT INTO wp_enquetes
(id,name,start_date,end_date,poll_or_question)
VALUES
(
	'1',
  	'アンケート 1',
  	'2013-12-01',
  	'2013-12-31',
  	'1'
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'1',
  	'1',
  	'1',
  	'問題1-1です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'1',
	'1',
  	'1',
  	'選択肢1-1-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'2',
	'1',
  	'2',
  	'選択肢1-1-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'3',
	'1',
  	'3',
  	'選択肢1-1-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'4',
	'1',
  	'4',
  	'選択肢1-1-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'5',
	'1',
  	'5',
  	'選択肢1-1-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'2',
  	'1',
  	'2',
  	'問題1-2です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'6',
	'2',
  	'1',
  	'選択肢1-2-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'7',
	'2',
  	'2',
  	'選択肢1-2-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'8',
	'2',
  	'3',
  	'選択肢1-2-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'9',
	'2',
  	'4',
  	'選択肢1-2-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'10',
	'2',
  	'5',
  	'選択肢1-2-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'3',
  	'1',
  	'3',
  	'問題1-3です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'11',
	'3',
  	'1',
  	'選択肢1-3-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'12',
	'3',
  	'2',
  	'選択肢1-3-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'13',
	'3',
  	'3',
  	'選択肢1-3-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'14',
	'3',
  	'4',
  	'選択肢1-3-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'15',
	'3',
  	'5',
  	'選択肢1-3-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'4',
  	'1',
  	'4',
  	'問題1-4です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'16',
	'4',
  	'1',
  	'選択肢1-4-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'17',
	'4',
  	'2',
  	'選択肢1-4-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'18',
	'4',
  	'3',
  	'選択肢1-4-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'19',
	'4',
  	'4',
  	'選択肢1-4-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'20',
	'4',
  	'5',
  	'選択肢1-4-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'5',
  	'1',
  	'5',
  	'問題1-5です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'21',
	'5',
  	'1',
  	'選択肢1-5-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'22',
	'5',
  	'2',
  	'選択肢1-5-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'23',
	'5',
  	'3',
  	'選択肢1-5-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'24',
	'5',
  	'4',
  	'選択肢1-5-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'25',
	'5',
  	'5',
  	'選択肢1-5-5です。',
  	false
);
INSERT INTO wp_enquetes
(id,name,start_date,end_date,poll_or_question)
VALUES
(
	'2',
  	'アンケート 2',
  	'2013-12-01',
  	'2013-12-31',
  	'1'
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'6',
  	'2',
  	'1',
  	'問題2-1です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'26',
	'6',
  	'1',
  	'選択肢2-1-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'27',
	'6',
  	'2',
  	'選択肢2-1-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'28',
	'6',
  	'3',
  	'選択肢2-1-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'29',
	'6',
  	'4',
  	'選択肢2-1-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'30',
	'6',
  	'5',
  	'選択肢2-1-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'7',
  	'2',
  	'2',
  	'問題2-2です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'31',
	'7',
  	'1',
  	'選択肢2-2-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'32',
	'7',
  	'2',
  	'選択肢2-2-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'33',
	'7',
  	'3',
  	'選択肢2-2-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'34',
	'7',
  	'4',
  	'選択肢2-2-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'35',
	'7',
  	'5',
  	'選択肢2-2-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'8',
  	'2',
  	'3',
  	'問題2-3です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'36',
	'8',
  	'1',
  	'選択肢2-3-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'37',
	'8',
  	'2',
  	'選択肢2-3-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'38',
	'8',
  	'3',
  	'選択肢2-3-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'39',
	'8',
  	'4',
  	'選択肢2-3-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'40',
	'8',
  	'5',
  	'選択肢2-3-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'9',
  	'2',
  	'4',
  	'問題2-4です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'41',
	'9',
  	'1',
  	'選択肢2-4-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'42',
	'9',
  	'2',
  	'選択肢2-4-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'43',
	'9',
  	'3',
  	'選択肢2-4-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'44',
	'9',
  	'4',
  	'選択肢2-4-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'45',
	'9',
  	'5',
  	'選択肢2-4-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'10',
  	'2',
  	'5',
  	'問題2-5です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'46',
	'10',
  	'1',
  	'選択肢2-5-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'47',
	'10',
  	'2',
  	'選択肢2-5-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'48',
	'10',
  	'3',
  	'選択肢2-5-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'49',
	'10',
  	'4',
  	'選択肢2-5-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'50',
	'10',
  	'5',
  	'選択肢2-5-5です。',
  	false
);
INSERT INTO wp_enquetes
(id,name,start_date,end_date,poll_or_question)
VALUES
(
	'3',
  	'アンケート 3',
  	'2013-12-01',
  	'2013-12-31',
  	'1'
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'11',
  	'3',
  	'1',
  	'問題3-1です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'51',
	'11',
  	'1',
  	'選択肢3-1-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'52',
	'11',
  	'2',
  	'選択肢3-1-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'53',
	'11',
  	'3',
  	'選択肢3-1-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'54',
	'11',
  	'4',
  	'選択肢3-1-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'55',
	'11',
  	'5',
  	'選択肢3-1-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'12',
  	'3',
  	'2',
  	'問題3-2です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'56',
	'12',
  	'1',
  	'選択肢3-2-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'57',
	'12',
  	'2',
  	'選択肢3-2-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'58',
	'12',
  	'3',
  	'選択肢3-2-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'59',
	'12',
  	'4',
  	'選択肢3-2-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'60',
	'12',
  	'5',
  	'選択肢3-2-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'13',
  	'3',
  	'3',
  	'問題3-3です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'61',
	'13',
  	'1',
  	'選択肢3-3-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'62',
	'13',
  	'2',
  	'選択肢3-3-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'63',
	'13',
  	'3',
  	'選択肢3-3-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'64',
	'13',
  	'4',
  	'選択肢3-3-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'65',
	'13',
  	'5',
  	'選択肢3-3-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'14',
  	'3',
  	'4',
  	'問題3-4です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'66',
	'14',
  	'1',
  	'選択肢3-4-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'67',
	'14',
  	'2',
  	'選択肢3-4-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'68',
	'14',
  	'3',
  	'選択肢3-4-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'69',
	'14',
  	'4',
  	'選択肢3-4-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'70',
	'14',
  	'5',
  	'選択肢3-4-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'15',
  	'3',
  	'5',
  	'問題3-5です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'71',
	'15',
  	'1',
  	'選択肢3-5-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'72',
	'15',
  	'2',
  	'選択肢3-5-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'73',
	'15',
  	'3',
  	'選択肢3-5-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'74',
	'15',
  	'4',
  	'選択肢3-5-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'75',
	'15',
  	'5',
  	'選択肢3-5-5です。',
  	false
);
INSERT INTO wp_enquetes
(id,name,start_date,end_date,poll_or_question)
VALUES
(
	'4',
  	'アンケート 4',
  	'2013-12-01',
  	'2013-12-31',
  	'1'
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'16',
  	'4',
  	'1',
  	'問題4-1です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'76',
	'16',
  	'1',
  	'選択肢4-1-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'77',
	'16',
  	'2',
  	'選択肢4-1-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'78',
	'16',
  	'3',
  	'選択肢4-1-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'79',
	'16',
  	'4',
  	'選択肢4-1-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'80',
	'16',
  	'5',
  	'選択肢4-1-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'17',
  	'4',
  	'2',
  	'問題4-2です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'81',
	'17',
  	'1',
  	'選択肢4-2-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'82',
	'17',
  	'2',
  	'選択肢4-2-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'83',
	'17',
  	'3',
  	'選択肢4-2-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'84',
	'17',
  	'4',
  	'選択肢4-2-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'85',
	'17',
  	'5',
  	'選択肢4-2-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'18',
  	'4',
  	'3',
  	'問題4-3です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'86',
	'18',
  	'1',
  	'選択肢4-3-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'87',
	'18',
  	'2',
  	'選択肢4-3-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'88',
	'18',
  	'3',
  	'選択肢4-3-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'89',
	'18',
  	'4',
  	'選択肢4-3-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'90',
	'18',
  	'5',
  	'選択肢4-3-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'19',
  	'4',
  	'4',
  	'問題4-4です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'91',
	'19',
  	'1',
  	'選択肢4-4-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'92',
	'19',
  	'2',
  	'選択肢4-4-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'93',
	'19',
  	'3',
  	'選択肢4-4-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'94',
	'19',
  	'4',
  	'選択肢4-4-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'95',
	'19',
  	'5',
  	'選択肢4-4-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'20',
  	'4',
  	'5',
  	'問題4-5です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'96',
	'20',
  	'1',
  	'選択肢4-5-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'97',
	'20',
  	'2',
  	'選択肢4-5-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'98',
	'20',
  	'3',
  	'選択肢4-5-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'99',
	'20',
  	'4',
  	'選択肢4-5-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'100',
	'20',
  	'5',
  	'選択肢4-5-5です。',
  	false
);
INSERT INTO wp_enquetes
(id,name,start_date,end_date,poll_or_question)
VALUES
(
	'5',
  	'アンケート 5',
  	'2013-12-01',
  	'2013-12-31',
  	'1'
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'21',
  	'5',
  	'1',
  	'問題5-1です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'101',
	'21',
  	'1',
  	'選択肢5-1-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'102',
	'21',
  	'2',
  	'選択肢5-1-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'103',
	'21',
  	'3',
  	'選択肢5-1-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'104',
	'21',
  	'4',
  	'選択肢5-1-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'105',
	'21',
  	'5',
  	'選択肢5-1-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'22',
  	'5',
  	'2',
  	'問題5-2です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'106',
	'22',
  	'1',
  	'選択肢5-2-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'107',
	'22',
  	'2',
  	'選択肢5-2-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'108',
	'22',
  	'3',
  	'選択肢5-2-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'109',
	'22',
  	'4',
  	'選択肢5-2-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'110',
	'22',
  	'5',
  	'選択肢5-2-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'23',
  	'5',
  	'3',
  	'問題5-3です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'111',
	'23',
  	'1',
  	'選択肢5-3-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'112',
	'23',
  	'2',
  	'選択肢5-3-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'113',
	'23',
  	'3',
  	'選択肢5-3-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'114',
	'23',
  	'4',
  	'選択肢5-3-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'115',
	'23',
  	'5',
  	'選択肢5-3-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'24',
  	'5',
  	'4',
  	'問題5-4です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'116',
	'24',
  	'1',
  	'選択肢5-4-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'117',
	'24',
  	'2',
  	'選択肢5-4-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'118',
	'24',
  	'3',
  	'選択肢5-4-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'119',
	'24',
  	'4',
  	'選択肢5-4-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'120',
	'24',
  	'5',
  	'選択肢5-4-5です。',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'25',
  	'5',
  	'5',
  	'問題5-5です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'121',
	'25',
  	'1',
  	'選択肢5-5-1です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'122',
	'25',
  	'2',
  	'選択肢5-5-2です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'123',
	'25',
  	'3',
  	'選択肢5-5-3です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'124',
	'25',
  	'4',
  	'選択肢5-5-4です。',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'125',
	'25',
  	'5',
  	'選択肢5-5-5です。',
  	false
);
