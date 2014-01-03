<?php

/**
 * Created by PhpStorm.
 * User: denn
 * Date: 13/12/28
 * Time: 11:57
 */
namespace cd;

class QuestionnaireRegist {

	/**
	 * アンケート id
	 *
	 * @var unknown
	 */
	var $enquete_id = NULL;
	/**
	 * アンケートデータ
	 *
	 * @var null
	 */
	var $enquete = NULL;

	/**
	 * 新規アンケートの登録/表示
	 */
	function questionnaire_regist_page($enquete) {
		$dao = new QuestionnaireDAO ();
		$this->enquete_id = $dao->insertEnquete($this->enquete);
		echo $this->printShortCode();
		$this->showEnquete();
	}

	/**
	 * 新規アンケートの表示
	 */
	function showEnquete() {
		$dao = new QuestionnaireDAO ();
		$results = $dao->getEnqueteData($this->enquete_id);

		// TODO 新規登録されたアンケートの表示
		$registered['phase'] = 'new';
		require_once("QuestionnaireDisplay.php");
		$qd = new QuestionnaireDisplay();
		$qd->displayEnquete($results, $registered);

		echo "<br /><br />登録終了<br /><br />";

	}
	function printShortCode() {
		return <<<EOF
		<div class="updated fade">
			<p>現在のアンケートを発行するには、下のショートコードを、アンケートを表示したい固定ページや投稿ページ内に書き込んでください。ここでの作業はそれで終了です。</p>
			<p>
				ショートコード：<input style="width: auto;"
					name="enquete_options[enquete_short_code]" type="text"
					id="inputshortcode" readonly
					value="[CDQ-enquete id={$this->enquete_id}]" class="regular-text" />
			</p>
		</div>
EOF;
	}
} 