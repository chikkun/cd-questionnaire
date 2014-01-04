<?php
namespace cd;

/**
 * FILE: NewQuestionnaire.php
 * Author: C & D, Inc.;
 * アンケート作成を行う管理者の作業
 *
 * @property mixed getShortCode
 */
class NewQuestionnaire {

	/**
	 * コンストラクタ
	 * メニュー表示
	 */
	function __construct() {
		add_action('admin_menu', array($this, 'cdQuestionnaireAddPages'));
	}

	/**
	 * 管理者メニューへ表示
	 */
	function cd_questionnaire_add_pages() {
		$hook_new = add_submenu_page('cd-questionnaire/SearchAndUpdateQuestionnaire.php', '新規アンケート作成', '新規作成', 'level_8', __FILE__ . '?action=new', array(
				$this,
				'divide_action'
		));
	}

	function divide_action() {
		$this->add_javascripts();

		if (isset ($_POST ['action'])) {
			$enquete['enquete_name'] = $_POST ['enquete_name'];
			$enquete['start_date'] = $_POST ['start_date'];
			$enquete['end_date'] = $_POST ['end_date'];

			$enquete['data'] = $_POST ['enquete'] ['questions'];

			require_once("QuestionnaireRegist.php");
			$qre = new QuestionnaireRegist();
			$qre->questionnaire_regist_page($enquete);
		} else {
			$this->questionnaire_new_page();
		}
	}

	/**
	 * アンケートの新規作成ページの表示
	 */
	function questionnaire_new_page() {
		global $cd_smarty_instance;

		$cd_smarty_instance->assign("afterAdd_selectionorders", file_get_contents(plugin_dir_path(__FILE__) . 'templates/selectionorders.tpl'));
		$cd_smarty_instance->assign("afterAdd_questionorders", file_get_contents(plugin_dir_path(__FILE__) . 'templates/questionorders.tpl'));

		$cd_smarty_instance->assign("enqueteAction", 'new');
		$cd_smarty_instance->assign("enquete_button", '登録');

		$cd_smarty_instance->assign("data", '');
		$cd_smarty_instance->assign("form_title", '新規登録');
		$cd_smarty_instance->display("update.tpl");
	}

	function add_javascripts() {
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
		wp_enqueue_script('query.dump', plugin_dir_url(__FILE__) . 'js/jquery.dump.min.js', array(
				'jquery'
		));
		wp_enqueue_script('messages', plugin_dir_url(__FILE__) . 'js/messages_ja.min.js', array(
				'jquery'
		));
	}

}
