<?php
/**
 * Created by PhpStorm.
 * User: chikkun
 * Date: 2014/01/06
 * Time: 11:26
 */

namespace cd;


class QuestionnaireManager {
	/**
	 * 新規アンケートの登録/表示
	 */
	public function questionnaireRegistPage($enquete) {
		$dao = new \cd\QuestionnaireDAO ();
		$enquete_id = $dao->insertEnquete($enquete);
		echo $this->printShortCode($enquete_id);
		$this->showEnquete($enquete_id);
		echo $this->addMenuButton();
	}

	/**
	 * 新規アンケートの表示
	 */
	public function showEnquete($enquete_id) {
		$dao = new \cd\QuestionnaireDAO ();
		$results = $dao->getEnqueteData($enquete_id);

		// TODO 新規登録されたアンケートの表示
//		$registered['phase'] = 'new';
//		$this->displayEnquete($results, $registered);
		$this->displayNewEnquete($results);

//		echo "<br /><br />登録終了<br /><br />";

	}

	public function printShortCode($enquete_id) {
		return <<<EOF
		<!-- div class="updated fade" -->
		<div class="row span10 offset1">
			<p>現在のアンケートを発行するには、下のショートコードを、アンケートを表示したい固定ページや投稿ページ内に書き込んでください。</p>
			<p>ここでの作業はそれで終了です。</p>
			<p style="margin-left: 5em;">
				ショートコード： [CDQ-enquete id={$enquete_id}]
			</p>
		</div>

		<!-- /div -->
EOF;
	}

	public function displayNewEnquete($results) {
		// smartyオブジェクト
		global $cdSmartyInstance;
		$objects = $this->convertDBDataToObjects($results);
		wp_enqueue_style('bootstrap', plugin_dir_url(__FILE__) . 'css/bootstrap.min.css', false, false, false);
		wp_enqueue_style('cdq', plugin_dir_url(__FILE__) . 'css/style.css');

		$cdSmartyInstance->assign("form_title", "新規登録したアンケート");
		$cdSmartyInstance->assign("questionnaire", $objects);
		$cdSmartyInstance->display("confirm.tpl");

		//	return $flag;

	}

	public function registerAnswer($data) {
		$dao = new \cd\QuestionnaireDAO();
		/* 登録するアンケートの答えを格納する配列 */
		$answerData = array();
		// 登録実行
		$eid = $data['enquete_id'];
		$identifier = $data['identifier'];
		$ip_address = $data['ip_address'];
		foreach ($data as $qid => $value) {
			if (is_array($value)) {
				foreach ($value as $cid => $sel) {
					if ('question' === $cid) {
						$answerData['question'] = $sel;
					} else {
						preg_match("/^(\d+)?:/", $sel, $sid);
						$answerData['sid'] = $sid[1];
						$answerData['qid'] = $qid;
						$answerData['eid'] = $eid;
						$answerData['identifier'] = $identifier;
						$answerData['ip_address'] = $ip_address;

						$dao->insertAnswer($answerData);
						$answerData = array();
					}
				}
			}
		}
		$dao->insertIdentifier($data);
	}

