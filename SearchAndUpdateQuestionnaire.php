<?php
namespace cd;
class SearchAndUpdateQuestionnaire {
	public $version = 0.1;
	private $perPage = 10;

	public function __construct() {
		$this->db_version = get_option('cdq_db_version', 0);
		// メニュー表示
		add_action('admin_menu', array($this,
			'questionnaireAddPages'));
	}

	public function questionnaireAddPages() {
		$hook = add_menu_page('CDQuestionnaire', 'アンケート', 'level_8', 'cd-questionnaire/SearchAndUpdateQuestionnaire.php', array(
			$this,
			'searchUpdateQuestionnaire'
		), '', 26);
	}

	public function searchUpdateQuestionnaire() {
		require_once("QuestionnaireManager.php");
		$action = "";
		if (isset($_GET ['action'])) {
			$action = $_GET ['action'];
		}
		if (isset($_POST ['action'])) {
			$action = $_POST ['action'];
		}
		$manager = new \cd\QuestionnaireManager();
		switch ($action) {
			case 'update_form' :
				// idなどの改ざんがあったら、そのまま一覧表示に
				if (!isset($_GET ['id']) || !preg_match("/\d+/", $_GET ['id'])) {
					if (!isset($_GET ['page'])) {
						$_GET ['page'] = "cd-questionnaire/SearchQuestionnaire.php";
					}
					$manager->search(array(), $_GET ['page'], $this->perPage, 1);
				} else {
					$id = $_GET ['id'];
				}

				$manager->updateShowForm($id);
				break;
			case 'update' :
				if (!isset($_POST["enquete_id"]) || !preg_match("/\d+/", $_POST["enquete_id"])) {
					if (!isset($_GET ['page'])) {
						$_GET ['page'] = "cd-questionnaire/SearchQuestionnaire.php";
					}
					$manager->search(array(), $_GET ['page'], $this->perPage, 1);
				} else {
					$enqueteId = $_POST["enquete_id"];
				}
				$enqueteId = $_POST["enquete_id"];
				$re = $manager->updateQuestionnaire($enqueteId);
				if (!$re) {
					$mes = "更新に失敗しました";
				} else {
					$mes = "更新しました";
				}
				$flag = $manager->updateShowForm($enqueteId, $mes);

				break;
			case 'search' :
				// http://wordpress.chikkun.com/wp-admin/admin.php?page=cd-questionnaire/SearchQuestionnaire.php
				// の「cd-questionnaire/SearchQuestionnaire.php」を取得、hiddenにセットする
				$page = $_GET ['page'];
				// PagerのpageIDからoffsetを計算
				if (isset($_GET ['pageID'])) {
					$pageID = $_GET ['pageID'] + 0;
				} else {
					$pageID = 1;
				}
				$where = "";
				if (isset($_GET['where'])) {
					$where = $_GET['where'];
				}
				if (!is_array($where)) {
					$where = array();
				}
				$manager->search($where, $page, $this->perPage, $pageID);
				break;
			case 'delete' :
				$enqueteId = $_POST["enquete_id"];
				$re = $manager->deleteQuestionnaire($enqueteId);
				if (!$re) {
					$mes = "削除に失敗しました";
				} else {
					$mes = "削除しました";
				}
				$flag = $manager->updateShowForm($enqueteId, $mes, false);

				break;
			default :
				$page = $_GET ['page'];
				// PagerのpageIDからoffsetを計算
				if (isset($_GET ['pageID'])) {
					$pageID = $_GET ['pageID'] + 0;
				} else {
					$pageID = 1;
				}
				$where = "";
				if (isset($_GET['where'])) {
					$where = $_GET['where'];
				}
				if (!is_array($where)) {
					$where = array();
				}
				$manager->search($where, $page, $this->perPage, $pageID);
				break;

		}
	}
}