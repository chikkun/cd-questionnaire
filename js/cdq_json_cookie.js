function setJsonCookie(name, jsondt, dir, days){
    // 名前と値
    var val = encodeURIComponent(name) +"="+ encodeURIComponent(JSON.stringify(jsondt)) +"; ";
    //var val = jsondt;

    //パス
    var path = location.pathname;
    if (dir !== undefined)
        path = "path="+ dir + "; ";
    //有効期間
    var expire = "";
    if (days !== undefined)
        expire = "expires=" + new Date( Date.now() + 1000 * 3600 * 24 * days).toUTCString() + ";";
    //保存
    document.cookie = val + path + expire;
}
 
function getJsonCookie(name) {
    var result  = null;
    var c_name  = name + '=';
    var cookies = document.cookie;
    var idxof   = cookies.indexOf( c_name );
    if( idxof != -1 ) {
        var s_idx = idxof + c_name.length;
        var e_idx = cookies.indexOf( ';', s_idx );
        if( e_idx == -1 ) 
            e_idx = cookies.length;

        result = JSON.parse( decodeURIComponent( cookies.substring( s_idx, e_idx ) ));
        //result = cookies.substring( s_idx, e_idx );
    }
    return result;
}

function are_cookies_enabled() {
    var cookieEnabled = (navigator.cookieEnabled) ? true : false;

    if (typeof navigator.cookieEnabled == "undefined" && !cookieEnabled) {
        document.cookie = "testcookie";
        cookieEnabled = (document.cookie.indexOf("testcookie") != -1) ? true : false;
    }
    return (cookieEnabled);
}

function getUT() {
    var ns = {};
    var ut = parseInt(new Date/1);
    var mt = new MersenneTwister();
	var val =  ut + mt.nextInt() + mt.next();

    ns['ut']  = val;
    
    var gc = getJsonCookie("CDQ_enquete");
    if(gc === null) {
        //クッキー作成
        setJsonCookie("CDQ_enquete", ns, '/');
        //クッキー再読み込み
//        gc = getJsonCookie("CDQ_enquete");
//        if(gc !== null) {
//            //クッキーが有効ならリロード
//            window.stop();
//            window.location.reload(true);
//        }
    }
}

getUT();