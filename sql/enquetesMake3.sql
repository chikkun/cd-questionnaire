USE wordpress

INSERT INTO wp_enquetes
(id,name,start_date,end_date,poll_or_question)
VALUES
(
	'11',
  	'アンケート 11',
  	'2013-12-01',
  	'2013-12-31',
  	'1'
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'51',
  	'11',
  	'1',
  	'問題11-1です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'251',
	'51',
  	'1',
  	'AAAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'252',
	'51',
  	'2',
  	'AA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'253',
	'51',
  	'3',
  	'AAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'254',
	'51',
  	'4',
  	'AA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'255',
	'51',
  	'5',
  	'',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'52',
  	'11',
  	'2',
  	'問題11-2です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'256',
	'52',
  	'1',
  	'AAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'257',
	'52',
  	'2',
  	'AAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'258',
	'52',
  	'3',
  	'AAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'259',
	'52',
  	'4',
  	'AA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'260',
	'52',
  	'5',
  	'AA',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'53',
  	'11',
  	'3',
  	'問題11-3です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'261',
	'53',
  	'1',
  	'AAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'262',
	'53',
  	'2',
  	'AA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'263',
	'53',
  	'3',
  	'AAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'264',
	'53',
  	'4',
  	'AAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'265',
	'53',
  	'5',
  	'AAAAA',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'54',
  	'11',
  	'4',
  	'問題11-4です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'266',
	'54',
  	'1',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'267',
	'54',
  	'2',
  	'AA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'268',
	'54',
  	'3',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'269',
	'54',
  	'4',
  	'AAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'270',
	'54',
  	'5',
  	'AA',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'55',
  	'11',
  	'5',
  	'問題11-5です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'271',
	'55',
  	'1',
  	'AAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'272',
	'55',
  	'2',
  	'AA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'273',
	'55',
  	'3',
  	'',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'274',
	'55',
  	'4',
  	'AAAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'275',
	'55',
  	'5',
  	'AA',
  	false
);
INSERT INTO wp_enquetes
(id,name,start_date,end_date,poll_or_question)
VALUES
(
	'12',
  	'アンケート 12',
  	'2013-12-01',
  	'2013-12-31',
  	'1'
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'56',
  	'12',
  	'1',
  	'問題12-1です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'276',
	'56',
  	'1',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'277',
	'56',
  	'2',
  	'',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'278',
	'56',
  	'3',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'279',
	'56',
  	'4',
  	'AAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'280',
	'56',
  	'5',
  	'AA',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'57',
  	'12',
  	'2',
  	'問題12-2です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'281',
	'57',
  	'1',
  	'AAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'282',
	'57',
  	'2',
  	'AAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'283',
	'57',
  	'3',
  	'AAAAAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'284',
	'57',
  	'4',
  	'AAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'285',
	'57',
  	'5',
  	'',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'58',
  	'12',
  	'3',
  	'問題12-3です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'286',
	'58',
  	'1',
  	'',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'287',
	'58',
  	'2',
  	'AAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'288',
	'58',
  	'3',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'289',
	'58',
  	'4',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'290',
	'58',
  	'5',
  	'AAAA',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'59',
  	'12',
  	'4',
  	'問題12-4です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'291',
	'59',
  	'1',
  	'AAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'292',
	'59',
  	'2',
  	'',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'293',
	'59',
  	'3',
  	'AAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'294',
	'59',
  	'4',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'295',
	'59',
  	'5',
  	'AAAAA',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'60',
  	'12',
  	'5',
  	'問題12-5です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'296',
	'60',
  	'1',
  	'AAAAAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'297',
	'60',
  	'2',
  	'AAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'298',
	'60',
  	'3',
  	'AAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'299',
	'60',
  	'4',
  	'AAAAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'300',
	'60',
  	'5',
  	'AAAAAA',
  	false
);
INSERT INTO wp_enquetes
(id,name,start_date,end_date,poll_or_question)
VALUES
(
	'13',
  	'アンケート 13',
  	'2013-12-01',
  	'2013-12-31',
  	'1'
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'61',
  	'13',
  	'1',
  	'問題13-1です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'301',
	'61',
  	'1',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'302',
	'61',
  	'2',
  	'AA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'303',
	'61',
  	'3',
  	'AAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'304',
	'61',
  	'4',
  	'',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'305',
	'61',
  	'5',
  	'',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'62',
  	'13',
  	'2',
  	'問題13-2です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'306',
	'62',
  	'1',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'307',
	'62',
  	'2',
  	'AAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'308',
	'62',
  	'3',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'309',
	'62',
  	'4',
  	'AAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'310',
	'62',
  	'5',
  	'A',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'63',
  	'13',
  	'3',
  	'問題13-3です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'311',
	'63',
  	'1',
  	'AA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'312',
	'63',
  	'2',
  	'AA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'313',
	'63',
  	'3',
  	'',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'314',
	'63',
  	'4',
  	'AAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'315',
	'63',
  	'5',
  	'AAAA',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'64',
  	'13',
  	'4',
  	'問題13-4です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'316',
	'64',
  	'1',
  	'AA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'317',
	'64',
  	'2',
  	'AAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'318',
	'64',
  	'3',
  	'',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'319',
	'64',
  	'4',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'320',
	'64',
  	'5',
  	'AAAA',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'65',
  	'13',
  	'5',
  	'問題13-5です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'321',
	'65',
  	'1',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'322',
	'65',
  	'2',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'323',
	'65',
  	'3',
  	'AAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'324',
	'65',
  	'4',
  	'AAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'325',
	'65',
  	'5',
  	'AA',
  	false
);
INSERT INTO wp_enquetes
(id,name,start_date,end_date,poll_or_question)
VALUES
(
	'14',
  	'アンケート 14',
  	'2013-12-01',
  	'2013-12-31',
  	'1'
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'66',
  	'14',
  	'1',
  	'問題14-1です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'326',
	'66',
  	'1',
  	'AA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'327',
	'66',
  	'2',
  	'AAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'328',
	'66',
  	'3',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'329',
	'66',
  	'4',
  	'AAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'330',
	'66',
  	'5',
  	'',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'67',
  	'14',
  	'2',
  	'問題14-2です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'331',
	'67',
  	'1',
  	'AA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'332',
	'67',
  	'2',
  	'AAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'333',
	'67',
  	'3',
  	'AAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'334',
	'67',
  	'4',
  	'AAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'335',
	'67',
  	'5',
  	'AAAAA',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'68',
  	'14',
  	'3',
  	'問題14-3です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'336',
	'68',
  	'1',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'337',
	'68',
  	'2',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'338',
	'68',
  	'3',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'339',
	'68',
  	'4',
  	'AAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'340',
	'68',
  	'5',
  	'A',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'69',
  	'14',
  	'4',
  	'問題14-4です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'341',
	'69',
  	'1',
  	'',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'342',
	'69',
  	'2',
  	'',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'343',
	'69',
  	'3',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'344',
	'69',
  	'4',
  	'AA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'345',
	'69',
  	'5',
  	'AA',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'70',
  	'14',
  	'5',
  	'問題14-5です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'346',
	'70',
  	'1',
  	'AAAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'347',
	'70',
  	'2',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'348',
	'70',
  	'3',
  	'AA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'349',
	'70',
  	'4',
  	'AA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'350',
	'70',
  	'5',
  	'AAA',
  	false
);
INSERT INTO wp_enquetes
(id,name,start_date,end_date,poll_or_question)
VALUES
(
	'15',
  	'アンケート 15',
  	'2013-12-01',
  	'2013-12-31',
  	'1'
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'71',
  	'15',
  	'1',
  	'問題15-1です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'351',
	'71',
  	'1',
  	'AAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'352',
	'71',
  	'2',
  	'AAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'353',
	'71',
  	'3',
  	'',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'354',
	'71',
  	'4',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'355',
	'71',
  	'5',
  	'AAAA',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'72',
  	'15',
  	'2',
  	'問題15-2です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'356',
	'72',
  	'1',
  	'AAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'357',
	'72',
  	'2',
  	'AA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'358',
	'72',
  	'3',
  	'AAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'359',
	'72',
  	'4',
  	'AAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'360',
	'72',
  	'5',
  	'',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'73',
  	'15',
  	'3',
  	'問題15-3です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'361',
	'73',
  	'1',
  	'AAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'362',
	'73',
  	'2',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'363',
	'73',
  	'3',
  	'AAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'364',
	'73',
  	'4',
  	'',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'365',
	'73',
  	'5',
  	'AAAA',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'74',
  	'15',
  	'4',
  	'問題15-4です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'366',
	'74',
  	'1',
  	'',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'367',
	'74',
  	'2',
  	'AAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'368',
	'74',
  	'3',
  	'',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'369',
	'74',
  	'4',
  	'',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'370',
	'74',
  	'5',
  	'AAAA',
  	false
);
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'75',
  	'15',
  	'5',
  	'問題15-5です。',
	'1'
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'371',
	'75',
  	'1',
  	'AAAAAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'372',
	'75',
  	'2',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'373',
	'75',
  	'3',
  	'AAA',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'374',
	'75',
  	'4',
  	'A',
  	false
);
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'375',
	'75',
  	'5',
  	'AAAA',
  	false
);
