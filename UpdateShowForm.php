<?php

namespace cd;

class UpdateShowForm {
	function update_show_form() {
		// smartyオブジェクト
		global $cd_smarty_instance;
		global $wpdb;
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

		$sql = <<< EOF
SELECT   e.id AS e_id,
         e.name AS e_name,
         e.start_date,
         e.end_date,
         e.poll_or_question,
         q.id AS q_id,
         q.enquete_id,
         q.sort_id AS q_sort_id,
         q.question_text,
         q.multiple_answer,
         s.id AS s_id,
         s.question_id,
         s.sort_id AS s_sort_id,
         s.selection_display,
         s.to_select_flag
FROM     wp_enquetes AS e
         INNER JOIN
         wp_questions AS q
         ON e.id = q.enquete_id
         INNER JOIN
         wp_selections AS s
         ON q.id = s.question_id
WHERE    e.id = %s
ORDER BY q_sort_id, q_id, s_sort_id, s_id
EOF;
		$sql = $wpdb->prepare($sql, $_GET ['id']);
		$results = $wpdb->get_results($sql);
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
		array_push($each_results->enquete_questions_index_selections, $select);
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
		$cd_smarty_instance->assign("data", $json);
		$cd_smarty_instance->assign("enquete_title", $enquete_title);
		$cd_smarty_instance->assign("start_date", $start_date);
		$cd_smarty_instance->assign("end_date", $end_date);
		$cd_smarty_instance->assign("form_title", "修正/削除");
		$cd_smarty_instance->assign("enqueteAction", "update");
		$cd_smarty_instance->assign("enquete_button", "修正");
		$cd_smarty_instance->display("update.tpl");
	}
}