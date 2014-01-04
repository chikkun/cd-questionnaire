<?php
/**
 * Created by PhpStorm.
 * User: denn
 * Date: 13/12/29
 * Time: 13:19
 */

namespace cd;

/**
 * Class QuestionnaireDisplay
 * @package cd
 */
class QuestionnaireDisplay {

	function displayEnquete($results, $registered) {
//		var_dump($registered['responded_answer']);
		global $cdSmartyInstance;
		$submit = 'button';
		$print_only = 'false';
		if ('responded' == $registered['phase']) {
			// 返答済のアンケートの表示の場合
			$print_only = 'true';
			$respondedAnswer = $registered['responded_answer'];
		} else if ('responding' == $registered['phase']) {
			// これからアンケートに応える
			if ($results[0]->start_date)
				$submit = 'submit';
		} else if ('new' == $registered['phase']) {
			// 新規にアンケートを作成した場合
			echo "ただいま作成されたアンケートです。";
		}
		$cdSmartyInstance->assign("submit", $submit);
		$cdSmartyInstance->assign("print_only", $print_only);

		//
		$cdSmartyInstance->assign("enquete_name", $results[0]->e_name);
		$cdSmartyInstance->assign("enquete_id", $results[0]->e_id);
		$cdSmartyInstance->assign("start_date", $results[0]->start_date);
		$cdSmartyInstance->assign("end_date", $results[0]->end_date);

		$questions = "";
		$selections = "";
		$question_text = "";

		$type = "radio";
		$checkbox = 0;

		$sel = NULL;
		$pre_id = -1;
		foreach ($results as $data) {
			$cur_question = $data->question_text;
			if ($pre_id != $data->q_id) {
				if ("" != $selections) {
					$cdSmartyInstance->assign("question_text", $question_text);
					$cdSmartyInstance->assign("selections", $selections);
					$questions .= $cdSmartyInstance->fetch("show_question.tpl");

					$selections = "";
				}
				if ("" === $selections) {
					$question_text = $data->question_text;
					$pre_id = $data->q_id;
					$checkbox = 0;
					$type = "radio";
					if ("2" === $data->multiple_answer) {
						$type = "checkbox";
						$checkbox = 1;
					}
					$questions .= "<input type=\"hidden\" name=\"enquete_options[enquete_answer][$pre_id][question]\" value=\"$question_text\">";
				}
			}
			$sel['questionID'] = $data->q_id;
			$sel['value'] = $data->selection_display;
			$sel['type'] = $type;
			$sel['selectionID'] = $data->s_id;
			$sel['checkboxID'] = $checkbox;
			// checked
			$sel['checked'][$data->q_id][$data->s_id] = "";
			if (isset($respondedAnswer)) {
				$sel['checked'][$data->q_id][$data->s_id] = "disabled ";
				foreach ($respondedAnswer as $ans) {
					if ($ans->question_id == $data->q_id && $ans->selection_id == $data->s_id) {
						$sel['checked'][$data->q_id][$data->s_id] .= "checked";
					}
				}
			}
			$cdSmartyInstance->assign("sel", $sel);
			$selections .= $cdSmartyInstance->fetch("show_selection.tpl");
			"checkbox" === $type ? $checkbox++ : 0;
		}
		$cdSmartyInstance->assign("question_text", $question_text);
		$cdSmartyInstance->assign("selections", $selections);
		$questions .= $cdSmartyInstance->fetch("show_question.tpl");

		$cdSmartyInstance->assign("questions", $questions);

		return $cdSmartyInstance->display("show_enquete.tpl");
	}
} 