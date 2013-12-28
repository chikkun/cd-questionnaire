<?php

namespace cd;

class QuestionnaireDAO {
	/**
	 * データベースのテーブルの識別
	 *
	 * @var unknown
	 */
	var $tables = array (
			"enquetes",
			"questions",
			"selections",
			"answers" 
	);
	/**
	 * 実際にCREATEされるテーブル名(プレフィックスがつく)
	 *
	 * @var unknown
	 *
	 */
	var $tableNames = NULL;
	/**
	 * データベースで使われる言語
	 * UTF8
	 *
	 * @var unknown
	 *
	 */
	var $char = NULL;

	var $db;
	function __construct() {
		global $wpdb;
		$this->db = $wpdb;
		// wp-config.phpに書いてある文字コードを使用する
		$this->char = defined ( "DB_CHARSET" ) ? DB_CHARSET : "utf8";
		// データベース用 テーブル名を決める
		$this->setTableNames ();
	}
	function setTableNames() {
		global $wpdb;
		foreach ( $this->tables as $name ) {
			$this->tableNames [$name] = $wpdb->prefix . $name;
		}
	}
	function getTableNames() {
		! isset ( $this->tableNames ) ? $this->setTableNames () : NULL;
		return $this->tableNames;
	}

	function getQuestionnaireTotalCount($id) {
		global $wpdb;
		$sql = <<< EOF
SELECT COUNT(a.id)
FROM   wp_answers AS a
WHERE  a.enquete_id = %s AND e.delete_flag = 0;
EOF;


		$sql = $this->db->prepare($sql, $id);
		return $this->db->get_var($sql);
	}

	function getEnqueteData($id) {
		global $wpdb;
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
			FROM   wp_enquetes AS e
			INNER JOIN
			wp_questions AS q
			ON e.id = q.enquete_id
			INNER JOIN
			wp_selections AS s
			ON q.id = s.question_id
			WHERE  e.id = %s AND e.delete_flag = 0
			ORDER BY
			q_sort_id, q_id, s_sort_id, s_id;
EOF;
		
		$results = $this->db->get_results ( $this->db->prepare ( $sql, $id ) );
		return $results;
	}
	
	function insertEnquete($enquete_name, $start_date, $end_date) {
		$sql = <<<EOF
			INSERT INTO {$this->tableNames['enquetes']}
			(name,start_date,end_date,poll_or_question)
			VALUES
			(
	 			%s,
  				%s,
  				%s,
  				'1'
			);
EOF;
		$sql2 = <<<EOF
			INSERT INTO {$this->tableNames['enquetes']}
			(name,start_date,poll_or_question)
			VALUES
			(
	 			%s,
  				%s,
  				'1'
			);
EOF;
		
		global $wpdb;
		if ("" === $end_date || NULL ===$end_date) {
			$sql = $wpdb->prepare ( $sql2, $enquete_name, $start_date );
		} else {
			$sql = $wpdb->prepare ( $sql, $enquete_name, $start_date, $end_date );
		}
		$wpdb->query ( $sql );
		$query = 'select last_insert_id();';
		$enquete_id = $wpdb->get_var ( $query );
		return $enquete_id;
	}

	function insertQuestion($question) {
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
		
		global $wpdb;
		// TODO multiple_answer に対応させる
		$sql = $wpdb->prepare ( $sql, $this->enquete_id, $question ['order'], $question ['question'], 1 );
		$wpdb->query ( $sql );
		$query = 'select last_insert_id(); ';
		$q_id = $wpdb->get_var ( $query );
		
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
		
		foreach ( $question ['selections'] as $sel ) {
			$sql = $wpdb->prepare ( $sqln, $q_id, $sel ['order'], $sel ['selection'] );
			$wpdb->query ( $sql );
		}
	}
	function insertAnswer() {
		! isset ( $this->tableNames ) ? $this->getTableNames () : NULL;
		
		$sql = "
				INSERT INTO " . $this->tableNames ['answers'] . "
						(enquete_id,question_id,selection_id,identifier)
						VALUES
						(%d,%d,%d,%s);
						";
		global $wpdb;
		$sql = $wpdb->prepare ( $sql, $this->answerData ['eid'], $this->answerData ['qid'], $this->answerData ['sid'], $this->answerData ['identifier'] );
		
		$wpdb->query ( $sql );
		
		$this->answerData = array ();
	}
	
	
	/**
	 * 以下テーブル作成のSQL文
	 *
	 * @return string
	 */
	function enquetesSql() {
		return <<<EOS
CREATE TABLE {$this->tableNames['enquetes']} (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(128) NOT NULL COMMENT 'アンケート名',
  `start_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '開始日',
  `end_date` timestamp NOT NULL DEFAULT '2034-12-31 00:00:00' COMMENT '終了日',
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
CREATE TABLE {$this->tableNames['questions']} (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `enquete_id` bigint(20) NOT NULL COMMENT 'enquete_id',
  `sort_id` int(11) NOT NULL COMMENT '表示順',
  `question_text` varchar(256) NOT NULL COMMENT '問題文',
  `multiple_answer` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '回答が複数可か',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '作成日',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修正日',
  PRIMARY KEY (`id`),
  INDEX (`enquete_id`, `sort_id`)
 ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET='$this->char' COMMENT='質問テーブル';
EOS;
	}

	function selectionsSql() {
		return <<<EOS
CREATE TABLE {$this->tableNames['selections']} (
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
CREATE TABLE {$this->tableNames['answers']} (
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
}