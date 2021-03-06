<?php

namespace cd;

/**
 * enquetes, questions, selections,
 * answers, identifiersテーブルへの
 * Data Access Object。
 *
 * Class QuestionnaireDAO
 * @package cd
 */
class QuestionnaireDAO {
	/**
	 * データベースのテーブルの識別
	 *
	 */
	private $tables = array(
			"enquetes",
			"questions",
			"selections",
			"answers",
			"identifiers"
	);
	/**
	 * 実際にCREATEされるテーブル名(プレフィックスがつく)
	 *
	 */

	private $tableNames = NULL;
	/**
	 * データベースで使われる言語
	 * default→UTF8
	 *
	 */
	private $char = NULL;

	/**
	 * wpdbオブジェクトの格納
	 * @var
	 */
	private $db;

	/**
	 * エラーオブジェクト
	 * @var \WP_Error
	 */
	public $err;

	public function __construct() {
		global $wpdb;
		$this->db = $wpdb;
		$this->db->hide_errors();
		$this->err = new \WP_Error();
		// wp-config.phpに書いてある文字コードを使用する
		$this->char = defined("DB_CHARSET") ? DB_CHARSET : "utf8";
		// データベース用 テーブル名を決める
		$this->setTableNames();
	}

	private function setTableNames() {
		foreach ($this->tables as $name) {
			$this->tableNames [$name] = $this->db->prefix . $name;
		}
	}

	public function getTableNames() {
		!isset ($this->tableNames) ? $this->setTableNames() : NULL;
		return $this->tableNames;
	}

	/**
	 * アンケートIDからその子孫までのデータを取得する(グラフ作成において)。
	 * @param $id enquete_id
	 * @return array ジョインの結果(表)
	 */
	public function getResultsFromId($id) {
		$sql = <<< EOF
	  SELECT count(*) question_number
	  FROM wp_questions q WHERE q.enquete_id = %s;
EOF;

		$sql = $this->db->prepare($sql, $id);
		$question_number = $this->db->get_var($sql);
		if ($this->db->last_error !== "" && $this->db->last_error !== null) {
			$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
			return $this->err;
		}
		$sql = <<< EOF
SELECT   name,
         question_order,
         question_id,
         question_text,
         selection_display,
         selection_order,
         selection_id,
         SUM(answer_s_id) AS counts
FROM     (SELECT e.name,
                 q.sort_id AS question_order,
                 q.id AS question_id,
                 q.question_text,
                 s.selection_display,
                 s.sort_id AS selection_order,
                 s.id AS selection_id,
                 (CASE
WHEN a.selection_id IS NULL THEN 0 ELSE 1
END) AS answer_s_id
          FROM   wp_enquetes AS e
                 LEFT OUTER JOIN
                 wp_questions AS q
                 ON e.id = q.enquete_id
                 LEFT OUTER JOIN
                 wp_selections AS s
                 ON q.id = s.question_id
                 LEFT OUTER JOIN
                 wp_answers AS a
                 ON (e.id = a.enquete_id
                     AND q.id = a.question_id
                     AND s.id = a.selection_id)
          WHERE  q.enquete_id = %s) AS sub
GROUP BY name, question_id, selection_id
ORDER BY question_order, question_id, selection_order, selection_id;
EOF;
		$sql = $this->db->prepare($sql, $id);
		$results = $this->db->get_results($sql);
		if ($this->db->last_error !== "" && $this->db->last_error !== null) {
			$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
			return $this->err;
		}
		return array($results,
				$question_number);
	}

