<?php echo $header; ?>

			<div class="header_modules"><?php echo $header_top; ?></div>
			
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
		<div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?></div>
		<?php echo $column_right; ?></div>
		<form action="<?php echo $applyform_url?>" method="POST">
		<div class="row">
			<div class="col col-md-6">
				

				<div class="form-group" style="max-width: 300px;  margin: auto; position: relative">
					<label for="">Nationality</label>
					<select id="nationality" class="form-control" name="nationality_id" id="">
						<?php foreach($nationalities as $nationality) {
							echo '<option data-price="'.$nationality['price'].'" value='.$nationality['product_id'].'>'.$nationality['name'].'</option>';
						}?>
					</select>
				</div>			
				<br>

				<div class="form-group" style="max-width: 300px;  margin: auto">
					<label for="">Passport Type</label>
					<select required class="form-control" name="passport_id" id="">
						<option>Ordinary</option>
					</select>
				</div>		
				<br>
				
				<div class="form-group" style="max-width: 300px;  margin: auto">

					<label for="">Arrival Date</label>
					<div class='input-group date' id='datetimepicker1'>
					<input required type='text' class="form-control" name="arrival_date" />
					<span class="input-group-addon">
					<span class="glyphicon glyphicon-calendar"></span>
					</span>
					</div>
				</div>	


			</div>

			<div class="col col-md-6" style="vertical-align: center; padding: 50px 20px; background-color: #f7f7f7">
				<p>Nationality: <span id="nationality-confirm" style="font-weight: 600; color: black"> </span></p>
				<p>Passport Type: <span style="font-weight: 600; color: black" id="passport-confirm"> </span></p>
				<h2 style="font-size: 40px; margin-top: 20px; position: relative;">Visa Fee:<span id="price" style="color: green; font-weight: 600; padding-left: 10px;"> 20$</span></h2>

			</div>

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

</style>
<div class="content_bottom">
			<?php echo $content_bottom; ?>
</div>
<script>


var updatePriceWhenNationalitySelect = () => {
	$('#nationality').on('change', function() {
		$('#price').toggleClass('active')

		setTimeout(function() {
			country = $('option:selected', '#nationality').text()
			price = $('option:selected', '#nationality').data('price')
			$('#price').text(' ' + price)
			$('#price').toggleClass('active')
			$('#nationality-confirm').text(country)
			$('#passport-confirm').text('Ordinary')
		}, 400);

	});
}

var initializeNationalityConfirm = () => {

	$('#price').toggleClass('active')

	setTimeout(function() {
		country = $('option:selected', '#nationality').text()
		price = $('option:selected', '#nationality').data('price')
		$('#price').text(' ' + price)
		$('#price').toggleClass('active')
		$('#nationality-confirm').text(country)
		$('#passport-confirm').text('Ordinary')
	}, 400);

}

var initializePassportConfirm = () => {

	passport = $('option:selected', '#passport').text()
	$('#passport-confirm').text(passport)
}

var initializePrice = () => {

	price = $('option:selected', '#passport').attr('price')
	$('#price').text(price)
}

var findSelectedNationality = () => {
	return $('#nationality').find(":selected").val();
}

$(document).ready(function() {
	initializeNationalityConfirm()
	updatePriceWhenNationalitySelect()

	$('#datetimepicker1').datetimepicker({
		format: "L",
		minDate: new Date(),
	})
});   
</script>
<?php echo $footer; ?>

