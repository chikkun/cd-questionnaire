<div class="span3">
    <label class="{{$sel['type']}}-inline">
        <input name="enquete_options[enquete_answer][{{$sel.questionID}}][{{$sel.checkboxID}}]"
               value="{{$sel.selectionID}}:{{$sel.value}}"
               type="{{$sel.type}}" {{$sel.checked}}
               class="cdq_selection"
               id="{{$sel.questionID}}_{{$sel.checkboxID}}">
        {{$sel.value}}
    </label>
</div>
