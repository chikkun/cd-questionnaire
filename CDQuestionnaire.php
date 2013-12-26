<?php
/**
 * FILE: CDQuestionnaire.php
 * Author: C & D, Inc.;
 * アンケート作成を伴う管理者の作業
 */
class CDQuestionnaire {
	/**
	 * プラグインのバージョン
	 *
	 * @var unknown
	 */
	var $version = 0.123;
	/**
	 * データベースのテーブルの識別
	 *
	 * @var unknown
	 */
	var $table = array (
			"enquetes",
			"questions",
			"selections",
			"answers",
			"identifiers"
	);
	/**
	 * 実際にCREATEされるテーブル名(プレフィックスがつく)
	 *
	 * @var unknown
	*/
	var $tableName = array ();
	/**
	 * データベースで使われる言語
	 * UTF8
	 *
	 * @var unknown
	*/
	var $char = NULL;
	/**
	 * アンケートid
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
		$this->db_version = get_option ( 'cdq_db_version', 0 );

		// wp-config.phpに書いてある文字コードを使用する
		$this->char = defined ( "DB_CHARSET" ) ? DB_CHARSET : "utf8";

		// データベース用 テーブル名を決める
		$this->setTableName ();

		// メニュー表示
		add_action ( 'admin_menu', array (
		$this,
		'add_pages'
				) );
				// プラグイン読み込み完了後にフックを登録
				// add_action('plugins_loaded', array($this, 'activate'));
	}

	/**
	 * 管理者メニューへ表示
	 */
	function add_pages() {
// 		$hook = add_options_page ( 'アンケート　ページ', 'アンケート一覧', 'level_8', __FILE__, array (
// 				$this,
// 				'enquetes_table_page'
// 		), '', 26 );
// 		$hook_new = add_options_page ( '新規アンケート作成', '新規アンケート作成', 8, __FILE__ . '?option=new', array (
// 				$this,
// 				'questionnaire_option_page'
// 		) );
		$hook = add_menu_page( 'CDEnquete', 'アンケート', 8, __FILE__, array ($this, 'enquetes_table_page'),'',26 );
		$hook_new = add_submenu_page(__FILE__, '新規アンケート作成', '新規作成', 8, __FILE__. '?option=new', array($this, 'questionnaire_option_page'));
		//$hook = add_submenu_page(__FILE__, '新規アンケート作成', '新規作成', 8, __FILE__, array($this, 'questionnaire_option_page'));
		add_action ( "admin_head-" . $hook, array (	$this, 'add_javascripts' ) );
		add_action ( "admin_head-" . $hook_new, array (	$this, 'add_javascripts' ) );
		// 'level_8' .$hook
	}
	function add_javascripts() {
		wp_enqueue_style ( 'bootstrap', plugin_dir_url ( __FILE__ ) . 'css/bootstrap.min.css' );
		wp_enqueue_style ( 'jquery', plugin_dir_url ( __FILE__ ) . 'css/jquery.ui.all.css' );
		// wp_enqueue_style ( 'jquery.base', plugin_dir_url ( __FILE__ ) . 'css/jquery.ui.base.css' );
		// wp_enqueue_style ( 'jquery.theme', plugin_dir_url ( __FILE__ ) . 'css/jquery.ui.theme.css' );
		wp_enqueue_style ( 'cdq', plugin_dir_url ( __FILE__ ) . 'css/style.css' );

		wp_enqueue_script ( 'jquery' );

		// wp_enqueue_script( 'jquery.ui.core', plugin_dir_url( __FILE__ ) . 'js/jquery.ui.core.min.js', array( 'jquery' ) );
		// wp_enqueue_script( 'jquery.ui.datepicker', plugin_dir_url( __FILE__ ) . 'js/jquery.ui.datepicker.min.js', array( 'jquery' ) );
		// wp_enqueue_script( 'jquery.sheepItPlugin', plugin_dir_url( __FILE__ ) . 'js/jquery.sheepItPlugin.min.js', array( 'jquery' ) );
		// wp_enqueue_script( 'jquery.validate', plugin_dir_url( __FILE__ ) . 'js/jquery.validate.min.js', array( 'jquery' ) );
		// wp_enqueue_script( 'additional', plugin_dir_url( __FILE__ ) . 'js/additional-methods.min.js', array( 'jquery' ) );
		// wp_enqueue_script( 'query.dump', plugin_dir_url( __FILE__ ) . 'js/jquery.dump.min.js', array( 'jquery' ) );
		// wp_enqueue_script( 'messages', plugin_dir_url( __FILE__ ) . 'js/messages_ja.min.js', array( 'jquery' ) );


		wp_enqueue_script ( 'jquery.ui.core', plugin_dir_url ( __FILE__ ) . 'js/jquery.ui.core.min.js' );
		wp_enqueue_script ( 'jquery.ui.datepicker', plugin_dir_url ( __FILE__ ) . 'js/jquery.ui.datepicker.min.js' );
		wp_enqueue_script ( 'jquery.sheepItPlugin', plugin_dir_url ( __FILE__ ) . 'js/jquery.sheepItPlugin.min.js' );
		wp_enqueue_script ( 'jquery.validate', plugin_dir_url ( __FILE__ ) . 'js/jquery.validate.min.js' );
		wp_enqueue_script ( 'additional', plugin_dir_url ( __FILE__ ) . 'js/additional-methods.min.js' );
		wp_enqueue_script ( 'query.dump', plugin_dir_url ( __FILE__ ) . 'js/jquery.dump.min.js' );
		wp_enqueue_script ( 'messages', plugin_dir_url ( __FILE__ ) . 'js/messages_ja.min.js' );
	}