	public function displayEnquete($results, $registered = array()) {
//		var_dump($registered['responded_answer']);
		wp_enqueue_style('bootstrap', plugin_dir_url(__FILE__) . 'css/bootstrap.min.css');
		wp_enqueue_style('jquery.ui', plugin_dir_url(__FILE__) . 'css/jquery.ui.all.css');
		wp_enqueue_style('cdq', plugin_dir_url(__FILE__) . 'css/style.css');

		global $cdSmartyInstance;
		$submit = 'button';
		$print_button = 'true';
		if ('responded' == $registered['phase']) {
			// 返答済のアンケートの表示の場合
			$print_button = 'false';
			$respondedAnswer = $registered['responded_answer'];
		} else if ('responding' == $registered['phase']) {
			// これからアンケートに応える
			$submit = 'submit';
		} else if ('new' == $registered['phase']) {
			// 新規にアンケートを作成した場合

		}
		$cdSmartyInstance->assign("submit", $submit);
		$cdSmartyInstance->assign("print_button", $print_button);

		require_once("DateTransform.php");
		$dt = new \cd\DateTransform();
		$cdSmartyInstance->assign("enquete_name", $results[0]->e_name);
		$cdSmartyInstance->assign("enquete_id", $results[0]->e_id);
		$cdSmartyInstance->assign("start_date", $dt->datetimeToDate($results[0]->start_date));
		$cdSmartyInstance->assign("end_date", $dt->datetimeToDate($results[0]->end_date));

		$questions = "";
		$selections = "";
		$question_text = "";

		$type = "radio";
		$checkbox = 0;

		$sel = NULL;
		$pre_id = -1;
		foreach ($results as $data) {
			$cur_question = $data->question_text;
			if ($pre_id != $data->q_id) {
				if ("" != $selections) {
					$cdSmartyInstance->assign("question_text", $question_text);
					$cdSmartyInstance->assign("selections", $selections);
					$questions .= $cdSmartyInstance->fetch("show_question.tpl");

					$selections = "";
				}
				if ("" === $selections) {
					$question_text = $data->question_text;
					$pre_id = $data->q_id;
					$checkbox = 0;
					$type = "radio";
					if ("2" === $data->multiple_answer) {
						$type = "checkbox";
						$checkbox = 1;
					}
					$questions .= "<input type=\"hidden\" name=\"enquete_options[enquete_answer][$pre_id][question]\" value=\"$question_text\">";
				}
			}
			$sel['questionID'] = $data->q_id;
			$sel['value'] = $data->selection_display;
			$sel['type'] = $type;
			$sel['selectionID'] = $data->s_id;
			$sel['checkboxID'] = $checkbox;
			// checked
			$sel['checked'][$data->q_id][$data->s_id] = "";
			if (isset($respondedAnswer)) {
				$sel['checked'][$data->q_id][$data->s_id] = "disabled ";
				foreach ($respondedAnswer as $ans) {
					if ($ans->question_id == $data->q_id && $ans->selection_id == $data->s_id) {
						$sel['checked'][$data->q_id][$data->s_id] .= "checked";
					}
				}
			}
			$cdSmartyInstance->assign("sel", $sel);
			$selections .= $cdSmartyInstance->fetch("show_selection.tpl");
			"checkbox" === $type ? $checkbox++ : 0;
		}
		$cdSmartyInstance->assign("question_text", $question_text);
		$cdSmartyInstance->assign("selections", $selections);
		$questions .= $cdSmartyInstance->fetch("show_question.tpl");

		$cdSmartyInstance->assign("questions", $questions);

		$cdSmartyInstance->display("show_enquete.tpl");
	}

	function addMenuButton() {
		return <<<EOF
<div class="row span10 offset1">
    <form action="admin_url( )" type="POST">
      <input type="submit" name="page" value="" />
    </form>

    <form action="" type="POST">
      <input type="submit" name="new_enquete" value="新規アンケートを作成する" />
    </form>
</div>
EOF;
	}

