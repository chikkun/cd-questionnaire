<h2>{{$enquete_name}}</h2>
<form action="" method="post">

    <ol class="cdq_enquete">
        {{$questions}}
    </ol>

    <input type="submit" name="enquete_options[enquete_answer][submit]" value="アンケートに答える">
    <input type="hidden" name="enquete_options[enquete_answer][enquete_id]" value="{{$enquete_id}}">
</form>

