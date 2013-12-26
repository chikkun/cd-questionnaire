<?php
class SearchAndUpdateQuestionnaire
{
    var $version = 0.1;

    function __construct()
    {
        $this->db_version = get_option('cdq_db_version', 0);
    }

    function search_update_enquetes()
    {
        switch ($_GET['action']) {
            case 'update':
                $this->update_enquete();
                break;
            case 'search':
                $this->search();
                break;
            default:
                echo "why me called?";
                $this->search();
        }
    }

    function update_enquete()
    {
        // smartyオブジェクト
        global $cd_smarty_instance;
        global $wpdb;
        wp_enqueue_script ('jquery');
        wp_enqueue_script ( 'jquery.ui.core', plugin_dir_url ( __FILE__ ) . 'js/jquery.ui.core.min.js' );
        wp_enqueue_script ( 'jquery.ui.datepicker', plugin_dir_url ( __FILE__ ) . 'js/jquery.ui.datepicker.min.js' );
        wp_enqueue_script ( 'jquery.sheepItPlugin', plugin_dir_url ( __FILE__ ) . 'js/jquery.sheepItPlugin.min.js' );
        wp_enqueue_script ( 'jquery.validate', plugin_dir_url ( __FILE__ ) . 'js/jquery.validate.min.js' );
        wp_enqueue_script ( 'additional', plugin_dir_url ( __FILE__ ) . 'js/additional-methods.min.js' );
        wp_enqueue_script ( 'query.dump', plugin_dir_url ( __FILE__ ) . 'js/jquery.dump.min.js' );
        wp_enqueue_script ( 'messages', plugin_dir_url ( __FILE__ ) . 'js/messages_ja.min.js' );
        wp_enqueue_style ( 'bootstrap', plugin_dir_url ( __FILE__ ) . 'css/bootstrap.min.css', false, false, false);
        wp_enqueue_style ( 'jquery.ui.all', plugin_dir_url ( __FILE__ ) . 'css/jquery.ui.all.css', false, false, false );

        $sql = <<< EOF
SELECT   e.id AS e_id,
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
FROM     wp_enquetes AS e
         INNER JOIN
         wp_questions AS q
         ON e.id = q.enquete_id
         INNER JOIN
         wp_selections AS s
         ON q.id = s.question_id
WHERE    e.id = %s
ORDER BY q_sort_id, q_id, s_sort_id, s_id
EOF;
        $sql = $wpdb->prepare($sql, $_GET['id']);
        $results = $wpdb->get_results($sql);
        $num = 0;
        $before = "";
        $alldata = new stdClass();
        $alldata->data = array();
        $each_results = array();
        $enquete_title = "";
        $qnum = -1;
        $start_date = "";
        $end_date = "";

        foreach ($results as $val) {
            $num++;

            if ($val->question_text !== $before) {
                if ($num === 1) {
                    $enquete_title = $val->e_name;
                    $start_date = $val->start_date;
                    $end_date = $val->end_date;
                } else {
                    array_push($alldata->data, $each_results);
                }
                $each_results = new stdClass();
                $each_results->enquete_questions_index_question = $val->question_text;
                $each_results->enquete_questions_index_order = $val->q_sort_id;
                $each_results->enquete_questions_index_selections = array();
                $qnum++;
            }
            $select = new stdClass();
            $sikibetu = "enquete_questions_" .$qnum . "_selections_index_selections_selection";
            $sikibetu2 = "enquete_questions_" .$qnum . "_selections_index_selections_selection_order";
            $select->$sikibetu = $val->selection_display;
            $select->$sikibetu2 = $val->s_sort_id;
            array_push($each_results->enquete_questions_index_selections,$select);
            $before = $val->question_text;
        }
        array_push($each_results->enquete_questions_index_selections,$select);
        array_push($alldata->data, $each_results);

        $json = json_encode($alldata, JSON_PRETTY_PRINT);
        $json = preg_replace('/questions_index_order/','questions_#index#_order', $json);
        $json = preg_replace('/questions_index_question/','questions_#index#_question', $json);
        $json = preg_replace('/questions_index_selections/','questions_#index#_selections', $json);
        $json = preg_replace('/selections_index_selections_selection/','selections_#index_selections#_selection', $json);
        $json = preg_replace('/selections_index_selections_order/','selections_#index_selections#_order', $json);
        $json = preg_replace('/^\{\n\s*/','' , $json);
        $json = preg_replace('/\}$/','' , $json);
        $json .= "," ;
        $cd_smarty_instance->assign("data", $json);
        $cd_smarty_instance->assign("enquete_title", $enquete_title);
        $cd_smarty_instance->assign("start_date", $start_date);
        $cd_smarty_instance->assign("end_date", $end_date);
        $cd_smarty_instance->display("update.tpl");
    }


