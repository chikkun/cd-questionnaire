<div class="row span10 offset1">
	<h2>{{$form_title}}</h2>
	<ul class="confirm">
		<li>アンケートタイトル: <p>{{$questionnaire->enquete_title}}</p></li>
		<li>開始日: <p>{{$questionnaire->start_date|regex_replace:"/\s*\d\d:\d\d:\d\d/":""}}</p></li>
		<li>終了日: <p>{{$questionnaire->end_date|regex_replace:"/\s*\d\d:\d\d:\d\d/":""}}</p></li>
		<li> 内容:
			<ol class="cdq_questions">
				{{foreach from=$questionnaire->questions item=que}}
				<li>{{$que->question_text}}<br />　　　複数回答:{{if $que->multiple_answer == 1}}不可{{else}}可{{/if}},　　表示順:{{$que->q_sort_id}}</li>
					<ol class="cdq_selections">
						{{foreach from=$que->selections item=sel}}
						<li>{{$sel->selection_display}}<br />　　　表示順:{{$sel->s_sort_id}}</li>
						{{/foreach}}
					</ol>
				</li>
				{{/foreach}}
			</ol>
		</li>
	</ul>
</div>

{{$jscookie}}
