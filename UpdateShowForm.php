<?php

namespace cd;

class UpdateShowForm {
	function updateShowForm($id, $mes = "", $deleteFlag = true) {
		// smartyオブジェクト
		global $cdSmartyInstance;
		wp_enqueue_script('jquery');
		wp_enqueue_script('jquery.ui.core', plugin_dir_url(__FILE__) . 'js/jquery.ui.core.min.js');
		wp_enqueue_script('jquery.ui.datepicker', plugin_dir_url(__FILE__) . 'js/jquery.ui.datepicker.min.js');
		wp_enqueue_script('jquery.sheepItPlugin', plugin_dir_url(__FILE__) . 'js/jquery.sheepItPlugin.min.js');
		wp_enqueue_script('jquery.validate', plugin_dir_url(__FILE__) . 'js/jquery.validate.min.js');
		wp_enqueue_script('additional', plugin_dir_url(__FILE__) . 'js/additional-methods.min.js');
		wp_enqueue_script('query.dump', plugin_dir_url(__FILE__) . 'js/jquery.dump.min.js');
		wp_enqueue_script('messages', plugin_dir_url(__FILE__) . 'js/messages_ja.min.js');
		wp_enqueue_style('bootstrap', plugin_dir_url(__FILE__) . 'css/bootstrap.min.css', false, false, false);
		wp_enqueue_style('jquery.ui.all', plugin_dir_url(__FILE__) . 'css/jquery.ui.all.css', false, false, false);

		$cddb = new \cd\QuestionnaireDAO();
		$answer_number = $cddb->getAlreadyAnsweredNumber($id);
		$results = $cddb->getEnqueteData($id, $deleteFlag);
		$num = 0;
		$before = "";
		$alldata = new \stdClass ();
		$alldata->data = array();
		$each_results = array();
		$enquete_title = "";
		$qnum = -1;
		$start_date = "";
		$end_date = "";

		foreach ($results as $val) {
			$num++;

			if ($val->question_text !== $before) {
				if ($num === 1) {
					$enquete_title = $val->e_name;
					$start_date = $val->start_date;
					$end_date = $val->end_date;
				} else {
					array_push($alldata->data, $each_results);
				}
				$each_results = new \stdClass ();
				$each_results->enquete_questions_index_question = $val->question_text;
				$each_results->enquete_questions_index_order = $val->q_sort_id;
				$each_results->enquete_questions_index_selections = array();
				$qnum++;
			}
			$select = new \stdClass ();
			$sikibetu = "enquete_questions_" . $qnum . "_selections_index_selections_selection";
			$sikibetu2 = "enquete_questions_" . $qnum . "_selections_index_selections_order";
			$select->$sikibetu = $val->selection_display;
			$select->$sikibetu2 = $val->s_sort_id;
			array_push($each_results->enquete_questions_index_selections, $select);
			$before = $val->question_text;
		}
		//array_push($each_results->enquete_questions_index_selections, $select);
		array_push($alldata->data, $each_results);

		$json = json_encode($alldata);
		$json = preg_replace('/questions_index_order/', 'questions_#index#_order', $json);
		$json = preg_replace('/questions_index_question/', 'questions_#index#_question', $json);
		$json = preg_replace('/questions_index_selections/', 'questions_#index#_selections', $json);
		$json = preg_replace('/selections_index_selections_selection/', 'selections_#index_selections#_selection', $json);
		$json = preg_replace('/selections_index_selections_order/', 'selections_#index_selections#_order', $json);
		$json = preg_replace('/^\{/', '', $json);
		$json = preg_replace('/\}$/', '', $json);
		$json .= ",";
		$cdSmartyInstance->assign("data", $json);
		if($answer_number > 0 ){
			$cdSmartyInstance->assign("enable", "ng");
		} else {
			$cdSmartyInstance->assign("enable", "");
		}
		$cdSmartyInstance->assign("enquete_title", $enquete_title);
		$cdSmartyInstance->assign("hidden_id", "<input type='hidden' name='enquete_id' value='" . $_GET['id'] . "'>");
		$cdSmartyInstance->assign("mes", $mes);
		$cdSmartyInstance->assign("start_date", $start_date);
		$cdSmartyInstance->assign("end_date", $end_date);
		$cdSmartyInstance->assign("form_title", "修正/削除");
		$cdSmartyInstance->assign("enqueteAction", "update");
		$cdSmartyInstance->assign("enquete_button", "修正");
		$cdSmartyInstance->display("update.tpl");
	}
}