    function search()
    {
        echo ">>>>>>>>>>>>>>>>>>>>>>>>>";


        // smartyオブジェクト
        global $cd_smarty_instance;
        global $wpdb;
        // Pagerの1ページ当たりの表示数
        $perPage = 10;
        // http://wordpress.chikkun.com/wp-admin/admin.php?page=cd-questionnaire/CDQuestionnaire2.php
        // の「cd-questionnaire/CDQuestionnaire2.php」を取得、hiddenにセットする
        $page = $_GET['page'];
        // PagerのpageIDからoffsetを計算
        if ($_GET['pageID']) {
            $pageID = $_GET['pageID'] + 0;
        } else {
            $pageID = 1;
        }
        $offset = ($pageID - 1) * $perPage;
        // カレントディレクトリをincludeパスに追加(Pagerには必要だった---smartyにはいらない)
        $path = plugin_dir_path(__FILE__);
        set_include_path(get_include_path() . PATH_SEPARATOR . $path);

        // Pager読み込み
        require_once('Pager/Pager.php');

        // where文作成用
        $where = "";
        $j = 0;
        // where文作成、ついでにフォームのinputのvalueにアサイン
        foreach ($_GET['where'] as $key => $value) {
            // inputのvalueへ
            $cd_smarty_instance->assign($key, $value);
            // valueは未記入だと空文字なので、空文字じゃないとき
            if (isset($value) && mb_strlen($value) != 0) {
                $j++;
                if ($j === 1) {
                    $where = 'WHERE ';
                } else {
                    $where .= 'AND ';
                }
                $val = mysql_real_escape_string($value); // SQL Escape
                switch ($key) {
                    case 'start_date_before':
                        $where .= "start_date <= '$val' ";
                        break;
                    case 'start_date_after':
                        $where .= "start_date >= '$val' ";
                        break;
                    case 'name':
                        $where .= "name LIKE '%$val%' ";
                        break;
                    case 'id':
                        $where .= "e.id = '$val' ";
                        break;
                    default:
                        $where .= "$key = '$val' ";
                }
            }
        }
        $sql = <<< EOF
SELECT   count(*)
FROM    wp_enquetes $where
EOF;

        $total = $wpdb->get_var($sql);

        $sql = <<< EOF
SELECT   e.id,
	     e.name,
         e.start_date,
         e.end_date,
         e.poll_or_question
FROM     wp_enquetes AS e $where
ORDER BY e.id DESC LIMIT $perPage OFFSET $offset;
EOF;


        $results = $wpdb->get_results($sql);
        $cd_smarty_instance->assign("e_list", $results);
        $pager_array = array(
            'mode' => 'Sliding',
            // 表示タイプ(Jumping/Sliding)
            'perPage' => $perPage,
            // 一ページ内で表示する件数
            'delta' => 10,
            // 一ページ内で表示するリンク数
            'totalItems' => intval($total),
            // ページング対象データの総数
            'separator' => ' | ',
            // ページリンクのセパレータ文字列
            'prevImg' => '≪戻る',
            // 戻るリンクのテキスト(imgタグ使用可)
            'nextImg' => '次へ≫',
            // 次へリンクのテキスト(imgタグ使用可),
            'lastPageText' => " 最後へ ",
            'firstPageText' => " 最初へ ",
            'firstPagePre' => '',
            'lastPagePre' => '',
            'firstPagePost' => '',
            'lastPagePost' => ''
        );
        // Pageオブジェクト生成
        $pager = & Pager::factory($pager_array);
        // linkタグをもらう
        $pager_links = $pager->getLinks();
        $pager_html = <<< EOD
	      {$pager_links['first']} {$pager_links['back']}
	      {$pager_links['pages']} {$pager_links['next']}
          {$pager_links['last']}
EOD;
        $cd_smarty_instance->assign("paging", $pager_html);
        $cd_smarty_instance->assign("page", $page);

        $cd_smarty_instance->display("search.tpl");
        wp_enqueue_script('jquery');
        wp_enqueue_script('jquery.ui.core', plugin_dir_url(__FILE__) . 'js/jquery.ui.core.min.js', array('jquery'), false, true);
        wp_enqueue_script('jquery.ui.datepicker', plugin_dir_url(__FILE__) . 'js/jquery.ui.datepicker.min.js', array('jquery'), false, true);
        wp_enqueue_script('jquery.ui.datepicker-ja', plugin_dir_url(__FILE__) . 'js/jquery.ui.datepicker-ja.min.js', array('jquery'), false, true);
        wp_enqueue_script('jquery.validate', plugin_dir_url(__FILE__) . 'js/jquery.validate.min.js', array('jquery'), false, true);
        wp_enqueue_script('additional-methods.min.js', plugin_dir_url(__FILE__) . 'js/additional-methods.min.js', array('jquery'), false, true);
        wp_enqueue_script('messages_ja', plugin_dir_url(__FILE__) . 'js/messages_ja.min.js', array('jquery'), false, true);
        wp_enqueue_style('bootstrap', plugin_dir_url(__FILE__) . 'css/bootstrap.min.css', false, false, false);
        wp_enqueue_style('jquery.ui', plugin_dir_url(__FILE__) . 'css/jquery.ui.all.css', false, false, false);
    }
}