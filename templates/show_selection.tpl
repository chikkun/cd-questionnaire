<li>
        <label class="{{$sel['type']}}-inline">
        <input name="enquete_options[enquete_answer][{{$sel.questionID}}][{{$sel.checkboxID}}]"
               value="{{$sel.selectionID}}:{{$sel.value}}"
               type="{{$sel.type}}" {{$sel.checked.{{$sel.questionID}}.{{$sel.selectionID}}}}
               class="cdq_selection"
               id="{{$sel.questionID}}_{{$sel.selectionID}}">
            {{$sel.value}}
    </label>
    </li>

