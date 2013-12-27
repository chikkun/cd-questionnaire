<?php
class CDQuestionnaire {
	/**
	 * プラグインのバージョン
	 *
	 * @var unknown
	 */
	var $version = 0.125;
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
	 *
	 */
	var $tableName = NULL;
	/**
	 * データベースで使われる言語
	 * UTF8
	 *
	 * @var unknown
	 *
	 */
	var $char = NULL;
	function __construct() {
		$this->db_version = get_option ( 'cdq_db_version', 0 );
		
		// wp-config.phpに書いてある文字コードを使用する
		$this->char = defined ( "DB_CHARSET" ) ? DB_CHARSET : "utf8";
		
		// データベース用 テーブル名を決める
		$this->setTableName ();
		
		// プラグイン読み込み完了後にフックを登録
		// add_action('plugins_loaded', array($this, 'activate'));
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
	function setTableName() {
		global $wpdb;
		foreach ( $this->table as $name ) {
			$this->tableName [$name] = $wpdb->prefix . $name;
		}
	}
	function getTableName() {
		!isset ( $this->tableName ) ? $this->setTableName () : NULL;
		return $this->tableName;
	}
	
	/**
	 * 以下テーブル作成のSQL文
	 *
	 * @return string
	 */
	function enquetesSql() {
		return <<<EOS
CREATE TABLE {$this->tableName['enquetes']} (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(128) NOT NULL COMMENT 'アンケート名',
  `start_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '開始日',
  `end_date` timestamp NOT NULL DEFAULT '2034-12-31 23:59:50' COMMENT '終了日',
  `poll_or_question` int(1) unsigned NOT NULL DEFAULT '0' COMMENT 'アンケートor問題',
  `delete_flag` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '削除フラグ',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '作成日',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修正日',
  PRIMARY KEY (`id`),
  INDEX (`name`, `start_date`, `end_date`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET='$this->char' COMMENT='アンケートテーブル';
EOS;
	}
	function questionsSql() {
		return <<<EOS
CREATE TABLE {$this->tableName['questions']} (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `enquete_id` bigint(20) NOT NULL COMMENT 'enquete_id',
  `sort_id` int(11) NOT NULL COMMENT '表示順',
  `question_text` varchar(256) NOT NULL COMMENT '問題文',
  `multiple_answer` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '回答が複数可か',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '作成日',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修正日',
  PRIMARY KEY (`id`),
  INDEX (`enquete_id`, `sort_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET='$this->char' COMMENT='質問テーブル';    
EOS;
	}
	function selectionsSql() {
		return <<<EOS
CREATE TABLE {$this->tableName['selections']} (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `question_id` bigint(20) NOT NULL COMMENT 'question_id',
  `sort_id` int(11) NOT NULL COMMENT '表示順',
  `selection_display` varchar(64) NOT NULL COMMENT 'selection_display',
  `to_select_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '選ぶべき選択肢',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '作成日',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修正日',
  PRIMARY KEY (`id`),
  INDEX (`question_id`, `sort_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET='$this->char' COMMENT='選択肢テーブル';
EOS;
	}
	function answersSql() {
		return <<<EOS
CREATE TABLE {$this->tableName['answers']} (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `enquete_id` bigint(20) NOT NULL COMMENT 'enquete_id',
  `question_id` bigint(20) NOT NULL COMMENT 'question_id',
  `selection_id` bigint(20) NOT NULL COMMENT 'selection_id',
  `identifier` varchar(512) DEFAULT NULL COMMENT '識別子',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '作成日',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修正日',
  PRIMARY KEY (`id`),
  INDEX (`enquete_id`, `question_id`, `selection_id`, `identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET='$this->char' COMMENT='回答結果テーブル';
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
}
