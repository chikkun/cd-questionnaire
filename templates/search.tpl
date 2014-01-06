<style type="text/css">
    .form-horizontal .colabel {
        float: left;
        padding-top: 5px;
        text-align: right;
    }
</style>

<div class="row span12">
    <h2>アンケート検索</h2>
</div>

<form id="enquete" role="form" class="form-horizontal" method="GET" action="">
    <input type='hidden' name="page" value="{{$page}}">

    <div class="rows">
        <div class="span12">
            <fieldset>
                <div class="control-group row">
                    <label for="where[name]" class="span3 colabel">アンケート名</label>

                    <div class="span6">
                        <input type="text" name="where[name]" class="input-large" value="{{$name}}" placeholder="部分一致"/>
                    </div>
                </div>
                <div class="control-group row">
                    <label for="where[id]" class="span3 colabel">アンケートID</label>

                    <div class="span6">
                        <input type="text" name="where[id]" class="input-medium" value="{{$id}}" placeholder="完全一致"
                               data-rule-digits="true"/>
                    </div>
                </div>
                <div class="control-group row">
                    <label for="where[start_date_after]" class="span3 colabel">アンケート開始日(以降)</label>

                    <div class="span6">
                        <input data-rule-cdate="true" type="text" name="where[start_date_after]" class="input-large jqueryCalendar"
                               value="{{$start_date_after}}" placeholder="開始日以降(この日を含む)" data-rule-date="true"/>
                    </div>
                </div>
                <div class="control-group row">
                    <label for="where[start_date_before]" class="span3 colabel">アンケート開始日(以前)</label>

                    <div class="span6">
                        <input data-rule-cdate="true" type="text" name="where[start_date_before]" class="input-large jqueryCalendar"
                               value="{{$start_date_before}}" placeholder="開始日以前(この日を含む)" data-rule-date="true"/>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>

    <div class="row">
    </div>

    <div class="row span3 offset2">
        <button type="submit" class="btn btn-primary btn-large" name="action" value="search">検　索</button><button type="reset"
                                                                                  class="btn btn-warning btn-large"
																																									value="クリア">クリア</button>
    </div>
</form>

<div class="row">
    <p></p>
</div>

<div class="row">
    <p></p>
</div>

<div class="row">
    <div class="span10 offset2">
        {{$paging}}
    </div>

    {{if count($e_list) > 0}}
    <div class="row">
        <div class="span11 offset1">
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th class="span1">ID</th>
                    <th class="span6">アンケート名</th>
                    <th class="span2">開始日</th>
                    <th class="span2">終了日</th>
                </tr>
                </thead>
                <tbody>
                {{foreach from=$e_list item=var}}
                <tr>
                    <td><a href="admin.php?page={{$page}}&id={{$var->id}}&action=update_form">{{$var->id}}</a></td>
                    <td>{{$var->name}}</td>
									<td>{{$var->start_date|regex_replace:"/\s*\d\d:\d\d:\d\d/":""}}</td>
                    <td>{{$var->end_date|regex_replace:"/\s*\d\d:\d\d:\d\d/":""}}</td>
                </tr>
                {{/foreach}}
                </tbody>
            </table>
        </div>
    </div>
    {{/if}}
    <div class="row">
        <div class="span10 offset2">
            {{$paging}}
        </div>
    </div>
</div>
<script>
    jQuery(document).ready(function ($) {
		jQuery.validator.addMethod("cdate", function(value, element) {
			if(!value){
				return true;
			}
			r = value.match(/^(\d{4})[\/\-](\d{1,2})[\/\-](\d{1,2})$/);
				if(!r){
					return false;
				}
				if (r[2] < 1 || r[2] > 12 || r[3] < 1) {
					return false;
				}
				if (r[2] == 2) {
					return r[3] <= (r[1] % 4 == 0 && r[1] % 100 != 0 || r[1] % 400 == 0 ? 29 : 28);
				}
				return r[3] <= (r[2] == 4 || r[2] == 6 || r[2] == 9 || r[2] == 11 ? 30 : 31);
			}, "YYYY/MM/DD形式で入力して下さい。");
        $('#enquete button[type="reset"]').click(function () {
            $('#enquete input[type="text"]').each(function () {
              $(this).attr("value", "");
        });
     });
        var $form = $("#enquete");
        $form.validate();

    });
    jQuery(document).ready(function ($) {
        $('.jqueryCalendar').datepicker({
            numberOfMonths: 1,
	    dateFormat: 'yy/mm/dd',
            showButtonPanel: true
        });
    });
</script>
