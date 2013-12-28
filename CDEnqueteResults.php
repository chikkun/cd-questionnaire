<?php
/**
 * File: CDEnqueteResutls.php
 * Author: C & D, Inc.;
 * アンケートの集計結果の表示を行う
 */
namespace cd;
class CDEnqueteResults {
	function __construct() {
		add_shortcode('CDQ-results', array($this,
			'getResults'));
	}

	function getResults($atts) {
		global $cd_smarty_instance;
		$id = 0;
		extract(shortcode_atts(array(
			'id' => 1
		), $atts));
		$id;
		$num = 0;
		$before = "";
		$count = array();
		$each_results = array();
		$enquete_title = "";
		$qnum = 0;
		$cddb = new \cd\QuestionnaireDAO();
		list($results, $question_number) = $cddb->getResultsFromId($id);
		$snum = 0;
		foreach ($results as $val) {
			$num++;
			$snum++;
			if ($num === 1) {
				$enquete_title = $val->name;
				$qnum++;
			}
			$now = $val->question_text;
			if ($now !== $before && $num !== 1) {
				$each_results["question_text"] = $before;
				$count[$qnum - 1] = $each_results;
				$each_results = array();
				$qnum++;
				$num = 1;
				$snum = 1;
			}
			if (!is_array($each_results["data"])) {
				$each_results["data"] = array();
			}
			array_push($each_results["data"], array("count" => $val->counts,
				"display" => $snum . "." . $val->selection_display));
			$before = $val->question_text;
		}
		$each_results["question_text"] = $before;
		$count[$qnum - 1] = $each_results;
		$cd_smarty_instance->assign("enquete_title", $enquete_title);
		$graph_list = array();
		$js_list = array();
		for ($i = 1; $i <= $question_number; $i++) {
			$graph = new \stdClass();
			$js = new \stdClass();
			$q = $count[$i - 1];
			$graph->question_text = $q["question_text"];
			$graph->q_num = $i;
			$js->q_num = $i;
			$hairetu = "[";
			$len = count($q["data"]);
			$j = 0;
			foreach ($q["data"] as $val) {
				$j++;
				if ($j !== $len) {
					$hairetu .= "[" . "'" . $val["display"] . "'," . $val["count"] . "],";
				} else {
					$hairetu .= "[" . "'" . $val["display"] . "'," . $val["count"] . "]";
				}
			}
			$hairetu .= "]";
			$js->ans_array = $hairetu;
			$graph_list[] = $graph;
			$js_list[] = $js;
		}
		$cd_smarty_instance->assign("js_list", $js_list);
		$cd_smarty_instance->assign("graph_list", $graph_list);
		$cd_smarty_instance->display("jqplot.tpl");

		wp_enqueue_script('jquery');
		wp_enqueue_script('jqplot', plugin_dir_url(__FILE__) . 'js/jquery.jqplot.min.js', array('jquery'), false, true);
		wp_enqueue_script('jqplot.barRenderer', plugin_dir_url(__FILE__) . 'js/jqplot.barRenderer.min.js', array('jquery'), false, true);
		wp_enqueue_script('jqplot.categoryAxisRenderer', plugin_dir_url(__FILE__) . 'js/jqplot.categoryAxisRenderer.min.js', array('jquery'), false, true);
		wp_enqueue_script('jqplot.dateAxisRenderer', plugin_dir_url(__FILE__) . 'js/jqplot.dateAxisRenderer.min.js', array('jquery'), false, true);
		wp_enqueue_script('jqplot.canvasTextRenderer', plugin_dir_url(__FILE__) . 'js/jqplot.canvasTextRenderer.min.js', array('jquery'), false, true);
		wp_enqueue_script('jqplot.jqplot.canvasAxisTickRenderer', plugin_dir_url(__FILE__) . 'js/jqplot.canvasAxisTickRenderer.min.js', array('jquery'), false, true);
		//CSS
		wp_enqueue_style('jqplot', plugin_dir_url(__FILE__) . 'css/jquery.jqplot.min.css', false, false, true);
		wp_enqueue_style('bootstrap', plugin_dir_url(__FILE__) . 'css/bootstrap.min.css', false, false, false);
	}
}
