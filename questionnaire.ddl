DROP TABLE IF EXISTS wp_enquetes;
CREATE TABLE `wp_enquetes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `name` varchar(128) NOT NULL COMMENT 'アンケート名',
  `start_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '開始日',
  `end_date` timestamp NOT NULL DEFAULT '2034-12-31 00:00:00' COMMENT '終了日',
  `poll_or_question` int(1) unsigned NOT NULL DEFAULT '0' COMMENT 'アンケートor問題',
  `delete_flag` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '削除フラグ',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '作成日',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修正日',
  PRIMARY KEY (`id`),
  INDEX (`name`, `start_date`, `end_date`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='アンケートテーブル';

DROP TABLE IF EXISTS wp_questions;

CREATE TABLE `wp_questions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `enquete_id` bigint(20) NOT NULL COMMENT 'enquete_id',
  `sort_id` int(11) NOT NULL COMMENT '表示順',
  `question_text` varchar(256) NOT NULL COMMENT '問題文',
  `multiple_answer` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '回答が複数可か',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '作成日',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修正日',
  PRIMARY KEY (`id`),
  INDEX (`enquete_id`, `sort_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='質問テーブル';    

DROP TABLE IF EXISTS wp_selections;

CREATE TABLE `wp_selections` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `question_id` bigint(20) NOT NULL COMMENT 'question_id',
  `sort_id` int(11) NOT NULL COMMENT '表示順',
  `selection_display` varchar(64) NOT NULL COMMENT 'selection_display',
  `to_select_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '選ぶべき選択肢',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '作成日',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修正日',
  PRIMARY KEY (`id`),
  INDEX (`question_id`, `sort_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='選択肢テーブル';

DROP TABLE IF EXISTS wp_answers;
CREATE TABLE `wp_answers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `enquete_id` bigint(20) NOT NULL COMMENT 'enquete_id',
  `question_id` bigint(20) NOT NULL COMMENT 'question_id',
  `selection_id` bigint(20) NOT NULL COMMENT 'selection_id',
  `identifier` varchar(512) DEFAULT NULL COMMENT '識別子',
  `ip_address` varchar(64) DEFAULT NULL COMMENT 'ipアドレス',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '作成日',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修正日',
  PRIMARY KEY (`id`),
  INDEX (`enquete_id`, `question_id`, `selection_id`, `identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='回答結果テーブル';

DROP TABLE IF EXISTS wp_identifiers;
CREATE TABLE `wp_identifiers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `enquete_id` bigint(20) NOT NULL COMMENT 'enquete_id',
  `identifier` varchar(512) NOT NULL COMMENT '識別子',
  `ip_address` varchar(64) DEFAULT NULL COMMENT 'ipアドレス',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '作成日',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修正日',
  PRIMARY KEY  (id),
  INDEX (`enquete_id`, `identifier`, `ip_address`)
)  ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT = '識別子テーブル';
