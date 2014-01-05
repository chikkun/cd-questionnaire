<h2>{{$enquete_name}}</h2>
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
    <div class="container-fluid">
        <ol class="cdq_enquete">
        {{$questions}}
        </ol>
    </div>

    {{if 'false' == $print_only}}
    <input type="{{$submit}}" name="enquete_options[enquete_answer][submit]" value="アンケートに答える">
    <input type="hidden" name="enquete_options[enquete_answer][enquete_id]" value="{{$enquete_id}}">
    {{/if}}
</form>

