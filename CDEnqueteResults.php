<?php
/**
 * File: CDEnqueteResutls.php
 * Author: C & D, Inc.;
 * アンケートの集計結果の表示を行う
 */
namespace cd;
class CDEnqueteResults {
	function __contruct() {
		add_shortcode('CDQ-results', array($this, 'getResults'));
		echo ">>>>>>>>>>>>>>>>>>>>>>";
		var_dump($this);
	}

	function getResults($atts) {
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
		foreach ($results as $val) {
			$num++;
			if ($num === 1) {
				$enquete_title = $val->name;
				$qnum++;
			}
			if ($val->question_text !== $before && $num !== 1) {
				$each_results["question_text"] = $before;
				$count[$qnum - 1] = $each_results;
				$each_results = array();
				$qnum++;
				$num = 1;
			}
			if (!is_array($each_results["data"])) {
				$each_results["data"] = array();
			}
			array_push($each_results["data"], array("count" => $val->counts,
				"display" => $val->selection_display));
			$before = $val->question_text;
		}
		$each_results["question_text"] = $before;
		$count[$qnum - 1] = $each_results;

		$div_template = "<div class='offset1' id='chart#q_num#' style='width:400px; height:300px;'></div>";
		$jscript_template = <<< EOF
jQuery(document).ready(function ($) {
    var data =  #ans_array#;
    plot3 = $.jqplot('chart#q_num#', [data], {
        title: "アンケート1",
        series: [
            {renderer: $.jqplot.BarRenderer}
        ],
        axes: {
            xaxis: {
                renderer: $.jqplot.CategoryAxisRenderer,
                tickRenderer: $.jqplot.CanvasAxisTickRenderer,
                tickOptions: {
                    angle: -30,
                    fontSize: '10pt'
                }
            }
        }
    });
});
EOF;

		$body_text = "<h2>$enquete_title</h2>\n<ol>";
		$js_text = "";
		for ($i = 1; $i <= $question_number; $i++) {
			$q = $count[$i - 1];
			$body_text = $body_text . "<li>" . $q["question_text"] . "\n";
			$body_text = $body_text . str_replace("#q_num#", "$i", $div_template);
			$j_text = str_replace("#q_num#", "$i", $jscript_template);
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
			$j_text = str_replace("#ans_array#", $hairetu, $j_text);
			$js_text .= $j_text . "\n";
		}

		$body_text .= "</ol>";
		echo $body_text;

		echo "<script>\n" . $js_text . "\n</script>\n";

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
