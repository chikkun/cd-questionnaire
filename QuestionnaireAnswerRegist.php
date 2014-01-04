<?php
/**
 * Created by PhpStorm.
 * User: denn
 * Date: 13/12/29
 * Time: 12:14
 */

namespace cd;

/**
 * Class QuestionnaireAnswerRegist
 * @package cd
 */
class QuestionnaireAnswerRegist {

	function registerAnswer($data) {
		$dao = new QuestionnaireDAO();
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
}