<?php
/**
 * Created by PhpStorm.
 * User: denn
 * Date: 13/12/29
 * Time: 12:14
 */

namespace cd;


class QuestionnaireAnswerRegist {

	function registerAnswer($data) {
		$dao = new QuestionnaireDAO();
		/* 登録するアンケートの答えを格納する配列 */
		$answerData = array();
		// 登録実行
		foreach ($data as $qid => $value) {
			foreach ($value as $cid => $sel) {
				$answerData['eid'] = $data['enquete_id'];
				$answerData['qid'] = $qid;
				$answerData['identifier'] = $data['identifier'];
				if ('question' === $cid) {
					$answerData['question'] = $sel;
				} else {
					preg_match("/^(\d+)?:/", $sel, $sid);
					$answerData['sid'] = $sid[1];

					$dao->insertAnswer($answerData);
					$answerData = array();
				}
			}
		}

		$dao->insertIdentifier($data);

	}
} 