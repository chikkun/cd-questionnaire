<?php
/*
 Plugin Name: Make Questionnaire
 Plugin URI: http://www.co-machi.org/
 Description: アンケートを作成し、集計を表示する
 Author: コワーキング・スペース町田「小町」
 Version: 0.12
 Author URI: http://www.co-machi.org
*/

require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . "CDQuestionnaire.php";
require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . "QuestionnaireResults.php";
require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . "QuestionnaireDAO.php";
require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . "QuestionnairePreparation.php";
require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . "QuestionnaireAnswers.php";
require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . "SearchAndUpdateQuestionnaire.php";

use \cd\CDQuestionnaire;
use \cd\QuestionnaireDAO;
use \cd\SearchAndUpdateQuestionnaire;
use \cd\QuestionnairePreparation;
use \cd\CDQuestionnaireAnswer;
use \cd\QuestionnaireResults;
use cd\QuestionnaireAnswers;

$question = new CDQuestionnaire();
$search = new SearchAndUpdateQuestionnaire();
$new = new QuestionnairePreparation();
// 有効化の時に実行する
register_activation_hook(__FILE__, array($question, "activate"));
// ショートコード有効化
$cde = new QuestionnaireAnswers();
$result = new QuestionnaireResults();

//smarty設定
$cd_smarty_version = "3.1.16";
$cd_smarty_dir = plugin_dir_path(__FILE__) . "Smarty-" . $cd_smarty_version . "/libs/";

require_once($cd_smarty_dir . "Smarty.class.php");
$cdSmartyInstance = new Smarty();
$cdSmartyInstance->template_dir = plugin_dir_path(__FILE__) . 'templates/';
$cdSmartyInstance->compile_dir = plugin_dir_path(__FILE__) . 'templates_c/';
$cdSmartyInstance->config_dir = plugin_dir_path(__FILE__) . 'configs/';
$cdSmartyInstance->cache_dir = plugin_dir_path(__FILE__) . 'cache/';
$cdSmartyInstance->left_delimiter = "{{";
$cdSmartyInstance->right_delimiter = "}}";
