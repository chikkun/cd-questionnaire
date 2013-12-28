<?php
namespace cd;
class SearchAndUpdateQuestionnaire {
	var $version = 0.1;

	function __construct() {
		$this->db_version = get_option('cdq_db_version', 0);
		// メニュー表示
		add_action('admin_menu', array($this,
			'cd_questionnaire_add_pages'));
	}

	function cd_questionnaire_add_pages() {
		$hook = add_menu_page('CDQuestionnaire', 'アンケート', 8, 'cd-questionnaire/SearchAndUpdateQuestionnaire.php', array(
			$this,
			'search_update_questionnaire'
		), '', 26);
	}

	function search_update_questionnaire() {
		$action = $_GET ['action'];
		if($_POST ['action']){
			$action =$_POST ['action'];
		}
		switch ($action) {
			case 'update_form' :
				require_once("UpdateShowForm.php");
				$update_show_form = new \cd\UpdateShowForm();
				$flag = $update_show_form->update_show_form();
				if(!$flag){
					require_once("SearchQuestionnaire.php");
					$search_questionnaire = new \cd\SearchQuestionnaire();
					$search_questionnaire->search();
				}
				break;
			case 'update' :
				require_once("UpdateQuestionnaire.php");
				$update_questionnaire = new \cd\UpdateQuestionnaire();
				$update_questionnaire->update();
				break;
			case 'search' :
				require_once("SearchQuestionnaire.php");
				$search_questionnaire = new \cd\SearchQuestionnaire();
				$search_questionnaire->search();
				break;
			default :
				require_once("SearchQuestionnaire.php");
				$search_questionnaire = new \cd\SearchQuestionnaire();
				$search_questionnaire->search();
		}
	}
}