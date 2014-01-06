<?php
/**
 * File: CDEnqueteResutls.php
 * Author: C & D, Inc.;
 * アンケートの集計結果の表示を行う
 */
namespace cd;
class QuestionnaireResults {
	function __construct() {
		add_shortcode('CDQ-results', array($this,
			'getResults'));
	}

	function getResults($atts) {
		global $cdSmartyInstance;
		$id = 0;
		extract(shortcode_atts(array(
			'id' => 1
		), $atts));
		$id;
		$num = 0;
		$before = "";
		$count = array();
		$eachResults = array();
		$enqueteTitle = "";
		$qnum = 0;
		$cddb = new \cd\QuestionnaireDAO();
		list($results, $questionNumber) = $cddb->getResultsFromId($id);
		$snum = 0;
		foreach ($results as $val) {
			$num++;
			$snum++;
			if ($num === 1) {
				$enqueteTitle = $val->name;
				$qnum++;
			}
			$now = $val->question_text;
			if ($now !== $before && $num !== 1) {
				$eachResults["question_text"] = $before;
				$count[$qnum - 1] = $eachResults;
				$eachResults = array();
				$qnum++;
				$num = 1;
				$snum = 1;
			}
			if (!isset($eachResults["data"]) || !is_array($eachResults["data"])) {
				$eachResults["data"] = array();
			}
			array_push($eachResults["data"], array("count" => $val->counts,
				"display" => $snum . "." . $val->selection_display));
			$before = $val->question_text;
		}
		$eachResults["question_text"] = $before;
		$count[$qnum - 1] = $eachResults;
		$cdSmartyInstance->assign("enquete_title", $enqueteTitle);
		$graphList = array();
		$jsList = array();
		for ($i = 1; $i <= $questionNumber; $i++) {
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
			$graphList[] = $graph;
			$jsList[] = $js;
		}
		$cdSmartyInstance->assign("js_list", $jsList);
		$cdSmartyInstance->assign("graph_list", $graphList);
		$cdSmartyInstance->display("jqplot.tpl");


		wp_enqueue_script('jquery', plugin_dir_url(__FILE__) . 'js/jquery-1.10.1.min.js',array(), '1.10.1', false);
		wp_enqueue_script('jqplot', plugin_dir_url(__FILE__) . 'js/jquery.jqplot.min.js', array(), false, false);
		wp_enqueue_script('jqplot.barRenderer', plugin_dir_url(__FILE__) . 'js/jqplot.barRenderer.min.js', array(), false, false);
		wp_enqueue_script('jqplot.categoryAxisRenderer', plugin_dir_url(__FILE__) . 'js/jqplot.categoryAxisRenderer.min.js', array(), false, false);
		wp_enqueue_script('jqplot.dateAxisRenderer', plugin_dir_url(__FILE__) . 'js/jqplot.dateAxisRenderer.min.js', array(), false, false);
		wp_enqueue_script('jqplot.canvasTextRenderer', plugin_dir_url(__FILE__) . 'js/jqplot.canvasTextRenderer.min.js', array(), false, false);
		wp_enqueue_script('jqplot.jqplot.canvasAxisTickRenderer', plugin_dir_url(__FILE__) . 'js/jqplot.canvasAxisTickRenderer.min.js', array(), false, false);
		//CSS
		wp_enqueue_style('jqplot', plugin_dir_url(__FILE__) . 'css/jquery.jqplot.min.css', array(), false, 'all');
		wp_enqueue_style('bootstrap', plugin_dir_url(__FILE__) . 'css/bootstrap.min.css', array(), false, 'all');
	}
}
