<h2>{{$enquete_name}}</h2>
<form action="" method="post">

    <ol class="cdq_enquete">
        <div class="container-fluid">
            {{$questions}}
        </div>
    </ol>

    {{if 'false' == $print_only}}
    <input type="{{$submit}}" name="enquete_options[enquete_answer][submit]" value="アンケートに答える">
    <input type="hidden" name="enquete_options[enquete_answer][enquete_id]" value="{{$enquete_id}}">
    {{/if}}
</form>

