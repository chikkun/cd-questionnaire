<?php
class CDQuestionnaire2 {
	var $version = 0.123;
	var $table = array (
			"enquetes",
			"questions",
			"selections",
			"answers",
			"identifiers"
	);
	var $tableName = array ();
	var $char = NULL;
	var $enquete_id = NULL;
	var $enquete_name = NULL;
	var $max_id = 0;
	var $result = NULL;

	// 表示文
	var $new_enquete_phase = array(
			'title' => '新規アンケート作成',
			'submit_value' => '新規作成',
	);
	var $edit_enquete_phase = array(
			'title' => 'アンケートの編集',
			'submit_value' => '変更を保存',
	);

	function __construct() {
	  $this->db_version = get_option ( 'cdq_db_version', 0 );

		// wp-config.phpに書いてある文字コードを使用する
		//$this->char = defined ( "DB_CHARSET" ) ? DB_CHARSET : "utf8";

		// データベース用 テーブル名を決める
		//$this->setTableName();
		
		// メニュー表示
		add_action ( 'admin_menu', array ( $this,'add_pages' ) );
		//プラグイン読み込み完了後にフックを登録
		//add_action('plugins_loaded', array($this, 'activate'));
	}
	function add_pages() {
		add_menu_page ( 'アンケート　ページ2', 'アンケート2', 'level_8', __FILE__, array ($this, 'enquetes_table_page'),'',26 );
		add_submenu_page(__FILE__, 'アンケート一覧/検索', '一覧/検索', 'level_8', __FILE__ . '?option=new', array($this, 'search_enquetes'));
		//add_submenu_page(__FILE__, '新規アンケート作成', '新規作成', 'level_8', __FILE__, array($this, 'questionnaire_option_page'));
	}
	function search_enquetes() {
	  wp_enqueue_style( 'bootstrap', plugin_dir_url( __FILE__ ) . 'css/bootstrap.min.css', false, false, false );
	  global $cd_smarty_instance;
	  global $wpdb;
	  require_once(plugin_dir_path( __FILE__ ) . 'Pager/Pager.php');
	  $sql = <<< EOF
SELECT   count(id)
FROM    wp_enquetes
EOF;

	  $total = $wpdb->get_var($sql);
	  var_dump($total);
	  $sql = <<< EOF
SELECT   e.id,
	 e.name,
         e.start_date,
         e.end_date,
         e.poll_or_question
FROM     wp_enquetes AS e
ORDER BY e.id DESC LIMIT 20 OFFSET 0;
EOF;

$sql = $wpdb->prepare($sql);
         $results = $wpdb->get_results($sql);
         $cd_smarty_instance->assign("e_list", $results);
          $pager_array = array(
			       'mode'      => 'Jumping', // 表示タイプ(Jumping/Sliding)
			       'perPage'   => 20,       // 一ページ内で表示する件数
			       'delta'     => 10,       // 一ページ内で表示するリンク数
			       'totalItems'=> $total,  // ページング対象データの総数
			       'separator' => ' | ',    // ページリンクのセパレータ文字列
			       'prevImg'   => '≪戻る', // 戻るaリンクのテキスト(imgタグ使用可)
			       'nextImg'   => '次へ≫'  // 次へリンクのテキスト(imgタグ使用可)
			       );

 $cd_smarty_instance->display("search.tpl");

$pager = & Pager::factory($pager_array);
   $pager_links = $pager->getLinks();
     $pager_html = <<< EOD
	      {$pager_links['back']} {$pager_links['first']}
	      {$pager_links['pages']} {$pager_links['last']}
              {$pager_links['next']}
EOD;
   $cd_smarty_instance->assign("paging",$pager_html);
   //	  echo "......";
	}


 }