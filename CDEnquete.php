<?php
/**
 * FILE: CDEnquete.php
 * Author: C & D, Inc.;
 * アンケート質問事項の表示を行う。
 * 扱うテーブルは、アンケートの答えを登録する/してあるテーブル一つのみ。
 */
class CDEnquete {

	/* アンケートid */
	var $id = NULL;
	/* 登録するアンケートの答えを格納する配列になる */
	var $answerData = NULL;
	/* 登録するアンケートの答えを登録するテーブル名 */
	var $tableName = NULL;

	/**
	 * コンストラクタ
	 * 		ショートコード作成
	 */
	function __construct() {
		add_shortcode('CDQ-enquete', array($this, 'getEnquete'));
	}

	/**
	 * ショートコードから 「アンケートid」 を受け取り、アンケートを表示する。
	 * 		必要なJavaScript、CSSを読み込ませる。
	 * アンケートの答えをデータベースに登録する。
	 *
	 * @param unknown $atts
	 * @return string
	 */
	function getEnquete($atts) {
		wp_enqueue_script( 'jquery' );
		wp_enqueue_script( 'cdq_json_cookie', plugin_dir_url( __FILE__ ) . 'js/cdq_json_cookie.js', array( 'jquery' ), false, true );
		wp_enqueue_style( 'bootstrap', plugin_dir_url( __FILE__ ) . 'css/bootst\
				rap.min.css', false, false, true );

		extract(shortcode_atts(array(
		'id' => 0
		), $atts));
		$this->id = $id;
		if(isset($_POST['enquete_options'])) {
			// answers テーブルに登録
			$opt = $_POST ['enquete_options'];
			$opt = $opt['enquete_answer'];

			$identifier = $_COOKIE['CDQ_enquete'];

			$results = $this->getIdentifier();
			foreach ($results as $ident) {
				if ($ident->identifier == $identifier) {
					return "<p>このアンケートにはすでに登録済みです。<br />アンケートにご協力ありがとうございました。</p>";
				}
			}

			// 登録実行
			foreach($opt as $qid => $value) {
				foreach($value as $cid => $sel) {
					$this->answerData['eid'] = $id;
					$this->answerData['qid'] = $qid;
					$this->answerData['identifier'] = $identifier;
					if('question' === $cid) {
						$this->answerData['question'] = $sel;
					} else {
						preg_match("/^(\d+)?:/", $sel, $sid);
						$this->answerData['sid'] = $sid[1];

						$this->insertAnswer();
					}
				}
			}

			return $this->getThanks() ;
		} else {
			// データベースから必要な情報を取得する
			global $wpdb;
			$results = $wpdb->get_results($wpdb->prepare($this->resultSql(), $id));
			if( NULL === $results || !isset($results[0]->q_id)) {
				return "<p>id= 『 $id 』 のアンケートが取得できませんでした。別の「id」番号でやり直して下さい。<p>";
			}
			$enquete_name = $results[0]->e_name;

			$questions = "";
			$selections = "";
			$question_text = "";

			$type = "radio";
			$checkbox = 0;

			$sel = NULL;
			$pre_id = -1;
			foreach ($results as $data) {
				$cur_question = $data->question_text;
				if( $pre_id != $data->q_id ) {
					if( "" != $selections ) {
						$questions .= $this->getQestionTempl($question_text, $selections);
						$selections = "";
					}
					if("" === $selections) {
						$question_text = $data->question_text;
						$pre_id = $data->q_id;
						$checkbox = 0;
						$type = "radio";
						if("2" === $data->multiple_answer) {
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
				$selections .= $this->getSelectionTempl( $sel );
				"checkbox" === $type ? $checkbox++ : 0;
			}
			$questions .= $this->getQestionTempl($question_text, $selections);

			return $this->getEnqueteTempl($id, $enquete_name, $questions);

		}
	}

	/**
	 * アンケートの答えを登録するテーブル名を取得する。
	 */
	function getTableName() {
		$cdq = new CDQuestionnaire();
		$this->tableName = $cdq->tableName['answers'];
	}

	/**
	 * アンケートの答えを登録するテーブルから、アンケートの答えを登録した時にくわせたCOOKIEを取り出す。
	 */
	function getIdentifier() {
		!isset($this->tableName) ? $this->getTableName() : NULL;

		$sql = "SELECT identifier FROM " . $this->tableName . " WHERE enquete_id = %s;";
		global $wpdb;
		$sql = $wpdb->prepare($sql,
				$this->id
		);

		return $wpdb->get_results($sql);

	}

	/**
	 * データベースに登録
	 */
	function insertAnswer() {
		!isset($this->tableName) ? $this->getTableName() : NULL;

		$sql = "
				INSERT INTO ".$this->tableName."
						(enquete_id,question_id,selection_id,identifier)
						VALUES
						(%d,%d,%d,%s);
						";
		global $wpdb;
		$sql = $wpdb->prepare($sql,
				$this->answerData['eid'],
				$this->answerData['qid'],
				$this->answerData['sid'],
				$this->answerData['identifier']
		);

		$wpdb->query($sql);

		$this->answerData = array();
	}

	/**
	 * アンケートの答えを登録するSQL
	 * @return string
	 */
	function resultSql() {
		return <<<EOF
			SELECT e.id AS e_id,
			e.name AS e_name,
			e.start_date,
			e.end_date,
			e.poll_or_question,
			q.id AS q_id,
			q.enquete_id,
			q.sort_id AS q_sort_id,
			q.question_text,
			q.multiple_answer,
			s.id AS s_id,
			s.question_id,
			s.sort_id AS s_sort_id,
			s.selection_display,
			s.to_select_flag
			FROM   wp_enquetes AS e
			INNER JOIN
			wp_questions AS q
			ON e.id = q.enquete_id
			INNER JOIN
			wp_selections AS s
			ON q.id = s.question_id
			WHERE  e.id = %s
			ORDER BY
			q_sort_id, q_id, s_sort_id, s_id;
EOF;
	}



	/**
	 * アンケートテンプレート
	 * @param unknown $enquete_id
	 * @param unknown $enquete_name
	 * @param unknown $questions
	 * @return string
	 */
	function getEnqueteTempl($enquete_id, $enquete_name, $questions) {
		return <<<EOF

			<h2>$enquete_name</h2>
			<form action="" method="post">

			<ol class="cdq_enquete">
			$questions
			</ol>

			<input type="submit" name="enquete_options[enquete_answer][submit]" value="アンケートに答える">
			<input type="hidden" name="enquete_options[enquete_answer][enquete_id]" value="$enquete_id">
			</form>
EOF;
	}

	/**
	 * 質問事項テンプレート
	 * @param unknown $question
	 * @param unknown $selection
	 * @return string
	 */
	function getQestionTempl($question, $selection) {
		return <<<EOF
			<li class="cdq_question">$question</li>
			$selection
EOF;
	}

	/**
	 * 選択項目テンプレート
	 * @param unknown $sel
	 * @return string
	 */
	function getSelectionTempl($sel) {
		return <<<EOF
			<label class="{$sel['type']}-inline">
			<input class="cdq_selection" type="{$sel['type']}" id="{$sel['questionID']}_{$sel['checkboxID']}"
			name="enquete_options[enquete_answer][{$sel['questionID']}][{$sel['checkboxID']}] "value="{$sel['selectionID']}:{$sel['value']}"> {$sel['value']}
			</label>
EOF;
	}

	/**
	 * 返礼の文章
	 * @return string
	 */
	function getThanks() {
		return "<p>アンケートにお答えいただきありがとうございました。</p>";
	}

}