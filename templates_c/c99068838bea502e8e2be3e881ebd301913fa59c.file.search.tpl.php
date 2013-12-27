<?php /* Smarty version Smarty-3.1.16, created on 2013-12-27 01:30:46
         compiled from "/Users/chikkun/html/wordpress/wp-content/plugins/cd-questionnaire/templates/search.tpl" */ ?>
<?php /*%%SmartyHeaderCode:156944350652bcd5eda856b9-60311570%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c99068838bea502e8e2be3e881ebd301913fa59c' => 
    array (
      0 => '/Users/chikkun/html/wordpress/wp-content/plugins/cd-questionnaire/templates/search.tpl',
      1 => 1388107841,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '156944350652bcd5eda856b9-60311570',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_52bcd5edb7aaf1_84235501',
  'variables' => 
  array (
    'page' => 0,
    'name' => 0,
    'id' => 0,
    'start_date_after' => 0,
    'start_date_before' => 0,
    'paging' => 0,
    'e_list' => 0,
    'var' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52bcd5edb7aaf1_84235501')) {function content_52bcd5edb7aaf1_84235501($_smarty_tpl) {?><style type="text/css">
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
    <input type='hidden' name="page" value="<?php echo $_smarty_tpl->tpl_vars['page']->value;?>
">

    <div class="rows">
        <div class="span12">
            <fieldset>
                <div class="control-group row">
                    <label for="where[name]" class="span3 colabel">アンケート名</label>

                    <div class="span6">
                        <input type="text" name="where[name]" class="input-large" value="<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
" placeholder="部分一致"/>
                    </div>
                </div>
                <div class="control-group row">
                    <label for="where[id]" class="span3 colabel">アンケートID</label>

                    <div class="span6">
                        <input type="text" name="where[id]" class="input-mini" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
" placeholder="完全一致"
                               data-rule-digits="true"/>
                    </div>
                </div>
                <div class="control-group row">
                    <label for="where[start_date_after]" class="span3 colabel">アンケート開始日(以降)</label>

                    <div class="span6">
                        <input type="text" name="where[start_date_after]" class="input-large jqueryCalendar"
                               value="<?php echo $_smarty_tpl->tpl_vars['start_date_after']->value;?>
" placeholder="開始日以降(この日を含む)" data-rule-date="true"/>
                    </div>
                </div>
                <div class="control-group row">
                    <label for="where[start_date_before]" class="span3 colabel">アンケート開始日(以前)</label>

                    <div class="span6">
                        <input type="text" name="where[start_date_before]" class="input-large jqueryCalendar"
                               value="<?php echo $_smarty_tpl->tpl_vars['start_date_before']->value;?>
" placeholder="開始日以前(この日を含む)" data-rule-date="true"/>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>

    <div class="row">
    </div>

    <div class="row span3 offset2">
        <input type="submit" class="btn btn-primary btn-large" value="検　索"><input type="reset"
                                                                                  class="btn btn-warning btn-large"
                                                                                  value="クリア">
    </div>
</form>

<div class="row">
    <p></p>
</div>

<div class="row">
    <p></p>
</div>

<div class="row">
    <div class="span10 offset3">
        <?php echo $_smarty_tpl->tpl_vars['paging']->value;?>

    </div>

    <?php if (count($_smarty_tpl->tpl_vars['e_list']->value)>0) {?>
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
                <?php  $_smarty_tpl->tpl_vars['var'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['var']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['e_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['var']->key => $_smarty_tpl->tpl_vars['var']->value) {
$_smarty_tpl->tpl_vars['var']->_loop = true;
?>
                <tr>
                    <td><a href="admin.php?page=<?php echo $_smarty_tpl->tpl_vars['page']->value;?>
&id=<?php echo $_smarty_tpl->tpl_vars['var']->value->id;?>
&action=update"><?php echo $_smarty_tpl->tpl_vars['var']->value->id;?>
</a></td>
                    <td><?php echo $_smarty_tpl->tpl_vars['var']->value->name;?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['var']->value->start_date;?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['var']->value->end_date;?>
</td>
                </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
    <?php }?>
    <div class="row">
        <div class="span10 offset3">
            <?php echo $_smarty_tpl->tpl_vars['paging']->value;?>

        </div>
    </div>
</div>
<script>
    jQuery(document).ready(function ($) {
        $('#enquete input[type="reset"]').click(function () {
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
<?php }} ?>
