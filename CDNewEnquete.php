<?php
/**
 * FILE: CDNewEnquete.php
 * Author: C & D, Inc.;
 * アンケート作成を行う管理者の作業
 */
class CDNewEnquete {
	
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
	/**
	 * アンケートid の最大値
	 *
	 * @var unknown
	 */
	var $max_id = 0;
	/**
	 * アンケートidとアンケート名の連想配列
	 *
	 * @var unknown
	 */
	var $result = NULL;
	var $start_date = NULL;
	var $end_date = NULL;
	
	// 表示文
	var $new_enquete_phase = array (
			'title' => '新規アンケート作成',
			'submit_value' => '新規作成' 
	);
	var $edit_enquete_phase = array (
			'title' => 'アンケートの編集',
			'submit_value' => '変更を保存' 
	);
	
	/**
	 * コンストラクタ
	 * クラスのバージョン管理
	 * テーブル名管理(新規作成/削除時にも実行される)
	 * テーブルの作成管理(プラグインが有効化されてときに実行)
	 * メニュー表示
	 */
	function __construct() {
		// メニュー表示
		add_action ( 'admin_menu', array (
				$this,
				'cd_questionnaire_add_pages' 
		) );
	}
	
	/**
	 * 管理者メニューへ表示
	 */
	function cd_questionnaire_add_pages() {
		$hook_new = add_submenu_page ( 'cd-questionnaire/SearchAndUpdateQuestionnaire.php', '新規アンケート作成', '新規作成', 8, __FILE__ . '?action=new', array (
				$this,
				'questionnaire_new_page' 
		) );
	}
	function add_javascripts() {
		wp_enqueue_style ( 'bootstrap', plugin_dir_url ( __FILE__ ) . 'css/bootstrap.min.css' );
		wp_enqueue_style ( 'jquery', plugin_dir_url ( __FILE__ ) . 'css/jquery.ui.all.css' );
		wp_enqueue_style ( 'cdq', plugin_dir_url ( __FILE__ ) . 'css/style.css' );
		
		wp_enqueue_script ( 'jquery' );
		wp_enqueue_script ( 'jquery.ui.core', plugin_dir_url ( __FILE__ ) . 'js/jquery.ui.core.min.js', array (
				'jquery' 
		) );
		wp_enqueue_script ( 'jquery.ui.datepicker', plugin_dir_url ( __FILE__ ) . 'js/jquery.ui.datepicker.min.js', array (
				'jquery' 
		) );
		wp_enqueue_script ( 'jquery.sheepItPlugin', plugin_dir_url ( __FILE__ ) . 'js/jquery.sheepItPlugin.min.js', array (
				'jquery' 
		) );
		wp_enqueue_script ( 'jquery.validate', plugin_dir_url ( __FILE__ ) . 'js/jquery.validate.min.js', array (
				'jquery' 
		) );
		wp_enqueue_script ( 'additional', plugin_dir_url ( __FILE__ ) . 'js/additional-methods.min.js', array (
				'jquery' 
		) );
		wp_enqueue_script ( 'query.dump', plugin_dir_url ( __FILE__ ) . 'js/jquery.dump.min.js', array (
				'jquery' 
		) );
		wp_enqueue_script ( 'messages', plugin_dir_url ( __FILE__ ) . 'js/messages_ja.min.js', array (
				'jquery' 
		) );
	}
	
