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

	/**
	 * コンストラクタ
	 *    ショートコード作成
	 */
	function __construct() {
		add_shortcode('CDQ-enquete', array($this, 'getEnquete'));
	}

	/**
	 * ショートコードから 「アンケートid」 を受け取り、アンケートを表示する。
	 *    必要なJavaScript、CSSを読み込ませる。
	 * アンケートの答えをデータベースに登録する。
	 *
	 * @param unknown $atts
	 * @return string
	 */
	function getEnquete($atts) {
		$dao = new QuestionnaireDAO();

		wp_enqueue_script('jquery');
		wp_enqueue_script('cdq_json_cookie', plugin_dir_url(__FILE__) . 'js/cdq_json_cookie.js', array('jquery'), false, true);
		wp_enqueue_style('bootstrap', plugin_dir_url(__FILE__) . 'css/bootstrap.min.css', false, false, true);

		extract(shortcode_atts(array(
				'id' => 0
		), $atts));
		$this->id = $id;

		if (isset($_POST['enquete_options'])) {
			// アンケートを登録

			$dao = new QuestionnaireDAO();
			// answers テーブルに登録
			$opt = $_POST ['enquete_options'];
			$opt = $opt['enquete_answer'];

			$identifier = $_COOKIE['CDQ_enquete'];

			//TODO
			//   identifier ---> $_COOKIE['CDQ_enquete'][] = $e_id
			//
			$opt['enquete_id'] = $id;
			$opt['identifier'] = $identifier;

			$results = $dao->getIdentifier($id);

			foreach ($results as $ident) {
				if ($ident->identifier == $identifier) {
					return $this->getMessage('registered');
				}
			}

			require_once('QuestionnaireAnswerRegist.php');
			$qar = new QuestionnaireAnswerRegist();
			$qar->registerAnswer($opt);

			return $this->getMessage('thanks');

		} else {
			//アンケートを表示

			$results = $dao->getEnqueteData($id);
			if (NULL === $results || !isset($results[0]->q_id)) {
				return $this->getMessage('retry');
			}

			require_once("QuestionnaireAnswerDisplay.php");
			$qad = new QuestionnaireAnswerDisplay();
			return $qad->displayAnswer($results);
		}
	}

	function getMessage($mes) {
		if ('retry' == $mes) {
			return <<<EOF
<p>id= 『 $this->id 』 のアンケートが取得できませんでした。別の「id」番号でやり直して下さい。<p>

EOF;
		}

		if ('thanks' == $mes) {
			return <<<EOF
<p>アンケートにお答えいただきありがとうございました。</p>

EOF;

		}

		if ('registered' == $mes) {
			return <<<EOF
<p>このアンケートにはすでに登録済みです。<br />
アンケートにご協力ありがとうございました。</p>

EOF;

		}
	}
}