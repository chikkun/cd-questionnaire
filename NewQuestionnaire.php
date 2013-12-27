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
	 * 実際にCREATEされるテーブル名(プレフィックスがつく)
	 *
	 * @var unknown
	 */
	var $tableName = NULL;
	/**
	 * データベースで使われる言語
	 * UTF8
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

	var $start_date = NULL;
	var $end_date = NULL;

	// 表示文
	var $new_enquete_phase = array(
			'title' => '新規アンケート作成',
			'submit_value' => '新規作成'
	);
	var $edit_enquete_phase = array(
			'title' => 'アンケートの編集',
			'submit_value' => '変更を保存'
	);

	/**
	 * コンストラクタ
	 * メニュー表示
	 */
	function __construct() {
		add_action('admin_menu', array(
				$this,
				'cd_questionnaire_add_pages'
		));
	}

	/**
	 * 管理者メニューへ表示
	 */
	function cd_questionnaire_add_pages() {
		$hook_new = add_submenu_page('cd-questionnaire/SearchAndUpdateQuestionnaire.php', '新規アンケート作成', '新規作成', 8, __FILE__ . '?action=new', array(
				$this,
				'divideAction'
		));
	}

	function divideAction() {
		if (isset ($_POST ['action'])) {
			$this->questionnaire_confirm_page();
		} else {
			$this->questionnaire_new_page();
		}
	}

	function questionnaire_confirm_page() {
		echo $this->printShortCode();
		echo "<p>questionnaire_confirm_page</p>";
		$this->registEnquete();
		
	}

	/**
	 * アンケートの新規作成
	 */
	function questionnaire_new_page() {
		var_dump($_POST);
		$this->setTableName();
		$this->add_javascripts();
		global $cd_smarty_instance;

		//$this->setEnquetesResult();

		$statement = $this->new_enquete_phase;

		$cd_smarty_instance->assign("afterAdd_selectionorders", file_get_contents(plugin_dir_path(__FILE__) . 'templates/selectionorders.tpl'));
		$cd_smarty_instance->assign("afterAdd_questionorders", file_get_contents(plugin_dir_path(__FILE__) . 'templates/questionorders.tpl'));

		$cd_smarty_instance->assign("enqueteAction", 'new');
		$cd_smarty_instance->assign("enquete_button", '新規登録');

		$cd_smarty_instance->assign("data", '');
		$cd_smarty_instance->assign("form_title", '新規登録');
		$cd_smarty_instance->display("update.tpl");
	}

	function registEnquete() {
		$question = array();
		$selection = array();

		$this->enquete_name = $_POST ['enquete_name'];
		$this->start_date = $_POST ['start_date'];
		$this->end_date = $_POST ['end_date'];
		$dao = new QuestionnaireDAO();
		$this->enquete_id = $dao->insertEnquete($this->enquete_name, $this->start_date, $this->end_date);

		$enquete = $_POST ['enquete'] ['questions'];
		foreach ($enquete as $question) {
			$dao->insertQuestion($question);
		}
//		return;
	}

	function setTableName() {
		if (!isset ($this->tableName)) {
			$dao = new QuestionnaireDAO ();
			$this->tableName = $dao->getTableNames();
		}
	}

	function deleteMessage($id) {
		return <<<EOF
		<div class="updated fade">
			<p>
				<strong>
					アンケートID： $id のアンケートを削除しました。
				</strong>
			</p>
		</div>
EOF;
	}

	function saveMessage() {
		return <<<EOF
		<div class="updated fade">
			<p>
				<strong><?php _e('Options saved.'); ?> </strong>
			</p>
		</div>
EOF;
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
