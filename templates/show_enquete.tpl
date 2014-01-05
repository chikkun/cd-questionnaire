<h2>{{$enquete_name}}</h2>
<form action="" method="post">
    <div class="container">

        <div class="span3">3</div>
        <div class="span3">3</div>
        <div class="span3">3</div>
        <div class="span3">3</div>
    </div>
    <div class="container">
    <ol class="cdq_enquete">
            {{$questions}}
    </ol>
    </div>

    {{if 'false' == $print_only}}
    <input type="{{$submit}}" name="enquete_options[enquete_answer][submit]" value="アンケートに答える">
    <input type="hidden" name="enquete_options[enquete_answer][enquete_id]" value="{{$enquete_id}}">
    {{/if}}
</form>

