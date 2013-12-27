<?php /* Smarty version Smarty-3.1.16, created on 2013-12-27 01:30:51
         compiled from "/Users/chikkun/html/wordpress/wp-content/plugins/cd-questionnaire/templates/update.tpl" */ ?>
<?php /*%%SmartyHeaderCode:204443559752bcd84beda079-57428310%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cfc3eaba9781ad806d37b1b44a1feaff07078465' => 
    array (
      0 => '/Users/chikkun/html/wordpress/wp-content/plugins/cd-questionnaire/templates/update.tpl',
      1 => 1388043535,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '204443559752bcd84beda079-57428310',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'form_title' => 0,
    'enquete_title' => 0,
    'end_date' => 0,
    'data' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_52bcd84c014348_09247714',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52bcd84c014348_09247714')) {function content_52bcd84c014348_09247714($_smarty_tpl) {?><style type="text/css">
.form-horizontal .colabel {
                            float: left;
                            padding-top: 5px;
                            text-align: right;
                            }
label.valid {
              width: 16px;
              height: 16px;
              background: url(images/valid.png) center center no-repeat;
              display: inline-block;
              padding: 0px;
              margin-top: 0px;
              text-indent: -9999px;
              }
label.error {
              font-weight: bold;
              color: red;
              padding: 2px 8px;
              margin-top: 2px;
              display: inline-block;
              }
</style>

<div class="container">
  <div class="row span12">
    <h2>アンケート<?php echo $_smarty_tpl->tpl_vars['form_title']->value;?>
</h2>
  </div>
  <div class="row span12">
    <form id="enquete" role="form" class="form-horizontal" method="post" action="">
      <fieldset>
        <div class="control-group row">
          <label for="enquete_name" class="span2 colabel">アンケート名</label>
          <div class="span6">
            <input type="text" name="enquete_name" class="input-medium" value="<?php echo $_smarty_tpl->tpl_vars['enquete_title']->value;?>
" placeholder="アンケート名(必須)" data-rule-required="true"/>
          </div>
        </div>
        <div class="control-group row">
          <label for="start_date" class="span2 colabel">開始日</label>

          <div class="span6">
            <input type="text" name="start_date" class="jqueryCalendar input-medium" value="<?php echo $_smarty_tpl->tpl_vars['end_date']->value;?>
" placeholder="開始日(必須)" data-rule-required="true"/>
          </div>
        </div>
        <div class="control-group row">
          <label for="end_date" class="span2 colabel">終了日</label>

          <div class="span6">
            <input type="text" name="end_date" class="jqueryCalendar input-medium" value="<?php echo $_smarty_tpl->tpl_vars['end_date']->value;?>
" placeholder="終了日"/>
          </div>
        </div>

        <div id="enquete_questions">
 
          <div id="enquete_questions_template">
            <div class="control-group row">
              <label for="enquete_questions_#index#_question" class="span2 colabel">質問 <span
                      id="enquete_questions_label"></span></label>

              <div class="span3">
                <textarea class="input-medium" id="enquete_questions_#index#_question" data-rule-required="true"
                       name="enquete[questions][#index#][question]" placeholder="質問の文(必須)"></textarea>
              </div>
              <div class='span4'>
                <label for="enquete_questions_#index#_order" class="span1 colabel">順番</label>
                <div class="span2">
                  <input class='questionorders input-mini' id="enquete_questions_#index#_order"
                       name="enquete[questions][#index#][order]" type="text" data-rule-required="true"/>
                </div>
                <button class="delete btn btn-warning btn-mini" id="enquete_questions_remove_current">削除</button>
              </div>
            </div>

            <div id="enquete_questions_#index#_selections">
              <div id="enquete_questions_#index#_selections_template">
                <div class='row'>
                  <div class="control-group">
                    <label for="enquete_questions_#index#_selections_#index_selections#_selection"
                           class="span1 offset2 colabel">選択肢 <span
                            id="enquete_questions_#index#_selections_label"></span></label>

                    <div class="span2">
                      <input id="enquete_questions_#index#_selections_#index_selections#_selection"
                             name="enquete[questions][#index#][selections][#index_selections#][selection]"
                             type="text" placeholder="選択肢" data-rule-required="true" class="input-small"/>
                    </div>
                    <label for="enquete_questions_#index#_selections_#index_selections#_order"
                           class="span1 colabel">順番</label>

                    <div class="span2">
                      <input class='selectionorders input-mini'
                             id="enquete_questions_#index#_selections_#index_selections#_order" data-rule-required="true"
                             name="enquete[questions][#index#][selections][#index_selections#][order]" type="text"/>
                    </div>
                    <div class="span1">
                      <button class="delete btn-inverse btn-mini"
                              id="enquete_questions_#index#_selections_remove_current">削除
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <div id="enquete_questions_#index#_selections_noforms_template">選択肢を追加して下さい。</div>
              <!-- Controls -->
              <div class='row'>
                <div id="enquete_questions_#index#_selections_controls" class="span6 offset5">
                  <span id="enquete_questions_#index#_selections_add"><button class="btn-success">選択肢を増やす
                  </button></span>
                  <span id="enquete_questions_#index#_selections_remove_last"><button class="btn-success">最後の選択肢を削除する
                  </button></span>

                  <div id="enquete_questions_#index#_selections_remove_all"><a><span>選択肢全てを削除する</span></a>
                  </div>
                  <div class='row'>　</div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- No forms template -->
        <div id="enquete_questions_noforms_template" class='row span3 offset3'>質問を作成して下さい</div>
        <!-- /No forms template-->
        <div id="enquete_questions_controls" class="span6 offset2">
          <div class='row'>
            <span id="enquete_questions_add"><button class="btn-info">質問を増やす</button></span>
            <span id="enquete_questions_remove_last"><button class="btn-info">最後の質問を削除する</button></span>
            <span id="enquete_questions_remove_all"><button class="btn-info">質問を全部削除すする</button></span>
          </div>
          <div class='row'>　</div>
        </div>
        <div class="row span3 offset5">
          <button type="submit" class="btn btn-primary btn-large">　保　存　</button>
        </div>
      </fieldset>
    </form>
  </div>
</div>

  <script type="text/javascript">
    jQuery(document).ready(function($){
	$("#enquete").validate({
	    highlight: function(element) {
		$(element).closest('.control-group').removeClass('valid').addClass('error');
	    },
	    success: function(element) {
	       element
               .text('OK!').addClass('valid')
               .closest('.control-group').removeClass('error').addClass('success');	
	    }
	});
    });
    jQuery(document).ready(function($){
      $('.jqueryCalendar').datepicker({
        numberOfMonths: 2,
        dateFormat: 'yy/mm/dd',
        showButtonPanel: true
      });
    });
    jQuery(document).ready(function($){
      var enquete = $('#enquete_questions').sheepIt({
        separator: '',
        indexFormat: '#index#',
        allowRemoveLast: true,
        allowRemoveCurrent: true,
        allowRemoveAll: true,
        allowAdd: true,
        allowAddN: true,
        maxFormsCount: 10,
        minFormsCount: 0,
        iniFormsCount: 1,
        continuousIndex: true,
        removeAllConfirmationMsg: '質問を全て削除しますが、よろしいですか？',
	<?php echo $_smarty_tpl->tpl_vars['data']->value;?>

        nestedForms: [
          {
            id: 'enquete_questions_#index#_selections',
            options: {
              separator: '',
              indexFormat: '#index_selections#',
              maxFormsCount: 20,
              iniFormsCount: 2,
              allowRemoveAll: true,
              afterFill: function (source, newForm) {
                var sorders = $('.selectionorders');
                var f;
                var ssize = sorders.size();
		if(ssize == 0) {
		    return;
		}
                var num = 0;
                var beforeNum = 0;
                $(sorders).each(function () {
                  num++;
                  var id = this.id;
                  if (/(\d+)_order/.test(id)) {
                    f = RegExp.$1;
                  } else {
                    f = "1";
                  }
                  if (f == "0") {
                    beforeNum = 0;
                  }
                  if ($(this).val() != undefined && $(this).val() !=  null && $(this).val() !== "") {
                    beforeNum = $(this).val();
                  } else {
		    if(isFinite(beforeNum)) {
			this.value = parseInt(beforeNum) + 1;
			beforeNum = parseInt(beforeNum) + 1;
		    }
                  }
                });
              }
            },
          }
        ],
        afterFill: function (source, newForm) {
            var orders = $('.questionorders');
            var size = orders.size();
	    if(size == 0) {
		return;
	    }
            var num = 0;
            if (size == 1) {
		num = 1;
		orders[0].value = 1;
            } else {
                if (orders[size - 2].value !== undefined && orders[size - 2].value !==  null && orders[size - 2].value !== "" && isFinite(orders[size - 2].value) ) {
		    orders[size - 1].value = parseInt(orders[size - 2].value) + 1;;
                }
            }
        }
      });
    });
  </script>
<?php }} ?>
