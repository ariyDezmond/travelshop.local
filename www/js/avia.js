$( document ).ready(function() {
	ASmin.inline_form.init({
		autocomplete_class: "aviasales_minified_autocomplete",
		target: "_self ",
		form_id: "#aviasales_search"
	});

	/*$('#economy_ticket').click(function(){

		$('#trip_class').val(0);
		$(this).addClass('active');
		$('#buisness_ticket').removeClass('active');
	});

	$('#buisness_ticket').click(function(){
		$('#trip_class').val(1);
		$(this).addClass('active');
		$('#economy_ticket').removeClass('active');
	});*/

	/*$('input:radio[name="direction"]').change(function(){
	    if($(this).val() == '0'){
	       $('#return_date').attr('disabled','disabled');
	    }
	    else{
	    	$('#return_date').removeAttr("disabled");
	    }
	});

	$('#oneway').change(function(){
		if($(this).attr('checked')){
			$('#rsecond').removeAttr('checked');
			$('#rthird').removeAttr('checked');
			$('#direction').val($(this).val());
		}
		else{
			$('#rsecond').attr('checked','checked');
			$('#direction').val($('#rsecond').val());
		}
	});

	$('#rsecond').change(function(){
		if($(this).attr('checked')){
			$('#oneway').removeAttr('checked');
			$('#direction').val($(this).val());
		}
	});
	$('#rthird').change(function(){
		if($(this).attr('checked')){
			$('#oneway').removeAttr('checked');
			$('#direction').val($(this).val());
		}
	});

	$('#range1').change(function(){
		if($(this).attr('checked')){
			$('#range').val('1');
		}
		else{
			$('#range').val('0');
		}
	});

	$("#main_submit").click(function(){
		$('#av_result').html('');
		$('#disable_form').show();
		$('#av_loader').show();
		$.get(
				"ajax.php",{
					origin_iata: $('#origin_iata').val(),
					destination_iata: $('#destination_iata').val(),
					depart_date: $('#depart_date').val(),
					return_date: $('#return_date').val(),
					range: $('#range').val(),
					adults: $('#adults').val(),
					children: $('#children').val(),
					infants:$('#infants').val(),
					trip_class: $('.trip_class:checked').val(),
					direction: $("#direction").val(),
				},
				 onAjaxSuccess
		);
		function onAjaxSuccess(data){ 
				$('#disable_form').hide();
				$('#av_loader').hide();
				$('#av_result').html(data);
		}
	});
*/
});