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
		$this->enquete = $enquete;
		$this->registEnquete();
		echo $this->printShortCode();
		$this->showEnquete();
	}

	/**
	 * 新規アンケートの登録
	 */
	function registEnquete() {

		$dao = new QuestionnaireDAO ();
		$this->enquete_id = $dao->insertEnquete($this->enquete);
	}

	/**
	 * 新規アンケートの表示
	 */
	function showEnquete() {
		var_dump($this->enquete);
		global $cd_smarty_instance;

		// TODO テンプレート化

//		$cd_smarty_instance->assign("enquete", $this->enquete );

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