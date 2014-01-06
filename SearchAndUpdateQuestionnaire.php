<?php
namespace cd;
class SearchAndUpdateQuestionnaire {
	public $version = 0.1;
	private $perPage = 10;

	function __construct() {
		$this->db_version = get_option('cdq_db_version', 0);
		// メニュー表示
		add_action('admin_menu', array($this,
			'questionnaireAddPages'));
	}

	function questionnaireAddPages() {
		$hook = add_menu_page('CDQuestionnaire', 'アンケート', 'level_8', 'cd-questionnaire/SearchAndUpdateQuestionnaire.php', array(
			$this,
			'searchUpdateQuestionnaire'
		), '', 26);
	}

	function searchUpdateQuestionnaire() {
		$action = "";
		if (isset($_GET ['action'])) {
			$action = $_GET ['action'];
		}
		if (isset($_POST ['action'])) {
			$action = $_POST ['action'];
		}
		switch ($action) {
			case 'update_form' :
				// idなどの改ざんがあったら、そのまま一覧表示に
				if (!isset($_GET ['id']) || !preg_match("/\d+/", $_GET ['id'])) {
					require_once("SearchQuestionnaire.php");
					if (!isset($_GET ['page'])) {
						$_GET ['page'] = "cd-questionnaire/SearchQuestionnaire.php";
					}
					$searchQuestionnaire = new \cd\SearchQuestionnaire();
					$searchQuestionnaire->search(array(), $_GET ['page'], $this->perPage, 1);
				} else {
					$id = $_GET ['id'];
				}

				require_once("UpdateShowForm.php");
				$updateShowForm = new \cd\UpdateShowForm();

				$updateShowForm->updateShowForm($id);
				break;
			case 'update' :
				if (!isset($_POST["enquete_id"]) || !preg_match("/\d+/", $_POST["enquete_id"])) {
					require_once("SearchQuestionnaire.php");
					if (!isset($_GET ['page'])) {
						$_GET ['page'] = "cd-questionnaire/SearchQuestionnaire.php";
					}
					$searchQuestionnaire = new \cd\SearchQuestionnaire();
					$searchQuestionnaire->search(array(), $_GET ['page'], $this->perPage, 1);
				} else {
					$enqueteId = $_POST["enquete_id"];
				}
				require_once("UpdateQuestionnaire.php");
				$updateQuestionnaire = new \cd\UpdateQuestionnaire();
				$enqueteId = $_POST["enquete_id"];
				$re = $updateQuestionnaire->update($enqueteId);
				if (!$re) {
					$mes = "更新に失敗しました";
				} else {
					$mes = "更新しました";
				}
				require_once("UpdateShowForm.php");
				$updateShowForm = new \cd\UpdateShowForm();
				$flag = $updateShowForm->updateShowForm($enqueteId, $mes);

				break;
			case 'search' :
				require_once("SearchQuestionnaire.php");
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
				$searchQuestionnaire = new \cd\SearchQuestionnaire();
				$searchQuestionnaire->search($where, $page, $this->perPage, $pageID);
				break;
			case 'delete' :
				require_once("UpdateQuestionnaire.php");
				$updateQuestionnaire = new \cd\UpdateQuestionnaire();
				$enqueteId = $_POST["enquete_id"];
				$re = $updateQuestionnaire->delete($enqueteId);
				if (!$re) {
					$mes = "削除に失敗しました";
				} else {
					$mes = "削除しました";
				}
				require_once("UpdateShowForm.php");
				$updateShowForm = new \cd\UpdateShowForm();
				$flag = $updateShowForm->updateShowForm($enqueteId, $mes, false);

				break;
			default :
				require_once("SearchQuestionnaire.php");
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
				$searchQuestionnaire = new \cd\SearchQuestionnaire();
				$searchQuestionnaire->search($where, $page, $this->perPage, $pageID);
				break;

		}
	}
}