<?php
/*
 Plugin Name: Make Questionnaire
 Plugin URI: http://www.co-machi.org/
 Description: アンケートを作成し、集計を表示する
 Author: コワーキング・スペース町田「小町」
 Version: 0.12
 Author URI: http://www.co-machi.org
*/


require_once dirname(__FILE__).DIRECTORY_SEPARATOR."CDQuestionnaire.php";
require_once dirname(__FILE__).DIRECTORY_SEPARATOR."CDEnquete.php";
require_once dirname(__FILE__).DIRECTORY_SEPARATOR."SearchAndUpdateQuestionnaire.php";


$question = new CDQuestionnaire();
$search = new SearchAndUpdateQuestionnaire();
// メニュー表示
add_action ( 'admin_menu', 'cd_questionnaire_add_pages' );
/**
 * 管理者メニューへ表示
 */
function cd_questionnaire_add_pages() {
	$hook = add_menu_page( 'CDEnquete', 'アンケート', 8, __FILE__, array ($search, 'search_update_enquetes'),'',50 );
	$hook_new = add_submenu_page(__FILE__, '新規アンケート作成', '新規作成', 8, __FILE__. '?action=new', array($question, 'questionnaire_option_page'));
	//$hook = add_submenu_page(__FILE__, '新規アンケート作成', '新規作成', 8, __FILE__, array($queation, 'questionnaire_option_page'));
	add_action ( "admin_head-" . $hook, array (	$question, 'add_javascripts' ) );
	add_action ( "admin_head-" . $hook_new, array (	$question, 'add_javascripts' ) );
	// 'level_8' .$hook
}




// 有効化の時に実行する
register_activation_hook(__FILE__, array($question, "activate"));
// ショートコード有効化
$cde = new CDEnquete();

//smarty設定
$cd_smarty_version = "3.1.16";
$cd_smarty_dir = plugin_dir_path( __FILE__ ) . "Smarty-" . $cd_smarty_version . "/libs/";

require_once($cd_smarty_dir . "Smarty.class.php");
$cd_smarty_instance = new Smarty();
$cd_smarty_instance->template_dir = plugin_dir_path( __FILE__ ) . 'templates/';
$cd_smarty_instance->compile_dir  = plugin_dir_path( __FILE__ ) . 'templates_c/';
$cd_smarty_instance->config_dir   = plugin_dir_path( __FILE__ ) . 'configs/';
$cd_smarty_instance->cache_dir    = plugin_dir_path( __FILE__ ) . 'cache/';
$cd_smarty_instance->left_delimiter = "{{";
$cd_smarty_instance->right_delimiter = "}}";
