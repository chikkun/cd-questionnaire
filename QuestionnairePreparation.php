<?php
namespace cd;

/**
 * FILE: QuestionnairePreparation.php
 * Author: C & D, Inc.;
 *
 * アンケート作成を行う管理者の作業
 * Class QuestionnairePreparation
 * @package cd
 */
class QuestionnairePreparation {

	/**
	 * コンストラクタ
	 * メニュー表示
	 */
	function __construct() {
		add_action('admin_menu', array($this, 'questionnaireAddPages'));
//		add_action('init', array($this, 'cdq_session_start'));
	}

	/**
	 * 管理者メニューへ表示
	 */
	function questionnaireAddPages() {
		add_submenu_page('cd-questionnaire/SearchAndUpdateQuestionnaire.php', '新規アンケート作成', '新規作成', 'level_8', __FILE__ . '?action=new', array(
				$this,
				'divideAction'
		));
	}

	function divideAction() {
		require_once("CDUtils.php");
		$key = \cd\CDUtils::getUrlAndUserAndActionText("preparation");
		if (isset($_COOKIE[$key])
				&& isset($_POST["hardrocks"])
				&& $_COOKIE[$key] === $_POST["hardrocks"]
				&& isset($_POST['action'])
		) {

			$enquete['enquete_name'] = $_POST ['enquete_name'];
			$enquete['start_date'] = $_POST ['start_date'];
			$enquete['end_date'] = $_POST ['end_date'];
			$enquete['data'] = $_POST ['enquete'] ['questions'];

			require_once("QuestionnaireManager.php");
			$qre = new QuestionnaireManager();
			$qre->questionnaireRegistPage($enquete);

//			wp_enqueue_script('jquery.cookie', plugin_dir_url(__FILE__) . 'js/jquery.cookie.js', array(
//				'jquery'
//			), false, true);
////			echo "<script type='text/javascript' src='" . plugin_dir_url(__FILE__) . "js/jquery.cookie.js'></script>";
//			// need to remove cookie
//			echo \cd\CDUtils::getRemoveCookieJSTagWithNonce("preparation");

		} else {
			$this->questionnaireNewPage();
		}
	}


	/**
	 * アンケートの新規作成ページの表示
	 */
	function questionnaireNewPage() {
		$unises = uniqid('cdq', true);
		global $cdSmartyInstance;
		$cdSmartyInstance->assign("hidden_id", "");
		$cdSmartyInstance->assign("mes", "");
		$cdSmartyInstance->assign("enable", "");
		$cdSmartyInstance->assign("start_date", "");
		$cdSmartyInstance->assign("end_date", "");
		$cdSmartyInstance->assign("enquete_title", "");

		$cdSmartyInstance->assign("enqueteAction", 'new');
		$cdSmartyInstance->assign("enquete_button", '登録');

		$cdSmartyInstance->assign("data", '');
		$cdSmartyInstance->assign("form_title", '新規登録');

		require_once("CDUtils.php");
		list($jscookie, $hidden) = \cd\CDUtils::getSetCookieJSTagWithNonce("preparation");
		//$hidden
		$cdSmartyInstance->assign("jscookie", $jscookie);
		$cdSmartyInstance->assign("unises", $hidden);

		$this->addJavascripts();
		$cdSmartyInstance->display("update.tpl");
	}

	function addJavascripts() {
		wp_enqueue_style('bootstrap', plugin_dir_url(__FILE__) . 'css/bootstrap.min.css');
		wp_enqueue_style('jquery', plugin_dir_url(__FILE__) . 'css/jquery.ui.all.css');
		wp_enqueue_style('cdq', plugin_dir_url(__FILE__) . 'css/style.css');

		wp_enqueue_script('jquery');
		wp_enqueue_script('jquery.ui.core', plugin_dir_url(__FILE__) . 'js/jquery.ui.core.min.js', array(
				'jquery'
		));
		wp_enqueue_script('jquery.cookie', plugin_dir_url(__FILE__) . 'js/jquery.cookie.js', array(
				'jquery'
		), false, true);
		wp_enqueue_script('jquery.ui.datepicker', plugin_dir_url(__FILE__) . 'js/jquery.ui.datepicker.min.js', array(
				'jquery'
		));
		wp_enqueue_script('jquery.sheepItPlugin', plugin_dir_url(__FILE__) . 'js/jquery.sheepItPlugin.min.js', array(
				'jquery'
		));
		wp_enqueue_script('jquery.validate', plugin_dir_url(__FILE__) . 'js/jquery.validate.min.js', array(
				'jquery'
		));
		wp_enqueue_script('additional', plugin_dir_url(__FILE__) . 'js/additional-methods.min.js', array(
				'jquery'
		));
		wp_enqueue_script('messages', plugin_dir_url(__FILE__) . 'js/messages_ja.min.js', array(
				'jquery'
		));
	}

}
