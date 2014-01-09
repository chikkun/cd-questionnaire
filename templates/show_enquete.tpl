<h2 class="cdq_title">{{$enquete_name}}</h2>

<div class="error_message">

</div>
<table>
    <tr>
        <th>アンケート開始日</th>
        <td>{{$start_date}}</td>
    </tr>
    <tr>
        <th>アンケート終了日</th>
        <td>{{$end_date}}</td>
    </tr>
</table>
<form action="" method="post">
    <ol class="cdq_questions">
    {{$questions}}
        </ol>

    {{if 'true' == $print_button}}
    <div class="error_message">

    </div>
    <input id="answer_button" type="{{$submit}}" name="enquete_options[enquete_answer][submit]" value="アンケートに答える">
    <input type="hidden" name="enquete_options[enquete_answer][enquete_id]" value="{{$enquete_id}}">
    {{/if}}
</form>
<script type="text/javascript">
    function getUT() {
        var ut = parseInt(new Date / 1);
        var mt = new MersenneTwister();
        var val = "" + ut + (mt.nextInt() + mt.next());

        gc = $.cookie("CDQ_enquete");
        if (gc === undefined) {
            //クッキー作成
            $.cookie("CDQ_enquete", val, {path: '/wordpress/', expire: 1});
            //クッキー再読み込み
            gc = $.cookie("CDQ_enquete");
            if (gc === undefined) {
                //クッキーが無効
                $("#answer_button").attr('disabled', true);
                $(".error_message").each(function () {
                    $(this).text("COOKIEが有効でなければないと回答ができません。");
                });
            }
        }
    }

    jQuery(document).ready(function ($) {
        getUT();
    });
</script>
