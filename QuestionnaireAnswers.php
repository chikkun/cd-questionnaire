<?php
namespace cd;

/**
 * FILE: QuestionnaireAnswers.php
 * Author: C & D, Inc.;
 * アンケート質問事項の表示を行う。
 * 扱うテーブルは、アンケートの答えを登録する/してあるテーブル一つのみ。
 * Class QuestionnaireAnswers
 * @package cd
 */
class QuestionnaireAnswers {

	/**
	 *  アンケートid
	 * @var null
	 */
	private $id = NULL;

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
		wp_enqueue_style('bootstrap', plugin_dir_url(__FILE__) . 'css/bootstrap.min.css', false, false, true);

		extract(shortcode_atts(array(
				'id' => 0
		), $atts));
		$this->id = $id;
		$identifier = NULL;
		if (isset($_COOKIE['CDQ_enquete'])) {
			$identifier = $_COOKIE['CDQ_enquete'];
		}

		if (isset($_POST['enquete_options'])) {
			// アンケートを登録

			$dao = new QuestionnaireDAO();
			// answers テーブルに登録
			$opt = $_POST ['enquete_options'];
			$opt = $opt['enquete_answer'];

			$opt['enquete_id'] = $id;
			$opt['identifier'] = $identifier;
			$opt['ip_address'] = $_SERVER["REMOTE_ADDR"];

			require_once('QuestionnaireAnswerRegist.php');
			$qar = new QuestionnaireAnswerRegist();
			$qar->registerAnswer($opt);

			echo $this->getMessage('thanks');

			require_once("QuestionnaireResults.php");
			$qr = new QuestionnaireResults();
			$qr->getResults(array("id" => $this->id));
			return;
		} else {
			//アンケートを表示する
			$results = $dao->getEnqueteData($id);
			if (NULL === $results || !isset($results[0]->q_id)) {
				return $this->getMessage('retry');
			}
			//アンケートを表示するかどうか
			require_once('DateTransform.php');
			$dt = new DateTransform();
			$period = $dt->isDuringPeriod($results[0]->start_date, $results[0]->end_date);
			if ("now" == $period) {
				$registered['enquete_phase'] = 'now';
			} else if ("done" == $period) {
				$registered['enquete_phase'] = 'done';
			} else if ("todo" == $period) {
				$registered['enquete_phase'] = 'todo';
			}

			$registered['phase'] = 'responding';
			//
			if (!isset($_COOKIE['CDQ_enquete'])) {
				wp_enqueue_script('mt', plugin_dir_url(__FILE__) . 'js/mt.js');
				wp_enqueue_script('cdq_json_cookie', plugin_dir_url(__FILE__) . 'js/cdq_json_cookie.js', array('mt'));
			}
			// had been reloaded
			if (!isset($_COOKIE['CDQ_enquete'])) {
				// DISABLE COOKIE
				$this->getMessage('disableCOOKIE');
				return;
			}
			// 既に回答済みかチェック
			if (NULL != $identifier) {
				$identExist = $dao->existIdentifier($this->id, $identifier);
				if (count($identExist) > 0) {
					$registered['phase'] = 'responded';
					$registered['responded_answer'] = $dao->getRespondedAnswer($id, $identifier);
					echo $this->getMessage('registered');
				}
			}

			require_once("QuestionnaireDisplay.php");
			$qd = new QuestionnaireDisplay();
			$qd->displayEnquete($results, $registered);
		}
	}

	function getMessage($mes) {
		if ('retry' == $mes) {
			return <<<EOF
<p>id= 『 $this->id 』 のアンケートはありませんでした。別の「id」番号でやり直して下さい。<p>

EOF;
		}

		if ('thanks' == $mes) {
			return <<<EOF
<p>アンケートにお答えいただきありがとうございました。</p>

EOF;

		}

		if ('registered' == $mes) {
			return <<<EOF
<p>このアンケートにはお答えを頂いております。<br />
アンケートにご協力ありがとうございました。</p>

EOF;

		}

		if ('disableCOOKIE' == $mes) {
			return <<<EOF
				<div style="text-align: center;font-weight: bold;">お使いのブラウザでは、アンケートのご利用ができません。</div>;

EOF;

		}

	}
}