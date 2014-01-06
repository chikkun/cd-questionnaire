<?php
namespace cd;
/**
 * Created by PhpStorm.
 * User: denn
 * Date: 14/01/05
 * Time: 14:12
 */
class DateTransform {
	function isDuringPeriod($start_date, $end_date) {
		// start_date end_date をチェック
		$s_d = $this->datetimeToDate($start_date);
		$e_d = $this->datetimeToDate($end_date);
		$today = date('Y-m-d');

		// 日付を比較
		if (strtotime($s_d) > strtotime($today)) {
			//return 'アンケート期間はまだ開始前です。<br />';
			return "todo";
		} else if (strtotime($e_d) < strtotime($today)) {
			//return 'アンケート期間は終了しました。<br />';
			return "done";
		} else {
			//return 'アンケート期間中です。<br />';
			return "now";
		}
	}

	function datetimeToDate($datetime) {
		return preg_replace("/\s00:00:00/", "", $datetime);
	}

	function getFormattedDate($date) {
		return preg_replace("/^(\d+?)-(\d+?)-(\d+)/", "$1年$2月$3日", $date);
	}

}