	/**
	 * 検索ページのデータを取得し、返す。
	 * @param $fields 検索フィールドの値
	 * @param $perPage 1ページ当たりの数
	 * @param $offset 何ページ目か(0始まり)
	 * @return array (data, total)
	 */
	public function getQuestionnairesListPerPage($fields, $perPage, $offset) {
		// where文作成用
		$where = "";
		$j = 0;
		// where文作成、ついでにフォームのinputのvalueにアサイン
		if (!is_array($fields)) {
			$fields = array();
		}
		foreach ($fields as $key => $value) {
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
		if ($where) {
			$where .= "AND e.delete_flag = 0";
		} else {
			$where .= "WHERE e.delete_flag = 0";
		}
		$sql = <<< EOF
SELECT   count(*)
FROM    {$this->tableNames['enquetes']} e $where;
EOF;

		$total = $this->db->get_var($sql);
		if ($this->db->last_error !== "" && $this->db->last_error !== null) {
			$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
			return $this->err;
		}

		$sql = <<< EOF
SELECT   e.id,
	       e.name,
         e.start_date,
         e.end_date,
         e.poll_or_question
FROM     {$this->tableNames['enquetes']} AS e $where
ORDER BY e.id DESC LIMIT $perPage OFFSET $offset;
EOF;
		$results = $this->db->get_results($sql);
		if ($this->db->last_error !== "" && $this->db->last_error !== null) {
			$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
			return $this->err;
		}
		return array($results,
				$total);
	}

	/**
	 * あるアンケートで既に回答された回答数を返す。
	 * 回答されているとアンケートレコードを更新できない。
	 * @param $id enquete_id
	 * @return mixed
	 */
	public function getAlreadyAnsweredNumber($id) {
		$sql = <<< EOF
SELECT COUNT(a.id)
FROM   {$this->tableNames['answers']} AS a
WHERE  a.enquete_id = %s;
EOF;
		$sql = $this->db->prepare($sql, $id);
		$number = $this->db->get_var($sql);
		if ($this->db->last_error !== "" && $this->db->last_error !== null) {
			$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
			return $this->err;
		}
		return $number;
	}

	/**
	 * delete_flagが立っていないアンケート総数を返す。
	 * @return mixed
	 */
	public function getQuestionnaireTotalCount() {
		$sql = <<< EOF
SELECT COUNT(e.id)
FROM   {$this->tableNames['enquetes']} AS e
WHERE  e.enquete_id = %s AND e.delete_flag = 0;
EOF;

		$sql = $this->db->prepare($sql, $this->id);
		$result = $this->db->get_var($sql);
		if ($this->db->last_error !== "" && $this->db->last_error !== null) {
			$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
			return $this->err;
		}

		return $result;
	}

	/**
	 * アンケートレコードにdelete_flagを立てる。
	 * @param $id 対象のレコードのid
	 * @return bool 成功したらtrue
	 */
	public function deleteEnquete($id) {
		$sql = <<< EOF
UPDATE {$this->tableNames['enquetes']}
SET delete_flag = 1
WHERE id = %s;
EOF;
		$sql = $this->db->prepare($sql, $id);
		$result = $this->db->query($sql);
		if ($this->db->last_error !== "" && $this->db->last_error !== null) {
			$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
			return $this->err;
		}
		return true;
	}

	/**
	 * idを指定したアンケートレコードから、
	 * 質問、選択レコード一切合切を返す。
	 * @param $id
	 * @param bool $delete_flag falseなら、フラグが立っているものも返す
	 * @return mixed
	 */
	public function getEnqueteData($id, $delete_flag = true) {
		$sql = <<<EOF
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
			FROM   {$this->tableNames['enquetes']} AS e
			INNER JOIN
			{$this->tableNames['questions']} AS q
			ON e.id = q.enquete_id
			INNER JOIN
			{$this->tableNames['selections']} AS s
			ON q.id = s.question_id
			WHERE  e.id = %s
EOF;
		if ($delete_flag) {
			$sql .= " AND e.delete_flag = 0 ";
		}
		$sql .= " ORDER BY q_sort_id, q_id, s_sort_id, s_id";

		$results = $this->db->get_results($this->db->prepare($sql, $id));
		if ($this->db->last_error !== "" && $this->db->last_error !== null) {
			$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
			return $this->err;
		}

		return $results;
	}

	public function getRespondedAnswer($id, $identifier) {
		$sql = <<<EOF
SELECT
  enquete_id
 ,question_id
 ,selection_id
FROM {$this->tableNames['answers']}
WHERE enquete_id = %s
  and identifier = %s;
EOF;

		$sql = $this->db->prepare($sql, $id, $identifier);
		return $this->db->get_results($sql);

	}

	public function existIdentifier($id, $identifier) {
		$sql = <<<EOF
SELECT
   identifier
  ,ip_address
FROM {$this->tableNames['identifiers']}
WHERE enquete_id = %s
  and identifier = %s;
EOF;

		$sql = $this->db->prepare($sql, $id, $identifier);
		return $this->db->get_results($sql);

	}

	/**
	 * 質問レコードのidから、その子供の選択肢レコードも削除する。
	 * @param $id 質問レコードid
	 * @return bool
	 */
	public function deleteQuestionnaireChildren($id) {
		$sql = <<< EOF
DELETE FROM {$this->tableNames['selections']}
WHERE  question_id IN (SELECT q.id
                       FROM   wp_questions AS q
                       WHERE  q.enquete_id = %s);

EOF;
		$sql = $this->db->prepare($sql, $id);
		$this->db->query($sql);
		if ($this->db->last_error !== "" && $this->db->last_error !== null) {
			$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
			return $this->err;
		}

		$sql = <<< EOF
DELETE FROM {$this->tableNames['questions']}
WHERE enquete_id = %s;
EOF;
		$sql = $this->db->prepare($sql, $id);
		$this->db->query($sql);
		if ($this->db->last_error !== "" && $this->db->last_error !== null) {
			$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
			return $this->err;
		}
		return true;
	}

	/**
	 * アンケートレコードを、質問レコード、選択肢レコードと共に保存する。更新時は、
	 * アンケートレコード以外は削除し、全て新規に登録するが、アンケートレコードのみ更新する。
	 * @param $enquete
	 * @param bool $enquete_insert_flag falseの時はレコードを削除せず、更新だけをする(更新時)。
	 * @param null $enquete_id 更新時にはidが必要
	 * @return アンケートid
	 */
	public function insertEnquete($enquete, $enquete_insert_flag = true, $enquete_id = null) {
		//insertの時
		if ($enquete_insert_flag) {
			if ("" === $enquete ['end_date'] || NULL === $enquete ['end_date']) {
				$sql = <<<EOF
			INSERT INTO {$this->tableNames['enquetes']}
			(name, start_date, poll_or_question)
			VALUES
			(
	 			  %s,
  				%s,
  				'1'
			);
EOF;
				$sql = $this->db->prepare($sql, $enquete ['enquete_name'], $enquete ['start_date']);
			} else {
				$sql = <<<EOF
			INSERT INTO {$this->tableNames['enquetes']}
			(name, start_date, end_date, poll_or_question)
			VALUES
			(
	 			  %s,
  				%s,
  				%s,
  				'1'
			);
EOF;
				$sql = $this->db->prepare($sql, $enquete ['enquete_name'], $enquete ['start_date'], $enquete ['end_date']);
			}

			$this->db->query($sql);
			if ($this->db->last_error !== "" && $this->db->last_error !== null) {
				$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
				return $this->err;
			}

			$query = 'select last_insert_id();';
			$enquete_id = $this->db->get_var($query);
			if ($this->db->last_error !== "" && $this->db->last_error !== null) {
				$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
				return $this->err;
			}
		} else {
			// updateの時
			$sql = <<<EOF
			UPDATE  {$this->tableNames['enquetes']}
			SET name = %s, start_date = %s, poll_or_question = 1
EOF;
			if ("" !== $enquete ['end_date'] && NULL !== $enquete ['end_date']) {
				$sql .= ", end_date = %s WHERE id = %s";
				$sql = $this->db->prepare($sql, $enquete ['enquete_name'], $enquete ['start_date'], $enquete ['end_date'], $enquete_id);
			} else {
				$sql .= " WHERE id = %s";
				$sql = $this->db->prepare($sql, $enquete ['enquete_name'], $enquete ['start_date'], $enquete_id);
			}
			$this->db->query($sql);
			if ($this->db->last_error !== "" && $this->db->last_error !== null) {
				$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
				return $this->err;
			}

		}

		$data = $enquete ['data'];
		foreach ($data as $question) {
			$this->insertQuestion($enquete_id, $question);
			if ($this->db->last_error !== "" && $this->db->last_error !== null) {
				$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
				return $this->err;
			}
		}

		return $enquete_id;
	}

	public function insertQuestion($e_id, $question) {
		$sql = <<<EOF
			INSERT INTO {$this->tableNames['questions']}
			(enquete_id,sort_id,question_text,multiple_answer)
			VALUES
			(
				%d,
  				%d,
  				%s,
  				%d
			);
EOF;

		// TODO multiple_answer に対応させる
		$sql = $this->db->prepare($sql, $e_id, $question ['order'], $question ['question'], $question ['multi']);
		$this->db->query($sql);
		$query = 'select last_insert_id(); ';
		$q_id = $this->db->get_var($query);

		$sqln = <<<EOF
			INSERT INTO {$this->tableNames['selections']}
			(question_id,sort_id,selection_display)
			VALUES
			(
  				%d,
  				%d,
  				%s
			);
EOF;

		foreach ($question ['selections'] as $sel) {
			$sql = $this->db->prepare($sqln, $q_id, $sel ['order'], $sel ['selection']);
			$this->db->query($sql);
			if ($this->db->last_error !== "" && $this->db->last_error !== null) {
				$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
				return $this->err;
			}
		}
	}

	public function insertAnswer($answerData) {
		$sql = "
				INSERT INTO " . $this->tableNames ['answers'] . "
						(enquete_id,question_id,selection_id,identifier)
						VALUES
						(%d,%d,%d,%s);
						";

		$sql = $this->db->prepare($sql, $answerData ['eid'], $answerData ['qid'], $answerData ['sid'], $answerData ['identifier']);

		$this->db->query($sql);
		if ($this->db->last_error !== "" && $this->db->last_error !== null) {
			$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
			return $this->err;
		}

	}

	public function insertIdentifier($data) {
		$sql = "
				INSERT INTO " . $this->tableNames ['identifiers'] . "
						(enquete_id,identifier,ip_address)
						VALUES
						(%d,%s,%s);
						";

		$sql = $this->db->prepare($sql, $data ['enquete_id'], $data ['identifier'], $data ['ip_address']);

		$this->db->query($sql);
		if ($this->db->last_error !== "" && $this->db->last_error !== null) {
			$this->err->add('error', __LINE__ . " line in " . __FILE__ . ".<br />" . $this->db->last_error);
			return $this->err;
		}

	}

	/**
	 * 以下テーブル作成のSQL文
	 *
	 * @return string
	 */
	public function enquetesSql() {
		return <<<EOS
CREATE TABLE {$this->tableNames['enquetes']} (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  name varchar(128) NOT NULL COMMENT 'アンケート名',
  start_date timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '開始日',
  end_date timestamp NOT NULL DEFAULT '2034-12-31 00:00:00' COMMENT '終了日',
  poll_or_question int(1) unsigned NOT NULL DEFAULT '0' COMMENT 'アンケートor問題',
  delete_flag int(1) unsigned NOT NULL DEFAULT '0' COMMENT '削除フラグ',
  created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '作成日',
  modified timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修正日',
  PRIMARY KEY (`id`),
  INDEX idx_name(`name`), INDEX idx_start_date(`start_date`), INDEX idx_end_date(`end_date`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET={$this->char} COMMENT='アンケートテーブル';
EOS;
	}

	public function questionsSql() {
		return <<<EOS
CREATE TABLE {$this->tableNames['questions']} (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  enquete_id bigint(20) NOT NULL COMMENT 'enquete_id',
  sort_id double NOT NULL COMMENT '表示順',
  question_text varchar(256) NOT NULL COMMENT '問題文',
  multiple_answer int(1) unsigned NOT NULL DEFAULT '1' COMMENT '回答が複数可か',
  created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '作成日',
  modified timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修正日',
  PRIMARY KEY (`id`),
  INDEX idx_enquete_id_questions(`enquete_id`),INDEX idx_sort_id_questions(`sort_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET={$this->char} COMMENT='質問テーブル';
EOS;
	}

	public function selectionsSql() {
		return <<<EOS
CREATE TABLE {$this->tableNames['selections']} (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  question_id bigint(20) NOT NULL COMMENT 'question_id',
  sort_id double NOT NULL COMMENT '表示順',
  selection_display varchar(64) NOT NULL COMMENT 'selection_display',
  to_select_flag tinyint(1) NOT NULL DEFAULT '0' COMMENT '選ぶべき選択肢',
  created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '作成日',
  modified timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修正日',
  PRIMARY KEY (`id`),
  INDEX idx_question_id_selections(`question_id`), INDEX idx_sort_id_selections(`sort_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET={$this->char} COMMENT='選択肢テーブル';
EOS;
	}

	public function answersSql() {
		return <<<EOS
CREATE TABLE {$this->tableNames['answers']} (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  enquete_id bigint(20) NOT NULL COMMENT 'enquete_id',
  question_id bigint(20) NOT NULL COMMENT 'question_id',
  selection_id bigint(20) NOT NULL COMMENT 'selection_id',
  identifier varchar(512) DEFAULT NULL COMMENT '識別子',
  ip_address varchar(64) DEFAULT NULL COMMENT 'ipアドレス',
  created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '作成日',
  modified timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修正日',
  PRIMARY KEY (`id`),
  INDEX idx_enquete_id_answers(`enquete_id`), INDEX idx_question_id_answers(`question_id`),
  INDEX idx_selection_id_answers(`selection_id`), INDEX idx_identifier_answers(`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET={$this->char} COMMENT='回答結果テーブル';
EOS;
	}

	public function identifiersSql() {
		return <<<EOS
CREATE TABLE {$this->tableNames['identifiers']} (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  enquete_id bigint(20) NOT NULL COMMENT 'enquete_id',
  identifier varchar(512) NOT NULL COMMENT '識別子',
  ip_address varchar(64) DEFAULT NULL COMMENT 'ipアドレス',
  created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '作成日',
  modified timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修正日',
  PRIMARY KEY  (id),
  INDEX idx_enquete_id_identifiers(`enquete_id`), INDEX idx_identifier_identifiers(`identifier`),
  INDEX idx_ip_address_identifiers(`ip_address`)
)  ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET={$this->char} COMMENT = '識別子テーブル';
EOS;
	}
}