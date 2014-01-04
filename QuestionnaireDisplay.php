<?php
/**
 * Created by PhpStorm.
 * User: denn
 * Date: 13/12/29
 * Time: 13:19
 */

namespace cd;


class QuestionnaireDisplay {

	function displayEnquete($results, $registered) {
		var_dump($registered['responded_answer']);
		global $cd_smarty_instance;
		$submit = 'button';
		if ('responded' == $registered['phase']) {
			// 返答済のアンケートの表示の場合
			// TODO
			$respondedAnswer = $registered['responded_answer'];
		} else if ('responding' == $registered['phase']) {
			// これからアンケートに応える
			$submit = 'submit';
		} else if ('new' == $registered['phase']) {
			// 新規にアンケートを作成した場合
			echo "ただいま作成されたアンケートです。";
		}
		$cd_smarty_instance->assign("submit", $submit);

		//
		$cd_smarty_instance->assign("enquete_name", $results[0]->e_name);
		$cd_smarty_instance->assign("enquete_id", $results[0]->e_id);
		$cd_smarty_instance->assign("start_date", $results[0]->start_date);
		$cd_smarty_instance->assign("end_date", $results[0]->end_date);

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
					$cd_smarty_instance->assign("question_text", $question_text);
					$cd_smarty_instance->assign("selections", $selections);
					$questions .= $cd_smarty_instance->fetch("show_question.tpl");

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

			$cd_smarty_instance->assign("sel", $sel);
			$selections .= $cd_smarty_instance->fetch("show_selection.tpl");
			"checkbox" === $type ? $checkbox++ : 0;
		}
		$cd_smarty_instance->assign("question_text", $question_text);
		$cd_smarty_instance->assign("selections", $selections);
		$questions .= $cd_smarty_instance->fetch("show_question.tpl");

		$cd_smarty_instance->assign("questions", $questions);

		return $cd_smarty_instance->display("show_enquete.tpl");
	}
} 