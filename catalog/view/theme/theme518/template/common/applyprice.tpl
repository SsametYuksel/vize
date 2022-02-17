<?php echo $header; ?>



<style>

	#top-part img {

		width: 100%;

	}




</style>



			<div class="header_modules"><?php echo $header_top; ?></div>

			

			<div id="top-part"><?php echo $content_top; ?></div>

<div id="container" style="margin: 60px 0">

	<div class="container">

		<div class="row"><?php echo $column_left; ?>

		<?php if ($column_left && $column_right) { ?>

		<?php $class = 'col-sm-6'; ?>

		<?php } elseif ($column_left || $column_right) { ?>

		<?php $class = 'col-sm-9'; ?>

		<?php } else { ?>

		<?php $class = 'col-sm-12'; ?>

		<?php } ?>

		

		<?php echo $column_right; ?></div>

		<form action="<?php echo $applyform_url?>" method="POST">
		<input type="hidden" name="come-from-applyprice-form" value="1">

		<div style="background-color: #efefef; padding:40px" class="row">

			<div style="padding-top: 13px;" class="col col-md-6">

				



				<div class="form-group" style="max-width: 300px;  margin: auto; position: relative">

					<label for="" class="price-form">Nationality</label>

					<select id="nationality" class="form-control" name="nationality_id" id="">

						<?php foreach($nationalities as $nationality) {

							echo '<option data-price="'.$nationality['price'].'" value='.$nationality['product_id'].' data-pass_type="'.$nationality['passport_type_allowance'].'" data-supporting_docs="'.$nationality['need_supporting_docs'].'" data-max_stay_days="'.$nationality['max_stay_days'].'" data-extra_note="'.$nationality['extra_passport_note'].'">'.$nationality['name'].'</option>';

						}?>

					</select>

				</div>			

				<br>





				<div class="form-group" style="max-width: 300px;  margin: auto">

					<label for="" class="price-form">Passport Type</label>

					<select required class="form-control" name="passport_id" id="">

						<option>Ordinary</option>

					</select>

				</div>		

				<br>

				

				<div class="form-group" style="max-width: 300px;  margin: auto">

					<label for="" class="price-form">Arrival Date</label>

					<div class='input-group date'>

						<input required type='text' class="form-control" id='datepicker' name="arrival_date">

						<span class="input-group-addon">

						<span class="glyphicon glyphicon-calendar"></span>

					</span>

					</div>

				</div>

				<br>



				<div class="form-group form-inline" style="display:flex; max-width: 300px;  margin: auto">

					<input type="radio" class="form-check-input insurance" name="insurance" value="0">

					<label class="price-form" for="checkBox" style="margin: 0; margin-left: 5px; ">Without Insurance</label>
					
					<input class="price-form" checked type="radio" class="form-check-input insurance" name="insurance" value="1" style="margin-left: 10px;">

					<label class="price-form" for="checkBox" style="margin: 0; margin-left: 5px; ">With Insurance ($10)</label>


				</div>

				<br>



				<div class="form-group form-inline" style="display:flex; max-width: 300px;  margin: auto">

					<label class="price-form" id="modal_link" style="margin-right: 5px"  data-toggle="modal" 

						   data-target="#exampleModal">Click here 

						for Passenger Locator Form</label>

				</div>



			</div>



			<div class="col col-md-6" style="border-radius: 5px; vertical-align: center; padding: 50px 20px;background-color: #fdfdfd;box-shadow: 0px 2px 11px 2px #00000047;">

				<p style="color: #515151">Nationality: <span id="nationality-confirm" style="font-weight: 600; color: #434343"> </span></p>

				<p style="color: #515151">Passport Type Allowance: <span style="font-weight: 600; color: #434343" id="passport-confirm"> </span></p>

				<p style="color: #515151">Max stay days: <span style="font-weight: 600; color: #434343" id="max-days-confirm">90 days in 180</span></p>

				<!-- <p style="color: #515151">Supporting Documents: <span style="font-weight: 600; color: #434343" id="supporting-docs-confirm"></span></p> -->

				<p style="color: #515151">Extra Passport Note: <span style="font-weight: 600; color: #434343" id="extra-notes-confirm"></span></p>

				<h2 style="font-size: 40px; margin-top: 20px; position: relative;">Visa Fee:<span id="price" style="color: #008408; font-weight: 600; padding-left: 10px;"></span></h2>

			</div>

			<input type="text" name="price_visa" hidden>



		</div>

		<div class="text-center" style="margin-top: 100px">

			<button type="submit" name="" id="" style="font-size: 28px" class="btn btn-primary" href="#" role="button">Save & Continue <i class="fa fa-arrow-right" aria-hidden="true"></i></button>

		</div>

		<div class="row" style="margin-top: 50px">

			<div class="col col-md-6 text-center">

				<h2 style="color: rgb(0, 0, 0)">About e-Visa</h2>

				<p style="width: 60%; margin: auto; font-size: 15px; line-height: 25px">

					Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quisquam, vero

					quod a doloribus suscipit dolorum omnis maiores aspernatur eos. Non.

				</p>

			</div>

			<div class="col col-md-6 text-center">

				<h2 style="color: rgb(0, 0, 0)">Contact</h2>

				<p style="width: 60%; margin: auto; font-size: 15px; line-height: 25px">

					support@evisaforturkey.com

				</p>

			</div>

		

		</div>

		<div style="text-align: center; margin-top: 50px; color: black">

    		<a href=""><h2 style="font-size: 36px">Ready to visit Turkey?</h2></a>

  		</div>

	</div>

	<div class="modal" id="exampleModal" tabindex="-1" role="dialog">

		<div class="modal-dialog" role="document">

			<div class="modal-content">

				<div class="modal-header" style="display: flex; justify-content: space-between; padding: 5px 15px;">

					<h2 style="margin: 20px 0 20px;">Passenger Locator Form</h2>

					<button type="button" class="close" data-dismiss="modal" aria-label="Close">

						<span aria-hidden="true">X</span>

					</button>

				</div>

				<div class="modal-body">

					<p style="color: black; font: ">Form for entry to Turkey</p>

					<ol style="color: black" type="1">

						<li>The form must be filled within last 72 hours before travel</li>

						<li>The information must be proper and correct because in case of any contact with Covid-19 patient, The Ministry of Health will contact you.</li>

						<li>The form may be checked at the borders and if you have not filled or given misleading statements, you may face legal and administrative sanctions.</li>

						<li>If you have not filled it, you might be refused to enter Turkey.</li>

					</ol>

				</div>

			</div>

		</div>

	</div>

