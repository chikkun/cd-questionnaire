<style type="text/css">
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
    <h2>アンケート{{$form_title}}</h2>
  </div>
  <div class="row span12">
    <form id="enquete" role="form" class="form-horizontal" method="post" action="">
			{{$hidden_id}}
      <fieldset>
        <div class="control-group row">
          <label for="enquete_name" class="span2 colabel">アンケート名</label>
          <div class="span6">
            <input type="text" name="enquete_name" class="input-medium" value="{{$enquete_title}}" placeholder="アンケート名(必須)" data-rule-required="true"/>
          </div>
        </div>
        <div class="control-group row">
          <label for="start_date" class="span2 colabel">開始日</label>

          <div class="span6">
            <input type="text" name="start_date" class="jqueryCalendar input-medium" value="{{$start_date|regex_replace:" /\d\d:\d\d:\d\d/":""}}" placeholder="開始日(必須)" data-rule-required="true"/>
          </div>
        </div>
        <div class="control-group row">
          <label for="end_date" class="span2 colabel">終了日</label>

          <div class="span6">
            <input type="text" name="end_date" class="jqueryCalendar input-medium" value="{{$end_date|regex_replace:" /\d\d:\d\d:\d\d/":""}}" placeholder="終了日"/>
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
					{{if $enable != "ng"}}
          <button type="submit" name="action" value="{{$enqueteAction}}" class="btn btn-primary btn-large"> {{$enquete_button}} </button>
					{{/if}}
					{{if $enqueteAction == "update"}}
					<button type="submit" name="action" value="delete" class="btn btn-warning btn-large"> 削除 </button>
					{{/if}}
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
	{{$data}}
        nestedForms: [
          {
            id: 'enquete_questions_#index#_selections',
            options: {
              separator: '',
              indexFormat: '#index_selections#',
              maxFormsCount: 20,
              iniFormsCount: 2,
              allowRemoveAll: true
              
		{{$afterAdd_selectionorders}}              
              
            },
          }
        ]
        
	{{$afterAdd_questionorders}}        
        
      });
    });
  </script>
