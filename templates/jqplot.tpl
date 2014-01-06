<h2>{{$enquete_title}}</h2>

<ol>
	{{foreach from=$graph_list item=var}}
	<li>{{$var->question_text}}
		<div class='offset1' id='chart{{$var->q_num}}' style='width:400px; height:300px;'></div>
	</li>
	{{/foreach}}
</ol>

<script>

	{{foreach from=$js_list item=var}}
	jQuery(document).ready(function ($) {
  var data =  {{$var->ans_array}};
  plot3 = $.jqplot('chart{{$var->q_num}}', [data], {
    title: "質問{{$var->q_num}}",
    series: [
      {renderer: $.jqplot.BarRenderer}
    ],
    axes: {
      xaxis: {
        renderer: $.jqplot.CategoryAxisRenderer,
        tickRenderer: $.jqplot.CanvasAxisTickRenderer,
        tickOptions: {
          angle: -30,
          fontSize: '10pt'
        }
      }
    }
  });
})(jQuery);
	{{/foreach}}
</script>