</div>





<style>

.picker-switch{

	display: none;

}



#price {

	opacity: 1;

	position: absolute;

	top: 10px

	transform: translateY(-10px);

	transition: all 0.5s;

}



#price.active {

	position: absolute;

	transform: translateY(-10px);

	opacity: 0;

	transition: all 0.5s;

}



#modal_link{

	cursor: pointer;

}



</style>

<div class="content_bottom">

			<?php echo $content_bottom; ?>

</div>

<script>

	$('#myModal').on('shown.bs.modal', function () {

		$('#myInput').trigger('focus')

	})



var updatePriceWhenNationalitySelect = () => {

	$('#nationality').on('change', function() {

		$('#price').toggleClass('active');

		$( "#insurance" ).prop( "checked", false );



		setTimeout(function() {

			country = $('option:selected', '#nationality').text()

			pass_type = $('option:selected', '#nationality').data('pass_type') //pass_type

			max_stay_days = $('option:selected', '#nationality').data('max_stay_days') //max_stay_days
			max_days_in = max_stay_days.split('/')[0]
			max_days = max_stay_days.split('/')[1]

			max_stay_days = max_days + ' days every ' + max_days_in + ' days'

			supporting_docs = $('option:selected', '#nationality').data('supporting_docs') //supporting_docs

			extra_note = $('option:selected', '#nationality').data('extra_note') //extra_note

			price = $('option:selected', '#nationality').data('price')

			$('#price').text(' ' + price).toggleClass('active')

			$('#nationality-confirm').text(country)

			$('#passport-confirm').text(pass_type.toUpperCase())

			$('#max-days-confirm').text(max_stay_days.toUpperCase())

			if ($('option:selected', '#nationality').data('extra_note').length === 0)

				extra_note = "-";

			$('#extra-notes-confirm').text(extra_note)

			if(supporting_docs == 0)

				supporting_docs = "No";

			else

				supporting_docs = "Yes";

			$('#supporting-docs-confirm').text(supporting_docs)

		}, 400);



	});

}



$("input[type=radio][name=insurance]").change(function() {

	if($(this).val() != 0) {

		var currentPrice = parseInt($('#price').text().replace('$', ''));

		currentPrice += 10;

		$('#price').text('$'+currentPrice.toFixed(2));

		$('#insurance').val(1);

	}else{

		var currentPrice = parseInt($('#price').text().replace('$', ''));

		currentPrice -= 10;

		$('#price').text('$'+currentPrice.toFixed(2));

		$('#insurance').val(0);

	}

});



var initializeNationalityConfirm = () => {



	$('#price').toggleClass('active')

	$( "#insurance" ).prop( "checked", false );



	setTimeout(function() {

		var today = new Date();

		var dd = String(today.getDate()).padStart(2, '0');

		var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!

		var yyyy = today.getFullYear();

		today = mm + '/' + dd + '/' + yyyy;

		$("input[name='arrival_date']").val(today);

		country = $('option:selected', '#nationality').text()

		pass_type = $('option:selected', '#nationality').data('pass_type') //pass_type

		max_stay_days = $('option:selected', '#nationality').data('max_stay_days') //max_stay_days
		max_days_in = max_stay_days.split('/')[0]
		max_days = max_stay_days.split('/')[1]

		max_stay_days = max_days + ' days every ' + max_days_in + ' days'

		supporting_docs = $('option:selected', '#nationality').data('supporting_docs') //supporting_docs

		extra_note = $('option:selected', '#nationality').data('extra_note') //extra_note

		price = $('option:selected', '#nationality').data('price')
	
		$('#price').text(' ' + price).toggleClass('active')

		$('#nationality-confirm').text(country)

		$('#passport-confirm').text(pass_type.toUpperCase())

		$('#max-days-confirm').text(max_stay_days.toUpperCase())

		if ($('option:selected', '#nationality').data('extra_note').length == 0)

			extra_note = "-";

		$('#extra-notes-confirm').text(extra_note)

		if(supporting_docs == 0)

			supporting_docs = "No";

		else

			supporting_docs = "Yes";

		$('#supporting-docs-confirm').text(supporting_docs)

	}, 400);

}





var initializePassportConfirm = () => {



	passport = $('option:selected', '#passport').text()

	$('#passport-confirm').text(passport)

}



var findSelectedNationality = () => {

	return $('#nationality').find(":selected").val();

}

$(document).ready(function() {

	initializeNationalityConfirm();

	updatePriceWhenNationalitySelect();



	var today = new Date();

	var dd = String(today.getDate()).padStart(2, '0');

	var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!

	var yyyy = today.getFullYear();

	today = mm + '/' + dd + '/' + yyyy;

	var picker = new Lightpick({

		field: document.getElementById('datepicker'),

		format: 'MM/DD/YYYY',

		repick: true,

		minDate: today,

		setDate: today

	});

});   

</script>

<?php echo $footer; ?>