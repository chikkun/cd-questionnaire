<?php
function make($enqID,$queSerialID,$queID,$selSerialID,$selID) {
	$enq = <<<EOS
INSERT INTO wp_enquetes
(id,name,start_date,end_date,poll_or_question)
VALUES
(
	'$enqID',
  	'アンケート $enqID',
  	'2013-12-01',
  	'2013-12-31',
  	'1'
);
EOS;

	$multi = rand(1,10) > 3 ? 1:2;
	$que = <<<EOS
INSERT INTO wp_questions
(id,enquete_id,sort_id,question_text,multiple_answer)
VALUES
(
	'$queSerialID',
  	'$enqID',
  	'$queID',
  	'問題{$enqID}-{$queID}です。',
	'$multi'
);
EOS;

	$ranlen = "";
	for($i=1;$i<=rand(1, 25);$i++) {
		$ranlen .= "A";
	}
	$sel = <<<EOS
INSERT INTO wp_selections
(id,question_id,sort_id,selection_display,to_select_flag)
VALUES
(
  	'$selSerialID',
	'$queSerialID',
  	'$selID',
  	'$ranlen',
  	false
);
EOS;
	return array(
			'enq' => $enq,
			'que' => $que,
			'sel' => $sel
	);
}

$num = 5;

$preEnqNumber = 1;//+ $num;
$preQueNumber = 1;//+ $num * $num;
$preSelNumber = 1;//+ $num * $num * $num;

$is=$preEnqNumber;// + $num;// enquetes_ID
$qi=$preQueNumber;// + $num * $num;// questions_ID;
$si=$preSelNumber;// + $num * $num * $num;// selections_ID;


$enqNum = $num;
$queNum = $num;
$selNum = $num;


echo "USE wordpress\n\n";
 echo "TRUNCATE table wp_enquetes;\n\n";
 echo "TRUNCATE table wp_questions;\n\n";
 echo "TRUNCATE table wp_selections;\n\n";

	
for ($i=$is; $i<$is + $enqNum;$i++) {
	$enq = make($i,0,0,0,0);
	echo $enq['enq']. "\n";

	for($qs=1;$qs<=$queNum;$qs++) {
		$que = make($i,$qi,$qs,0,0);
		echo $que['que']. "\n";
		for($ss=1;$ss<=$selNum;$ss++) {
			$que = make($i,$qi,$qs,$si,$ss);
			echo $que['sel']. "\n";
			$si++;
		}
		$qi++;
	}
}