	/**
	 * アンケートの新規作成
	 */
	function questionnaire_new_page() {
		$this->setTableName ();
		$this->add_javascripts ();
		global $cd_smarty_instance;
		
		if (isset ( $_POST ['enquete_name'] )) {
			$this->registEnquete ();
			$this->printShortCode ();
		}
		$this->setEnquetesResult ();
		
		$phase = "new";
		$statement = $this->new_enquete_phase;
		// $_POST['enquete_options'])があったら保存
		if (isset ( $_POST ['enquete_options'] )) {
			// check_admin_referer ( 'enqoptions' );
			$opt = $_POST ['enquete_options'];
			
		}
		
		$cd_smarty_instance->assign ( "data", '' );
		$cd_smarty_instance->assign ( "form_title", '新規登録' );
		$cd_smarty_instance->display ( "update.tpl" );
	}
	function registEnquete() {
		$question = array ();
		$selection = array ();
		
		$this->enquete_name = $_POST ['enquete_name'];
		$this->start_date = $_POST ['start_date'];
		$this->end_date = $_POST ['end_date'];
		$this->insertEnquete ();
		
		$enquete = $_POST ['enquete'] ['questions'];
		foreach ( $enquete as $question ) {
			$this->insertQuestion ( $question );
		}
	}
	function insertEnquete() {
		$sql = <<<EOF
			INSERT INTO {$this->tableName['enquetes']}
			(name,start_date,end_date,poll_or_question)
			VALUES
			(
	 			%s,
  				%s,
  				%s,
  				'1'
			);
EOF;
		
		$result = mysql_query ( $query );
		
		global $wpdb;
		$sql = $wpdb->prepare ( $sql, $this->enquete_name, $this->start_date, $this->end_date );
		$wpdb->query ( $sql );
		$this->setEnquetesResult ();
		$query = 'select last_insert_id();'; // from ' .$this->tableName['enquetes'];
		$this->enquete_id = $wpdb->get_var ( $query );
		return $sql;
	}
	function insertQuestion($question) {
		$sql = <<<EOF
			INSERT INTO {$this->tableName['questions']}
			(enquete_id,sort_id,question_text,multiple_answer)
			VALUES
			(
				%d,
  				%d,
  				%s,
  				%d
			);
EOF;
		
		global $wpdb;
		// TODO multiple_answer に対応させる
		$sql = $wpdb->prepare ( $sql, $this->enquete_id, $question ['order'], $question ['question'], 1 );
		$wpdb->query ( $sql );
		$query = 'select last_insert_id(); '; // from ' .$this->tableName['questions'];
		$q_id = $wpdb->get_var ( $query );
		
		$sqln = <<<EOF
			INSERT INTO {$this->tableName['selections']}
			(question_id,sort_id,selection_display)
			VALUES
			(
  				%d,
  				%d,
  				%s
			);
EOF;
		
		foreach ( $question ['selections'] as $sel ) {
			$sql = $wpdb->prepare ( $sqln, $q_id, $sel ['order'], $sel ['selection'] );
			$wpdb->query ( $sql );
		}
	}
	function getMaxId($table) {
		global $wpdb;
		return $wpdb->get_var ( 'SELECT MAX(id) FROM ' . $table . ';' );
	}
	function setTableName() {
		if (! isset ( $this->tableName )) {
			$cdq = new CDQuestionnaire ();
			$this->tableName = $cdq->getTableName ();
		}
	}
	function setEnquetesResult() {
		$this->setTableName ();
		global $wpdb;
		$enqrows = $wpdb->get_results ( "SELECT id, name FROM " . $this->tableName ['enquetes'] );
		$id = 0;
		foreach ( $enqrows as $enqrow ) {
			if ($id < $enqrow->id)
				$id = $enqrow->id;
			$this->result [$enqrow->id] = $enqrow->name;
		}
		$this->max_id = $id;
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
			<p>現在のアンケートを発行するには、下のショートコードを、アンケートを表示したい固定ページや投稿ページ内に書き込んでください。ここでの作業はそれで終了です。</p>
			<p>
				ショートコード：<input style="width: auto;"
					name="enquete_options[enquete_short_code]" type="text"
					id="inputshortcode" readonly
					value=" $this->getShortCode() " class="regular-text" />
			</p>

EOF;
	}
	function getShortCode() {
		// 実際には、id を受け取るか、送られてこなかったら データベースから最大値を取得する？
		// 現在は、id　の記述がなかったら「id=0」となり「アンケートがない」旨を表示させている。
		return '[CDQ-enquete id=' . $this->enquete_id . ']';
	}
}
