<?php
class CDTest {
	var $table = array (
			"enquetes",
			"questions",
			"selections",
			"answers",
			"identifiers" 
	);
	var $tableName = array ();
	var $char = 'utf8';
	function activate() {
		foreach ( $this->table as $key => $name ) {
			$this->tableName [$name] = 'wp_' . $name;
			$sqlfunc = $this->table [$key] . "Sql";
			var_dump ( $this->$sqlfunc () );
		}
	}
	function enquetesSql() {
		return <<<EOS
               CREATE TABLE {$this->tableName['enquetes']} (
				    id bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
				    name varchar(128) NOT NULL COMMENT 'アンケート名',
				    start_date timestamp COMMENT '開始日',
				    end_date timestamp COMMENT '終了日',
				    -- 1:アンケート,2:問題
				    poll_or_question int(1) unsigned DEFAULT 1 NOT NULL COMMENT 'アンケートor問題',
				    PRIMARY KEY  (id)
			    ) CHARCTER SET '$this->char',
			   	  COMMENT = 'アンケートテーブル';
EOS;
	}
	function questionsSql() {
		return <<<EOS
               CREATE TABLE {$this->tableName['questions']} (
					id bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
					-- 親テーブルenqueteのid(FK)
					enquete_id bigint NOT NULL COMMENT 'enquete_id',
					sort_id int NOT NULL COMMENT '表示順',
					question_text varchar(256) NOT NULL COMMENT '問題文',
					-- 1:単一回答,2:複数回答可
					multiple_answer int(1) unsigned DEFAULT 1 NOT NULL COMMENT '回答が複数可か',
					PRIMARY KEY  (id)
					) COMMENT = '質問テーブル';
EOS;
	}
	function selectionsSql() {
		return <<<EOS
               CREATE TABLE {$this->tableName['selections']} (
					id bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
					question_id bigint NOT NULL COMMENT 'question_id',
					sort_id int NOT NULL COMMENT '表示順',
					selection_display varchar(64) NOT NULL COMMENT 'selection_display',
					-- アンケートでは無意味、trueだったらそれを選ぶと「正解」
					to_select_flag boolean DEFAULT 'false' NOT NULL COMMENT '選ぶべき選択肢',
					PRIMARY KEY  (id)
					) COMMENT = '選択肢テーブル';
EOS;
	}
	function answersSql() {
		return <<<EOS
               CREATE TABLE {$this->tableName['answers']} (
					id bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
					enquete_id bigint NOT NULL COMMENT 'enquete_id',
					question_id bigint NOT NULL COMMENT 'question_id',
					selection_id bigint NOT NULL COMMENT 'selection_id',
					identifier varchar(512) COMMENT '識別子',
					PRIMARY KEY  (id)
					) COMMENT = '回答結果テーブル';
EOS;
	}
	function identifiersSql() {
		return <<<EOS
               CREATE TABLE {$this->tableName['identifiers']} (
					id bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
					enquete_id bigint NOT NULL COMMENT 'enquete_id',
					identifier varchar(512) NOT NULL COMMENT 'identifier',
					PRIMARY KEY  (id)
					) COMMENT = '識別子テーブル';
EOS;
	}
}
$cd = new CDTest ();
$cd->activate ();
/*
foreach ( $cd->table as $key => $name ) {
	$sqlfunc = $cd->table [$key] . "Sql";
	var_dump ( $cd->$sqlfunc () );
}
*/

/*
CREATE TABLE {selectionsTable} (id bigint NOT NULL AUTO_INCREMENT COMMENT 'id',question_id bigint NOT NULL COMMENT 'question_id',sort_id int NOT NULL COMMENT '表示順',selection_display varchar(64) NOT NULL COMMENT 'selection_display', to_select_flag boolean DEFAULT 'false' NOT NULL COMMENT '選ぶべき選択肢',PRIMARY KEY  (id)) COMMENT = '選択肢テーブル';
*/