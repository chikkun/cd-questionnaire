<?php
/**
 * Created by PhpStorm.
 * User: chikkun
 * Date: 2013/12/27
 * Time: 13:28
 */

namespace cd;

class SearchQuestionnaire {
	function search($where, $page, $perPage, $pageID) {
		// smartyオブジェクト
		global $cdSmartyInstance;
		$offset = ($pageID - 1) * $perPage;
		// カレントディレクトリをincludeパスに追加(Pagerには必要だった---smartyにはいらない)
		$path = plugin_dir_path(__FILE__);
		set_include_path(get_include_path() . PATH_SEPARATOR . $path);

		// Pager読み込み
		require_once('Pager/Pager.php');
		$cddb = new \cd\QuestionnaireDAO();
		list($results, $total) = $cddb->getQuestionnairesListPerPage($where, $perPage, $offset);
		// 検索fieldに値をセット
		if(is_array($where) && isset($where["name"])){
			$cdSmartyInstance->assign("name", $where["name"]);
		} else {
			$cdSmartyInstance->assign("name", "");
		}
		if(is_array($where) && isset($where["id"])){
			$cdSmartyInstance->assign("id", $where["id"]);
		} else {
			$cdSmartyInstance->assign("id", "");
		}
		if(is_array($where) && isset($where["start_date_after"])){
			$cdSmartyInstance->assign("start_date_after", $where["start_date_after"]);
		} else {
			$cdSmartyInstance->assign("start_date_after", "");
		}
		if(is_array($where) && isset($where["start_date_before"])){
			$cdSmartyInstance->assign("start_date_before", $where["start_date_before"]);
		} else {
			$cdSmartyInstance->assign("start_date_before", "");
		}
		$cdSmartyInstance->assign("e_list", $results);
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
			'prevImg' => '≪戻る　',
			// 戻るリンクのテキスト(imgタグ使用可)
			'nextImg' => '次へ≫',
			// 次へリンクのテキスト(imgタグ使用可),
			'lastPageText' => "最後へ",
			'firstPageText' => "最初へ",
			'firstPagePre' => '',
			'lastPagePre' => '　　',
			'firstPagePost' => '',
			'lastPagePost' => ''
		);
		// Pageオブジェクト生成
		$pager = @ \Pager::factory($pager_array);
		// linkタグをもらう
		$pager_links = $pager->getLinks();
		$pager_html = <<< EOD
{$pager_links['first']}{$pager_links['back']}
{$pager_links['pages']}
{$pager_links['next']}{$pager_links['last']}
EOD;
		$cdSmartyInstance->assign("paging", $pager_html);
		$cdSmartyInstance->assign("page", $page);

		$cdSmartyInstance->display("search.tpl");
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