	/**
	 * アンケートの一覧を表示
	 * [編集]ボタンで戻ってきたら、	function questionnaire_option_page() へ
	 * [削除]ボタンで戻ってきたら、　削除作業をして、一覧を再表示
	 */
	function enquetes_table_page() {

		// $_POST['enquete_options'])があったら保存
		if (isset ( $_POST ['enquete_options'] )) {
			// check_admin_referer ( 'enqoptions' );
			$opt = $_POST ['enquete_options'];

			if (isset ( $opt ['enquete_select_edit'] ) || isset ( $opt ['enquete_new_edit'] )) {
				// form 文によってページ遷移
				$this->questionnaire_option_page ();
				return;
			} else if (isset ( $opt ['enquete_select_delete'] )) {
				// 削除作業
				echo denn;
				echo $this->deleteMessage ( $opt ['enquete_select_id'] );
			}
		}
		// データベースから「enquete_id」「enquete_name」を取得する
		$this->setEnquetesResult ();

		?>
<div class="wrap">
	<div id="icon-options-general" class="icon32">
		<br />
	</div>
	<h2>アンケート一覧</h2>




	<?php
	$column = '<table class="cdq_enquetes_table">';
	$column .= "<tr><th>アンケートID</th><th>アンケート名</th><th>アクション</th></tr>";
	for($id = 1; $id <= $this->max_id; $id ++) {
			$input_id = '<input style="width: auto; text-align: right;" class="cdq_input_id" type="text" readonly name="enquete_options[enquete_select_id]" value=' . $id . ' />';
			$edit = '<input class="button-primary cdq_edit_button" type="submit" name="enquete_options[enquete_select_edit]" value="編集" />';
			$delete = '<input class="button-primary cdq_delete_button" type="submit" name="enquete_options[enquete_select_delete]" value="削除" />';
			$column .= '<form action="" method="post">';
			// $column .= wp_nonce_field ( 'enqoptions' );
			$column .= '<tr><td>' . $input_id . '</td><td>' . $this->result [$id] . '</td><td>' . $edit . ' &nbsp; ' . $delete . '</td></tr>';
			$column .= '</form>';
		}
		$column .= "</table>";
		echo $column;
		?>
</div>
<form action="" method="POST">
	<input type="submit" name="enquete_options[enquete_new_edit]"
		value="新規作成" />
</form>


<?php
	}

	/**
	 * アンケートの新規作成/再編集
	 * 　　　　　$_POST ['enquete_options']['enquete_select_edit']　の時、再編集
	 * 　　　　　それ以外なら、新規作成
	 */
	function questionnaire_option_page() {
		global $cd_smarty_instance;

		if (isset ( $_POST ['enquete_name'] )) {
			$this->registEnquete ();
			$this->printShortCode ();

		}
		$this->setEnquetesResult ();
		// $this->add_javascripts ();

		$phase = "new";
		$statement = $this->new_enquete_phase;
		// $_POST['enquete_options'])があったら保存
		if (isset ( $_POST ['enquete_options'] )) {
			// check_admin_referer ( 'enqoptions' );
			$opt = $_POST ['enquete_options'];

			wp_enqueue_style ( 'bootstrap', plugin_dir_url ( __FILE__ ) . 'css/bootstrap.min.css', false, false, true );
			wp_enqueue_style ( 'jquery', plugin_dir_url ( __FILE__ ) . 'css/jquery.ui.all.css', false, false, true );
			wp_enqueue_style ( 'cdq', plugin_dir_url ( __FILE__ ) . 'css/style.css', false, false, true );

		}

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
		$this->insertEnquete();

		$enquete = $_POST ['enquete'] ['questions'];
		foreach ($enquete as $question) {
			$this->insertQuestion($question);
		}

	}

	function insertEnquete() {
		$sql =<<<EOF
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

		$result = mysql_query($query);

		global $wpdb;
		$sql = $wpdb->prepare($sql,$this->enquete_name,$this->start_date,$this->end_date);
		$wpdb->query($sql);
		$this->setEnquetesResult();
		$query = 'select last_insert_id();';// from ' .$this->tableName['enquetes'];
		$this->enquete_id = $wpdb->get_var($query);
		return $sql;
	}
	function insertQuestion($question) {

		$sql =<<<EOF
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
		$sql = $wpdb->prepare($sql,$this->enquete_id,$question['order'],$question['question'],1);
		$wpdb->query($sql);
		$query = 'select last_insert_id(); ';//from ' .$this->tableName['questions'];
		$q_id = $wpdb->get_var($query);

		$sqln =<<<EOF
			INSERT INTO {$this->tableName['selections']}
			(question_id,sort_id,selection_display)
			VALUES
			(
  				%d,
  				%d,
  				%s
			);
EOF;

		foreach($question['selections'] as $sel) {
			$sql = $wpdb->prepare($sqln,$q_id,$sel['order'],$sel['selection']);
			$wpdb->query($sql);
		}
	}

