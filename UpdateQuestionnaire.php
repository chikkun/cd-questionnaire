<?php
/**
 * Created by PhpStorm.
 * User: chikkun
 * Date: 2013/12/27
 * Time: 16:13
 */

namespace cd;


class UpdateQuestionnaire {
	function update($id) {
		$enquete['enquete_name'] = $_POST ['enquete_name'];
		$enquete['start_date'] = $_POST ['start_date'];
		$enquete['end_date'] = $_POST ['end_date'];
		$enquete['data'] = $_POST ['enquete'] ['questions'];
		$dao = new \cd\QuestionnaireDAO();
		$dao->deleteQuestionnaireChildren($id);
		$dao->insertEnquete($enquete, false, $id);
		return true;
	}
} 