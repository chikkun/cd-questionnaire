<h2 class="cdq_title">{{$enquete_name}}</h2>

<noscript>
    <p>JavaScrip が有効でない時には、アンケートに投稿することができません。</p>
</noscript>

<div class="error_message"></div>

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
<form id="cd_questionnaire_form" action="" method="post">
    <ol class="cdq_questions">
    {{$questions}}
        </ol>

    {{if 'true' == $print_button}}
    <div id="errors"></div>

    <input id="answer_button" class="btn btn-primary btn-large" type="{{$submit}}"
           name="enquete_options[enquete_answer][submit]" value="アンケートに答える">
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

    $(document).ready(function () {
        $("#cd_questionnaire_form").validate({
            errorClass: 'errMsg',
            errorPlacement: function (error, element) {
                $(element).parent().parent().last().siblings(".errMsg").text(error.get(0).textContent);
            },
            success: function (element) {
                element
                        .text('OK!').addClass('valid')
                        .parent().parent().last().siblings(".errMsg").text();
            },
            messages: {
                required: "チェックボックスには、１つ以上のチェックを入れてください。"
            }
        });
    });

</script>
