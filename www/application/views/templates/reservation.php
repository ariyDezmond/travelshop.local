<!-- 
<script charset="utf-8" async="true" src="//www.travelpayouts.com/widgets/aaf797c0f8cac524e381229d52f16774.js?v=329"></script> -->
<div class="slider_form">
    <h2 style='color: #fff;
        font-family: "Arial-Black";
        font-size: 46px;
        line-height: 80px;
        text-align: center;
        text-transform: uppercase;
        text-shadow: 3px 3px 3px rgba(0, 0, 0, 0.75);'>Онлайн бронирование</h2>
    	<form action="/api/get/" id="aviasales_search" method="POST" name="aviasales_search">
    		<div id="disable_form"></div>
    		<input name="utf8" type="hidden" value="?">
    		<input name="currency" type="hidden">
    		<input id="marker" name="marker" type="hidden" value="affiliate-id">
    		<input id="origin_iata" name="origin_iata" type="hidden" value="">
    		<input id="destination_iata" name="destination_iata" type="hidden" value="">
    		<input id="is_show_hotels" name="show_hotels" type="hidden" value="true">
    		<input id="with_request" name="with_request" type="hidden" value="rue">
    		<input id="trip_class" name="trip_class" type="hidden" value="">
    		<input id="direction" name="direction" type="hidden" value="1">
    		<input id="range" name="range" type="hidden" value="0">

    		<input id="rsecond" name="direction" type="radio" value="1" hidden checked><label class="form_label" for="rsecond">Туда и обратно</label>
    		<input id="rthird" name="direction" type="radio" value="2" hidden><label class="form_label" for="rthird">Составить маршрут</label>

    		<div class="clear"></div>

    		<div class="form_block">
    			<label for="origin_name">Город вылета</label><br>
    			<input autocomplete="off" id="origin_name" name="origin" type="text" value="">
    			<a href="#"><img src="img/form_img_icon.png" height="38" width="40" alt=""></a>
    		</div>

    		<div class="form_block">
    			<label for="destination_name">Город назначения</label><br>
    			<input id="destination_name" name="destination" type="text" value="">
    		</div>

    		<div class="clear"></div>

    		<div class="form_block form_block_margin">
    			<label for="depart_date" class="form_block_label">Туда</label>
    			<div class="form_block2">
    				<input id="range1" name="range1" type="checkbox">
    				<label for="range1">± 3 days</label>
    			</div>
    			<input id="depart_date" name="depart_date" type="text" value="">
    		</div>

    		<div class="form_block form_block_margin">
    			<label for="return_date" class="form_block_label">Обратно</label>
    			<div class="form_block2">
    				<input id="oneway" name="direction" type="checkbox" value="0">
    				<label for="oneway">В одну сторону</label>
    			</div>
    			<input id="return_date" name="return_date" type="text" value="">
    		</div>

    		<div class="clear"></div>
    			<label for="" class="passangers_label">Количество пассажиров</label>
    		<div class="clear"></div>

    	<div class="passangers_select_form passangers_select_form_adults">
    		<label for="adults"></label>
    		<select id="adults" name="adults">
    			<option value="1">1</option>
    			<option value="2">2</option>
    			<option value="3">3</option>
    			<option value="4">4</option>
    			<option value="5">5</option>
    			<option value="6">6</option>
    			<option value="7">7</option>
    			<option value="8">8</option>
    			<option value="9">9</option>
    		</select>
    	</div>

    	<div class="passangers_select_form passangers_select_form_children">
    		<label for="children"></label>
    		<select id="children" name="children">
    			<option value="0">0</option>
    			<option value="1">1</option>
    			<option value="2">2</option>
    			<option value="3">3</option>
    			<option value="4">4</option>
    			<option value="5">5</option>
    		</select>
    	</div>

    	<div class="passangers_select_form passangers_select_form_infants">
    		<label for="infants"></label>
    		<select id="infants" name="infants">
    			<option value="0">0</option>
    			<option value="1">1</option>
    			<option value="2">2</option>
    			<option value="3">3</option>
    			<option value="4">4</option>
    		</select>
    	</div>
    	<input type="radio" value="Y" name="trip_class" class="trip_class">Эконом
    	<input type="radio" value="C" name="trip_class" class="trip_class">Бизнес
    	<div class="clear"></div>

    	<div class="form_block3">
    		<input id="show_hotels" name="" type="checkbox" value="">
    		<label for="show_hotels">Показать отели в соседней вкладке</label>
    	</div>

    		<input class="submit" id="main_submit" type="submit" value="Найти">

    		<p>Также забронировать билет и выкупить его Вы можете у нашего кассира в офисе по адресу в <a href="#">контактах</a>. Или связаться с нашими менеджерами через форму jivostite в правом нижнем углу.</p>
    	</form>
    	
    <div id="av_loader"><img src="img/loader.gif"></div>
    
</div><!-- slider_form -->
	
</div><!-- /wrapper -->
</section><!-- /section -->
</div>