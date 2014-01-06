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
	 * アンケートtitle
	 * @var null
	 */
	private $title = NULL;

	private $start_date = NULL;

	private $identifier = NULL;

	private $date = NULL;
	private $dao = NULL;

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
		$this->dao = new QuestionnaireDAO();
		extract(shortcode_atts(array(
				'id' => 0
		), $atts));
		$this->id = $id;

		if (isset($_COOKIE['CDQ_enquete'])) {
			$this->identifier = $_COOKIE['CDQ_enquete'];
		}

		if (isset($_POST['enquete_options'])) {
			// アンケートを登録

			// answers テーブルに登録
			$opt = $_POST ['enquete_options'];
			$opt = $opt['enquete_answer'];

			$opt['enquete_id'] = $id;
			$opt['identifier'] = $this->identifier;
			$opt['ip_address'] = $_SERVER["REMOTE_ADDR"];

			require_once('QuestionnaireManager.php');
			$qar = new QuestionnaireManager();
			$qar->registerAnswer($opt);

			echo $this->getMessage('thanks');
			$this->getResults();
			return;
		} else {
			//アンケートを表示する
			$registered['phase'] = 'responding';

			// アンケートがない
			$results = $this->dao->getEnqueteData($id);
			if (NULL === $results || !isset($results[0]->q_id)) {
				$registered['message'] = $this->getMessage('retry');
			}

			// 各種チェック
			$registered = $this->check($registered);

			//アンケートを表示するかどうか
			require_once('DateTransform.php');
			$dt = new DateTransform();
			$period = $dt->isDuringPeriod($results[0]->start_date, $results[0]->end_date);

			if ("done" == $period) {
				$this->title = $results[0]->e_name;
				$registered['message'] = $this->getMessage('done');
				$registered['message'] .= $this->getResults();
				$registered['message'] .= $this->getMessage('done_thanks');
			} else if ("todo" == $period) {
				$this->title = $results[0]->e_name;
				$this->date = $this->getFormattedDate($results[0]->start_date);
				$registered['message'] = $this->getMessage('todo');
			}

			//アンケートを表示する
			require_once("QuestionnaireManager.php");
			$qd = new QuestionnaireManager();
			$qd->displayEnquete($results, $registered);
			return;
		}

	}

	function getResults() {
		require_once("QuestionnaireResults.php");
		$qr = new QuestionnaireResults();
		return ($qr->getResults(array("id" => $this->id)));
	}

	function check($registered) {
		// COOKIE チェック
		if (!isset($_COOKIE['CDQ_enquete'])) {
			wp_enqueue_script('mt', plugin_dir_url(__FILE__) . 'js/mt.js');
			wp_enqueue_script('cdq_json_cookie', plugin_dir_url(__FILE__) . 'js/cdq_json_cookie.js', array('mt'));
			// had been reloaded
		}
		if (!isset($_COOKIE['CDQ_enquete'])) {
			// DISABLE COOKIE
			return $this->getMessage('disableCOOKIE');
		}

		// 既に回答済みかチェック
		if (NULL != $this->identifier) {
			$identExist = $this->dao->existIdentifier($this->id, $this->identifier);
			if (count($identExist) > 0) {
				$registered['phase'] = 'responded';
				$registered['responded_answer'] = $this->dao->getRespondedAnswer($this->id, $this->identifier);
				echo $this->getMessage('registered');
			}
		}
		return $registered;
	}

	function getFormattedDate($date) {
		require_once('DateTransform.php');
		$dt = new DateTransform();
		$date = $dt->datetimeToDate($date);
		return $dt->getFormattedDate($date);
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

		if ('done_thanks' == $mes) {
			return <<<EOF
<p>アンケートにご協力ありがとうございました。</p>

EOF;

		}

		if ('registered' == $mes) {
			return <<<EOF
<p>このアンケートにはお答えを頂いております。</p>

EOF;

		}

		if ('done' == $mes) {
			return <<<EOF
<p>「 $this->title 」の集計は終了いたしました。</p>
<p>集計結果が表示されています。</p>

EOF;

		}

		if ('todo' == $mes) {
			return <<<EOF
<p>「 $this->title 」のアンケートは{$this->date}より開始いたします。</p>

EOF;

		}

		if ('disableCOOKIE' == $mes) {
			return <<<EOF
				<div style="text-align: center;font-weight: bold;">お使いのブラウザでは、アンケートのご利用ができません。</div>

EOF;

		}

	}
}