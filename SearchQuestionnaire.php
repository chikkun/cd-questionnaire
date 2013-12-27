<?php
/**
 * Created by PhpStorm.
 * User: chikkun
 * Date: 2013/12/27
 * Time: 13:28
 */

namespace cd;

class SearchQuestionnaire {
	function search() {
		// smartyオブジェクト
		global $cd_smarty_instance;
		global $wpdb;
		// Pagerの1ページ当たりの表示数
		$perPage = 10;
		// http://wordpress.chikkun.com/wp-admin/admin.php?page=cd-questionnaire/CDQuestionnaire2.php
		// の「cd-questionnaire/CDQuestionnaire2.php」を取得、hiddenにセットする
		$page = $_GET ['page'];
		// PagerのpageIDからoffsetを計算
		if ($_GET ['pageID']) {
			$pageID = $_GET ['pageID'] + 0;
		} else {
			$pageID = 1;
		}
		$offset = ($pageID - 1) * $perPage;
		// カレントディレクトリをincludeパスに追加(Pagerには必要だった---smartyにはいらない)
		$path = plugin_dir_path(__FILE__);
		set_include_path(get_include_path() . PATH_SEPARATOR . $path);

		// Pager読み込み
		require_once('Pager/Pager.php');

		// where文作成用
		$where = "";
		$j = 0;
		// where文作成、ついでにフォームのinputのvalueにアサイン
		foreach ($_GET ['where'] as $key => $value) {
			// inputのvalueへ
			$cd_smarty_instance->assign($key, $value);
			// valueは未記入だと空文字なので、空文字じゃないとき
			if (isset ($value) && mb_strlen($value) != 0) {
				$j++;
				if ($j === 1) {
					$where = 'WHERE ';
				} else {
					$where .= 'AND ';
				}
				$val = mysql_real_escape_string($value); // SQL Escape
				switch ($key) {
					case 'start_date_before' :
						$where .= "start_date <= '$val' ";
						break;
					case 'start_date_after' :
						$where .= "start_date >= '$val' ";
						break;
					case 'name' :
						$where .= "name LIKE '%$val%' ";
						break;
					case 'id' :
						$where .= "e.id = '$val' ";
						break;
					default :
						$where .= "$key = '$val' ";
				}
			}
		}
		$sql = <<< EOF
SELECT   count(*)
FROM    wp_enquetes e $where
EOF;

		$total = $wpdb->get_var($sql);

		$sql = <<< EOF
SELECT   e.id,
	       e.name,
         e.start_date,
         e.end_date,
         e.poll_or_question
FROM     wp_enquetes AS e $where
ORDER BY e.id DESC LIMIT $perPage OFFSET $offset;
EOF;

		$results = $wpdb->get_results($sql);
		$cd_smarty_instance->assign("e_list", $results);
		$pager_array = array(
			'mode' => 'Sliding',
			// 表示タイプ(Jumping/Sliding)
			'perPage' => $perPage,
			// 一ページ内で表示する件数
			'delta' => 10,
			// 一ページ内で表示するリンク数
			'totalItems' => intval($total),
			// ページング対象データの総数
			'separator' => ' | ',
			// ページリンクのセパレータ文字列
			'prevImg' => '≪戻る',
			// 戻るリンクのテキスト(imgタグ使用可)
			'nextImg' => '次へ≫',
			// 次へリンクのテキスト(imgタグ使用可),
			'lastPageText' => " 最後へ ",
			'firstPageText' => " 最初へ ",
			'firstPagePre' => '',
			'lastPagePre' => '',
			'firstPagePost' => '',
			'lastPagePost' => ''
		);
		// Pageオブジェクト生成
		$pager = & \Pager::factory($pager_array);
		// linkタグをもらう
		$pager_links = $pager->getLinks();
		$pager_html = <<< EOD
	      {$pager_links['first']} {$pager_links['back']}
	      {$pager_links['pages']} {$pager_links['next']}
          {$pager_links['last']}
EOD;
		$cd_smarty_instance->assign("paging", $pager_html);
		$cd_smarty_instance->assign("page", $page);

		$cd_smarty_instance->display("search.tpl");
		wp_enqueue_script('jquery');
		wp_enqueue_script('jquery.ui.core', plugin_dir_url(__FILE__) . 'js/jquery.ui.core.min.js', array(
				'jquery'
			), false, true);
		wp_enqueue_script('jquery.ui.datepicker', plugin_dir_url(__FILE__) . 'js/jquery.ui.datepicker.min.js', array(
				'jquery'
			), false, true);
		wp_enqueue_script('jquery.ui.datepicker-ja', plugin_dir_url(__FILE__) . 'js/jquery.ui.datepicker-ja.min.js', array(
				'jquery'
			), false, true);
		wp_enqueue_script('jquery.validate', plugin_dir_url(__FILE__) . 'js/jquery.validate.min.js', array(
				'jquery'
			), false, true);
		wp_enqueue_script('additional-methods.min.js', plugin_dir_url(__FILE__) . 'js/additional-methods.min.js', array(
				'jquery'
			), false, true);
		wp_enqueue_script('messages_ja', plugin_dir_url(__FILE__) . 'js/messages_ja.min.js', array(
				'jquery'
			), false, true);
		wp_enqueue_style('bootstrap', plugin_dir_url(__FILE__) . 'css/bootstrap.min.css', false, false, false);
		wp_enqueue_style('jquery.ui', plugin_dir_url(__FILE__) . 'css/jquery.ui.all.css', false, false, false);
	}
} 