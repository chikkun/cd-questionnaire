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

//	function cdq_session_start() {
//		session_start();
//	}

	function divideAction() {
//		var_dump($_SESSION['cdq-session']);
//		echo "--------------------";
//		var_dump($_POST['unises']);
//		exit;
		if (isset ($_POST ['action'])
//				&& isset($_SESSION['cdq-session'])
//				&& isset($_POST['unises'])
//				&& $_SESSION['cdq-session'] === $_POST['unises']
		) {

			$enquete['enquete_name'] = $_POST ['enquete_name'];
			$enquete['start_date'] = $_POST ['start_date'];
			$enquete['end_date'] = $_POST ['end_date'];
			$enquete['data'] = $_POST ['enquete'] ['questions'];

			require_once("QuestionnaireManager.php");
			$qre = new QuestionnaireManager();
			$qre->questionnaireRegistPage($enquete);
//			unset($_SESSION['cdq-session']);

		} else {
			$this->questionnaireNewPage();
		}
	}

	/**
	 * アンケートの新規作成ページの表示
	 */
	function questionnaireNewPage() {
		$unises = uniqid('cdq', true);
//		$_SESSION['cdq-session'] = $unises;

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
		$cdSmartyInstance->assign("unises", "<input type='hidden' name='unises' value='$unises'>");

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
