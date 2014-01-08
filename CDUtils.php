<?php
/**
 * Created by PhpStorm.
 * User: chikkun
 * Date: 2014/01/07
 * Time: 15:10
 */

namespace cd;


class CDUtils {

	public static function getUrlAndUserAndActionText($action){
		global $current_user;
		get_currentuserinfo();
		$nonce = md5(uniqid("cdq-$action",true));
		$url_user_action = get_option("siteurl") . "/" . $current_user->user_login . "/" . $action;
		$url_user_action = preg_replace("/\./", "_", $url_user_action);
		return $url_user_action;
  }
	public static function getSetCookieJSTagWithNonce($action = "something"){
		$url_user_action = self::getUrlAndUserAndActionText($action);
		$nonce = md5(uniqid("cdq-$action",true));
		$tag = <<< EOF
<script>
jQuery(document).ready(function ($) {
  $.cookie("$url_user_action", "$nonce", {path: '/wordpress/', expire: 1});
});
</script>
EOF;
		$cookie = "<input type='hidden' name = 'hardrocks' value='$nonce'>";

		return array($tag, $cookie);
	}

	public static function getRemoveCookieJSTagWithNonce($action = "something"){
		$url_user_action = self::getUrlAndUserAndActionText($action);
		$tag = <<< EOF
<script>
jQuery(document).ready(function ($) {
  $.removeCookie("$url_user_action",{path: '/wordpress/'});
});
</script>
EOF;
		return $tag;
	}

	public static function convertErrorMessages($err){
		$messages = "";
		foreach ( $err->get_error_codes() as $code ) {
			$severity = $err->get_error_data($code);
			foreach ( $err->get_error_messages($code) as $error ) {
				$messages .= '	' . $error . "<br />\n";
			}
		}
		return $messages;
	}
} 