	/**
	 * 検索条件からアンケートレコードを拾う(ページャー対応)。
	 * @param $where 検索条件の配列
	 * @param $page
	 * @param $perPage 検索結果の1ページ当たりの表示数
	 * @param $pageID 何ページ目か
	 */
	public function search($where, $page, $perPage, $pageID) {
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
		// 値があったら、検索fieldに値をセット
		if (is_array($where) && isset($where["name"])) {
			$cdSmartyInstance->assign("name", $where["name"]);
		} else {
			$cdSmartyInstance->assign("name", "");
		}
		if (is_array($where) && isset($where["id"])) {
			$cdSmartyInstance->assign("id", $where["id"]);
		} else {
			$cdSmartyInstance->assign("id", "");
		}
		if (is_array($where) && isset($where["start_date_after"])) {
			$cdSmartyInstance->assign("start_date_after", $where["start_date_after"]);
		} else {
			$cdSmartyInstance->assign("start_date_after", "");
		}
		if (is_array($where) && isset($where["start_date_before"])) {
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
		wp_enqueue_style('cdq', plugin_dir_url(__FILE__) . 'css/style.css');

	}

	/**
	 * idを指定して、アンケートレコードを更新する。
	 * @param $id enquete_id
	 * @return bool 成功したらtrueを返す
	 */
	public function updateQuestionnaire($id) {
		// smartyオブジェクト
		global $cdSmartyInstance;
		$enquete['enquete_name'] = $_POST ['enquete_name'];
		$enquete['start_date'] = $_POST ['start_date'];
		$enquete['end_date'] = $_POST ['end_date'];
		$enquete['data'] = $_POST ['enquete'] ['questions'];
		$dao = new \cd\QuestionnaireDAO();
		$flag = true;
		$flag = $dao->deleteQuestionnaireChildren($id);
		if (!$flag) {
			return $flag;
		}
		$flag = $dao->insertEnquete($enquete, false, $id);
		$results = $dao->getEnqueteData($id);
		$objects = $this->convertDBDataToObjects($results);
		wp_enqueue_style('bootstrap', plugin_dir_url(__FILE__) . 'css/bootstrap.min.css', false, false, false);
		wp_enqueue_style('cdq', plugin_dir_url(__FILE__) . 'css/style.css');

		$cdSmartyInstance->assign("form_title", "更新したアンケート");
		$cdSmartyInstance->assign("questionnaire", $objects);
		$cdSmartyInstance->display("confirm.tpl");

		return $flag;
	}

	/**
	 * idを指定して、アンケートレコードを削除する(論理削除)。
	 * @param $id enquete_id
	 * @return bool 成功したらtrueを返す
	 */
	public function deleteQuestionnaire($id) {
		// smartyオブジェクト
		global $cdSmartyInstance;
		$dao = new \cd\QuestionnaireDAO();
		$results = $dao->getEnqueteData($id);
		$flag = $dao->deleteEnquete($id);
		$objects = $this->convertDBDataToObjects($results);
		wp_enqueue_style('bootstrap', plugin_dir_url(__FILE__) . 'css/bootstrap.min.css', false, false, false);
		wp_enqueue_style('cdq', plugin_dir_url(__FILE__) . 'css/style.css');
		$cdSmartyInstance->assign("form_title", "削除したアンケート");
		$cdSmartyInstance->assign("questionnaire", $objects);
		$cdSmartyInstance->display("confirm.tpl");
		return $flag;
	}

	/**
	 * idを指定して、フォーム上にレコードを表示する。
	 * アンケート、質問、選択肢全部を表示する。
	 * @param $id enauete_id
	 * @param string $mes 画面に表示する文字列
	 * @param bool $deleteFlag 削除ボタンを表示するかどうか
	 */
	public function updateShowForm($id, $mes = "", $deleteFlag = true) {
		// smartyオブジェクト
		global $cdSmartyInstance;
		wp_enqueue_script('jquery');
		wp_enqueue_script('jquery.ui.core', plugin_dir_url(__FILE__) . 'js/jquery.ui.core.min.js');
		wp_enqueue_script('jquery.ui.datepicker', plugin_dir_url(__FILE__) . 'js/jquery.ui.datepicker.min.js');
		wp_enqueue_script('jquery.sheepItPlugin', plugin_dir_url(__FILE__) . 'js/jquery.sheepItPlugin.min.js');
		wp_enqueue_script('jquery.validate', plugin_dir_url(__FILE__) . 'js/jquery.validate.min.js');
		wp_enqueue_script('additional', plugin_dir_url(__FILE__) . 'js/additional-methods.min.js');
		//wp_enqueue_script('query.dump', plugin_dir_url(__FILE__) . 'js/jquery.dump.min.js');
		wp_enqueue_script('messages', plugin_dir_url(__FILE__) . 'js/messages_ja.min.js');
		wp_enqueue_style('bootstrap', plugin_dir_url(__FILE__) . 'css/bootstrap.min.css', false, false, false);
		wp_enqueue_style('jquery.ui.all', plugin_dir_url(__FILE__) . 'css/jquery.ui.all.css', false, false, false);
		wp_enqueue_style('cdq', plugin_dir_url(__FILE__) . 'css/style.css');

		$cddb = new \cd\QuestionnaireDAO();
		$answer_number = $cddb->getAlreadyAnsweredNumber($id);
		$results = $cddb->getEnqueteData($id, $deleteFlag);
		list($json, $enquete_title, $start_date, $end_date) = $this->convertDBDataToJson($results);
		$json = preg_replace('/questions_index_order/', 'questions_#index#_order', $json);
		$json = preg_replace('/questions_index_question/', 'questions_#index#_question', $json);
		$json = preg_replace('/questions_index_selections/', 'questions_#index#_selections', $json);
		$json = preg_replace('/selections_index_selections_selection/', 'selections_#index_selections#_selection', $json);
		$json = preg_replace('/selections_index_selections_order/', 'selections_#index_selections#_order', $json);
		$json = preg_replace('/^\{/', '', $json);
		$json = preg_replace('/\}$/', '', $json);
		$json .= ",";
		$cdSmartyInstance->assign("data", $json);
		if ($answer_number > 0) {
			$cdSmartyInstance->assign("enable", "ng");
		} else {
			$cdSmartyInstance->assign("enable", "");
		}
		$cdSmartyInstance->assign("enquete_title", $enquete_title);
		$cdSmartyInstance->assign("hidden_id", "<input type='hidden' name='enquete_id' value='" . $_GET['id'] . "'>");
		$cdSmartyInstance->assign("mes", $mes);
		$cdSmartyInstance->assign("start_date", $start_date);
		$cdSmartyInstance->assign("end_date", $end_date);
		$cdSmartyInstance->assign("form_title", "修正/削除");
		$cdSmartyInstance->assign("enqueteAction", "update");
		$cdSmartyInstance->assign("enquete_button", "修正");
		$cdSmartyInstance->display("update.tpl");
	}

	/**
	 * wpdbで拾ってきたデータを構造化されたデータ構造に変換
	 */
	private function convertDBDataToObjects($results) {
		$num = 0;
		$before = "";
		//1つだけ最初にアンケートオブジェクト作成
		$enquete = new \stdClass ();
		$enquete->questions = array();
		$question = new \stdClass ();
		foreach ($results as $val) {
			$num++;
			// 前の質問と今回のが違う場合(質問が変わった場合)
			if ($val->question_text !== $before) {
				if ($num === 1) {
					// 1問目のみ
					$enquete->start_date = $val->start_date;
					$enquete->enquete_title = $val->e_name;
					$enquete->end_date = $val->end_date;
				} else {
					array_push($enquete->questions, $question);
				}
				$question = new \stdClass ();
				$question->question_text = $val->question_text;
				$question->q_sort_id = $val->q_sort_id;
				$question->selections = array();
			}
			$selection = new \stdClass ();
			$selection->selection_display = $val->selection_display;
			$selection->s_sort_id = $val->s_sort_id;
			array_push($question->selections, $selection);
			$before = $val->question_text;
		}
		array_push($enquete->questions, $question);
		return $enquete;
	}

	/**
	 * wpdbで拾ってきたデータを構造化されたデータ構造に変換
	 */
	private function convertDBDataToJson($results) {
		$num = 0;
		$before = "";
		$alldata = new \stdClass ();
		$alldata->data = array();
		$each_results = array();
		$enquete_title = "";
		$qnum = -1;
		$start_date = "";
		$end_date = "";

		foreach ($results as $val) {
			$num++;

			if ($val->question_text !== $before) {
				if ($num === 1) {
					$enquete_title = $val->e_name;
					$start_date = $val->start_date;
					$end_date = $val->end_date;
				} else {
					array_push($alldata->data, $each_results);
				}
				$each_results = new \stdClass ();
				$each_results->enquete_questions_index_question = $val->question_text;
				$each_results->enquete_questions_index_order = $val->q_sort_id;
				$each_results->enquete_questions_index_selections = array();
				$qnum++;
			}
			$select = new \stdClass ();
			$sikibetu = "enquete_questions_" . $qnum . "_selections_index_selections_selection";
			$sikibetu2 = "enquete_questions_" . $qnum . "_selections_index_selections_order";
			$select->$sikibetu = $val->selection_display;
			$select->$sikibetu2 = $val->s_sort_id;
			array_push($each_results->enquete_questions_index_selections, $select);
			$before = $val->question_text;
		}
		//array_push($each_results->enquete_questions_index_selections, $select);
		array_push($alldata->data, $each_results);

		return array(json_encode($alldata),
				$enquete_title,
				$start_date,
				$end_date);
	}
} 