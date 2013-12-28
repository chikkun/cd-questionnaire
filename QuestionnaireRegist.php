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
	 * アンケート名(タイトル)
	 *
	 * @var unknown
	 */
	var $enquete_name = NULL;
	/**
	 * 開始日
	 *
	 * @var null
	 */
	var $start_date = NULL;
	/**
	 * 終了日
	 *
	 * @var null
	 */
	var $end_date = NULL;
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
		$this->enquete = $enquete;
		$this->registEnquete();
		echo $this->printShortCode();
		$this->showEnquete();
	}
	function registEnquete() {
		$dao = new QuestionnaireDAO ();
		$this->enquete_id = $dao->insertEnquete($this->enquete);
	}
	function showEnquete() {
		var_dump($this->enquete);
		global $cd_smarty_instance;

		// TODO テンプレート化

//		$cd_smarty_instance->assign("enquete_name", $this->enquete ['enquete_name']);
//		$cd_smarty_instance->assign("start_date", $this->enquete ['start_date']);
//		$cd_smarty_instance->assign("end_date", $this->enquete ['end_date']);

		//$cd_smarty_instance->display("show.tpl");
		echo "登録終了";
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