	/**
	 * Pluginが有効化された時に実行される
	 * テーブルが最新で無い/存在しない時に、一つづつ　create　する。
	 */
	function activate() {
		global $wpdb;
		foreach ( $this->table as $name ) {
			$is_db_exists = $wpdb->get_var ( $wpdb->prepare ( "SHOW TABLES LIKE %s", $this->tableName [$name] ) );

			if ($is_db_exists) {
				// データベースが最新かどうか確認
				if ($this->db_version >= $this->version) {
					// 必要ないので関数を終了
					return;
				}
			}

			// ここまで実行されているということはデータベース作成が必要
			// 必要なファイルを読み込み
			require_once ABSPATH . "wp-admin/includes/upgrade.php";
			// dbDeltaを実行
			$sqlfunc = $name . "Sql";
			dbDelta ( $this->$sqlfunc () );
		}
		update_option ( "cdq_db_version", $this->version );
	}

	/**
	 * どうでも良い小間物
	 *
	 * @return string
	 */
	function getShortCode() {
		// 実際には、id を受け取るか、送られてこなかったら データベースから最大値を取得する？
		// 現在は、id　の記述がなかったら「id=0」となり「アンケートがない」旨を表示させている。
		return '[CDQ-enquete id=' . $this->enquete_id . ']';
	}

	/**
	 * 以下テーブル作成のSQL文
	 *
	 * @return string
	 */
	function enquetesSql() {
		return <<<EOS
               CREATE TABLE {$this->tableName['enquetes']} (
				    id bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
				    name varchar(128) NOT NULL COMMENT 'アンケート名',
				    start_date timestamp COMMENT '開始日',
				    end_date timestamp COMMENT '終了日',
				     -- 1:アンケート,2:問題
				    poll_or_question int(1) unsigned DEFAULT 1 NOT NULL COMMENT 'アンケートor問題',
				    PRIMARY KEY  (id)
			     ) CHARACTER SET '$this->char',
			    COMMENT = 'アンケートテーブル';
EOS;
	}
	function questionsSql() {
		return <<<EOS
               CREATE TABLE {$this->tableName['questions']} (
					id bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
					-- 親テーブルenqueteのid(FK)
					enquete_id bigint NOT NULL COMMENT 'enquete_id',
					sort_id int NOT NULL COMMENT '表示順',
					question_text varchar(256) NOT NULL COMMENT '問題文',
					-- 1:単一回答,2:複数回答可
					multiple_answer int(1) unsigned DEFAULT 1 NOT NULL COMMENT '回答が複数可か',
					PRIMARY KEY  (id)
					) CHARACTER SET '$this->char',
					 COMMENT = '質問テーブル';
EOS;
	}
	function selectionsSql() {
		return <<<EOS
               CREATE TABLE {$this->tableName['selections']} (
					id bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
					question_id bigint NOT NULL COMMENT 'question_id',
					sort_id int NOT NULL COMMENT '表示順',
					selection_display varchar(64) NOT NULL COMMENT 'selection_display',
					-- アンケートでは無意味、trueだったらそれを選ぶと「正解」
					to_select_flag boolean DEFAULT false NOT NULL COMMENT '選ぶべき選択肢',
					PRIMARY KEY  (id)
					) CHARACTER SET '$this->char',
					 COMMENT = '選択肢テーブル';
EOS;
	}
	function answersSql() {
		return <<<EOS
               CREATE TABLE {$this->tableName['answers']} (
					id bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
					enquete_id bigint NOT NULL COMMENT 'enquete_id',
					question_id bigint NOT NULL COMMENT 'question_id',
					selection_id bigint NOT NULL COMMENT 'selection_id',
					identifier varchar(512) COMMENT '識別子',
					PRIMARY KEY  (id)
					) CHARACTER SET '$this->char',
			       COMMENT = '回答結果テーブル';
EOS;
	}
	function identifiersSql() {
		return <<<EOS
               CREATE TABLE {$this->tableName['identifiers']} (
					id bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
					enquete_id bigint NOT NULL COMMENT 'enquete_id',
					identifier varchar(512) NOT NULL COMMENT 'identifier',
					PRIMARY KEY  (id)
					) CHARACTER SET '$this->char',
				     COMMENT = '識別子テーブル';
EOS;
	}
	function getMaxId($table) {
		global $wpdb;
		return $wpdb->get_var('SELECT MAX(id) FROM '.$table.';');
	}
	function setTableName() {
		global $wpdb;
		foreach ( $this->table as $name ) {
			$this->tableName [$name] = $wpdb->prefix . $name;
		}
	}
	function setEnquetesResult() {
		! isset ( $this->tableName ) ? $this->setTableName () : NULL;
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
}
