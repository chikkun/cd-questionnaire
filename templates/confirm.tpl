<div class="row span10 offset1">
	<h2>{{$form_title}}</h2>
	<ul class="confirm">
		<li>アンケートタイトル: {{$questionnaire->enquete_title}}</li>
		<li>開始日: {{$questionnaire->start_date}}</li>
		<li>終了日: {{$questionnaire->end_date}}</li>
		<li> 内容:
			<ol class="cdq_questions">
				{{foreach from=$questionnaire->questions item=que}}
				<li>{{$que->question_text}}<br />　　　表示順:{{$que->q_sort_id}}</li>
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
