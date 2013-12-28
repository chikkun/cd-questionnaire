<?php
namespace cd;

//use \cd\QuestionnaireDAO;
/**
 * FILE: CDQuestionnaireAnswer.php
 * Author: C & D, Inc.;
 * アンケート質問事項の表示を行う。
 * 扱うテーブルは、アンケートの答えを登録する/してあるテーブル一つのみ。
 */
class CDQuestionnaireAnswer {

	/* アンケートid */
	var $id = NULL;
	/* 登録するアンケートの答えを登録するテーブル名 */
	var $tableName = NULL;

	/**
	 * コンストラクタ
	 * 		ショートコード作成
	 */
	function __construct() {
		add_shortcode('CDQ-enquete', array($this, 'getEnquete'));
	}

	/**
	 * ショートコードから 「アンケートid」 を受け取り、アンケートを表示する。
	 * 		必要なJavaScript、CSSを読み込ませる。
	 * アンケートの答えをデータベースに登録する。
	 *
	 * @param unknown $atts
	 * @return string
	 */
	function getEnquete($atts) {

		wp_enqueue_script( 'jquery' );
		wp_enqueue_script( 'cdq_json_cookie', plugin_dir_url( __FILE__ ) . 'js/cdq_json_cookie.js', array( 'jquery' ), false, true );
		wp_enqueue_style( 'bootstrap', plugin_dir_url( __FILE__ ) . 'css/bootstrap.min.css', false, false, true );

		extract(shortcode_atts(array(
		'id' => 0
		), $atts));
		$this->id = $id;

		if(isset($_POST['enquete_options'])) {
			// answers テーブルに登録
			$opt = $_POST ['enquete_options'];
			$opt = $opt['enquete_answer'];

			$identifier = $_COOKIE['CDQ_enquete'];

			//TODO 
			//   identifier ---> $_COOKIE['CDQ_enquete'][] = $e_id
			//
			$results = $this->getIdentifier();
			foreach ($results as $ident) {
				if ($ident->identifier == $identifier) {
					return "<p>このアンケートにはすでに登録済みです。<br />アンケートにご協力ありがとうございました。</p>";
				}
			}

			/* 登録するアンケートの答えを格納する配列になる */
			$answerData = array();
			// 登録実行
			foreach($opt as $qid => $value) {
				foreach($value as $cid => $sel) {
					$answerData['eid'] = $id;
					$answerData['qid'] = $qid;
					$answerData['identifier'] = $identifier;
					if('question' === $cid) {
						$answerData['question'] = $sel;
					} else {
						preg_match("/^(\d+)?:/", $sel, $sid);
						$answerData['sid'] = $sid[1];

						$dao = new QuestionnaireDAO();
						$dao->insertAnswer($answerData);
						$answerData = array();
					}
				}
			}

			return $this->getThanks() ;
		} else {
			// データベースから必要な情報を取得する
			$dao = new QuestionnaireDAO();
			$results= $dao->getEnqueteData($id);
			if( NULL === $results || !isset($results[0]->q_id)) {
				return "<p>id= 『 $id 』 のアンケートが取得できませんでした。別の「id」番号でやり直して下さい。<p>";
			}
			$enquete_name = $results[0]->e_name;

			global $cd_smarty_instance;
			$cd_smarty_instance->assign("enquete_name", $enquete_name);
			$cd_smarty_instance->assign("enquete_id", $id);
			$cd_smarty_instance->assign("start_date", $this->enquete ['start_date']);
			$cd_smarty_instance->assign("end_date", $this->enquete ['end_date']);

			$questions = "";
			$selections = "";
			$question_text = "";

			$type = "radio";
			$checkbox = 0;

			$sel = NULL;
			$pre_id = -1;
			foreach ($results as $data) {
				$cur_question = $data->question_text;
				if( $pre_id != $data->q_id ) {
					if( "" != $selections ) {
						$cd_smarty_instance->assign("question_text", $question_text);
						$cd_smarty_instance->assign("selections", $selections);
						$questions .= $cd_smarty_instance->fetch("show_question.tpl");

						$selections = "";
					}
					if("" === $selections) {
						$question_text = $data->question_text;
						$pre_id = $data->q_id;
						$checkbox = 0;
						$type = "radio";
						if("2" === $data->multiple_answer) {
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

	/**
	 * アンケートの答えを登録するテーブル名を取得する。
	 */
	function getTableName() {
		$dao = new QuestionnaireDAO();
		$this->tableName = $dao->tableNames['answers'];
	}

	/**
	 * アンケートの答えを登録するテーブルから、アンケートの答えを登録した時にくわせたCOOKIEを取り出す。
	 */
	function getIdentifier() {
		!isset($this->tableName) ? $this->getTableName() : NULL;

		$sql = "SELECT identifier FROM " . $this->tableName . " WHERE enquete_id = %s;";
		global $wpdb;
		$sql = $wpdb->prepare($sql,
				$this->id
		);

		return $wpdb->get_results($sql);

	}

	/**
	 *
	 * @return string
	 */
	function getThanks() {
		return <<<EOF
<p>アンケートにお答えいただきありがとうございました。</p>";

EOF;
	}

}