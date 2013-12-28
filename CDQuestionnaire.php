<?php
namespace cd;
class CDQuestionnaire {
	/**
	 * プラグインのバージョン
	 *
	 * @var unknown
	 */
	var $version = 0.127;
	/**
	 * 実際にCREATEされるテーブル名(プレフィックスがつく)
	 *
	 * @var unknown
	 *
	 */
	var $tableNames = NULL;
	function __construct() {
		$this->db_version = get_option ( 'cdq_db_version', 0 );
		
		// プラグイン読み込み完了後にフックを登録
		// add_action('plugins_loaded', array($this, 'activate'));
	}
	
	/**
	 * Pluginが有効化された時に実行される
	 * テーブルが最新で無い/存在しない時に、一つずつ　create　する。
	 */
	function activate() {
		$dao = new QuestionnaireDAO();
		$this->tableNames = $dao->getTableNames();
		global $wpdb;
		foreach ( $this->tableNames as $name => $tableName ) {
			$is_db_exists = $wpdb->get_var ( $wpdb->prepare ( "SHOW TABLES LIKE %s", $tableName ) );
			
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
			dbDelta ( $dao->$sqlfunc () );
		}
		update_option ( "cdq_db_version", $this->version );
	}
}
