<?php echo $header; ?>
			<div class="header_modules"><?php echo $header_top; ?></div>

<style> 
	.col-form-label {
		line-height: 34px;
		font-size: 16px;
		font-weight: 500;
	}

	.country-select.inside {width: 100%;}

	.displayNone{
		display: none;
	}

</style>
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
		<div class="container" style="max-width: 600px">
			<div class="text-center">
				<h2>Please fill the following form</h2>
				<p>Make sure to fill all input correct</p>
				<br>
			</div>
			<form method="POST">
				<input type="hidden" name="type" value="confirm">
				<!-- name -->
				<div class="form-group row">
					<label for="name" class="col-sm-5 col-form-label">Name</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="name" required>
					</div>
				</div>

				<!-- Surname -->
				<div class="form-group row">
					<label for="surname" class="col-sm-5 col-form-label">Surname</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="surname" required>
					</div>
				</div>

				<!-- Date of birth -->
				<div class="form-group row">
					<label for="birthdate" class="col-sm-5 col-form-label">Birth Date</label>
					<div class="col-sm-7">
						<div class="form-group">
							<div class='input-group date datetime'>
								<input type='text' name="birthdate" id="datepicker" class="form-control" required>
								<span class="input-group-addon">
								<span class="glyphicon glyphicon-calendar"></span>
								</span>
							</div>
						</div>
					</div>
				</div>

				<!-- Place of birth -->
				<div class="form-group row">
					<label for="birthplace" class="col-sm-5 col-form-label">Birth Place</label>
					<div class="col-sm-7">
						<input name="birthplace" type="text" class="form-control" required>
					</div>
				</div>

				<!-- Passport number -->
				<div class="form-group row">
					<label for="passport" class="col-sm-5 col-form-label">Passport</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="passport" required>
					</div>
				</div>

							<!-- Passport issue date -->
				<div class="form-group row">
					<label for="passport_issue_date" class="col-sm-5 col-form-label">Passport Issue Date</label>
					<div class="col-sm-7">
						<div class="form-group">
							<div class='input-group date datetime'>
								<input type='text' name="passport_issue_date" id="datepicker1" class="form-control" required>
								<span class="input-group-addon">
								<span class="glyphicon glyphicon-calendar"></span>
								</span>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Passport expiry date -->
				<div class="form-group row">
					<label for="passport_expiry_date" class="col-sm-5 col-form-label">Passport Expiry Date</label>
					<div class="col-sm-7">
						<div class="form-group">
							<div class='input-group date datetime'>
								<input type='text' name="passport_expiry_date" id="datepicker2" class="form-control" id="passport_expiry_date" required>
								<span class="input-group-addon">
								<span class="glyphicon glyphicon-calendar"></span>
								</span>
							</div>
							<small id="datepicker2_warning" style="font-size: 12px" class="text-danger displayNone"></small>
						</div>
					</div>
				</div>

				
				<?php if($supporting_document){ ?>
				<!-- Supporting document type -->
				<div class="form-group row">
					<label for="supporting_document_type" class="col-sm-5 col-form-label">Supporting Document Type</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="supporting_document_type" required>
					</div>
				</div>
				
				<!-- Supporting document -->
				<div class="form-group row">
					<label for="supporting_document" class="col-sm-5 col-form-label">Supporting Document</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="supporting_document" required>
					</div>
				</div>
			
				
				<!-- Supporting document number-->
				<div class="form-group row">
					<label for="supporting_document_number" class="col-sm-5 col-form-label">Supporting Document Number</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="supporting_document_number" required>
					</div>
				</div>
				
				<!-- Supporting document expiry_date-->
				<div class="form-group row">
					<label for="supporting_document_expiry_date" class="col-sm-5 col-form-label">Supporting Document Expiry Date</label>
					<div class="col-sm-7">
						<div class="form-group">
							<div class='input-group date datetime'>
								<input type='text' name="supporting_document_expiry_date" id="datepicker3" class="form-control" required>
								<span class="input-group-addon">
								<span class="glyphicon glyphicon-calendar"></span>
								</span>
							</div>
						</div>
					</div>
				</div>
				<?php } ?>
				<!-- Email -->
				<div class="form-group row">
					<label for="email" class="col-sm-5 col-form-label">Email</label>
					<div class="col-sm-7">
						<input type="email" class="form-control" name="email" required>
					</div>
				</div>

				<!-- Confirm Email -->
				<div class="form-group row">
					<label for="email" class="col-sm-5 col-form-label">Confirm Email</label>
					<div class="col-sm-7">
						<input type="email" class="form-control" name="confirm_email" required>
					</div>
				</div>

				
				<!-- Phone -->
				<div class="form-group row">
					<label for="phone" class="col-sm-5 col-form-label">Phone</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="phone" required>
					</div>
				</div>
				
				<!-- Residence address -->
				<div class="form-group row">
					<label for="residence_address" class="col-sm-5 col-form-label">Residence Address</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="residence_address" required>
					</div>
				</div>
				
	
				<div class="form-check text-center">
				  <label class="form-check-label">
					<input type="checkbox" class="form-check-input" name="" id="checkBox" required>
					I confirm all the information given above is correct
				  </label>
					<div class="form-group">
						<small id="checkBox_warning" style="font-size: 12px" class="text-danger displayNone"></small>
					</div>
				</div>
			
				<div class="text-center" style="margin-top: 10px">
					<button name="" id="next_part" style="font-size: 28px" class="btn btn-primary" type="submit">Save & Continue <i class="fa fa-arrow-right" aria-hidden="true"></i></button>
				</div>
			</form>
		</div>
	
	</div>
</div>
<style>
.picker-switch{
	display: none;
}
</style>
<div class="content_bottom">
			<?php echo $content_bottom; ?>
</div>
<script>
	$("#next_part").on("click", function (){
		var arrDate = new Date('<?php echo $arrival_date; ?>');
		var passport_expiry_date = new Date($("#datepicker2").val());

		if(arrDate < passport_expiry_date){
			if (((passport_expiry_date-arrDate) / (1000 * 3600 * 24)) < 90) {
				$('#datepicker2_warning').removeClass("displayNone").text("Please enter a passport with longer than 90 days duration before your arrival.");
			} else {
				if (!$('#datepicker2_warning').hasClass("displayNone")) {
					$('#datepicker2_warning').addClass("displayNone").text("");
				}
			}
		}else{
			$('#datepicker2_warning').removeClass("displayNone").text("Your arrival date can not be later than your passport expiry date.");
		}

		if($("#checkBox").prop('checked') == false){
			$('#checkBox_warning').removeClass("displayNone").text("Please confirm the information by clicking the checkbox.");
		}else{
			$('#checkBox_warning').addClass("displayNone").text("");
		}
	});

	$("#checkBox").change(function () {
		if($("#checkBox").prop('checked') == false){
			$('#checkBox_warning').removeClass("displayNone").text("Please confirm the information by clicking the checkbox.");
		}else{
			$('#checkBox_warning').addClass("displayNone").text("");
		}
	});

$(document).ready(function() {
	var picker = new Lightpick({
		field: document.getElementById('datepicker'),
		format: 'MM/DD/YYYY',
		repick: true
	});
	var picker1 = new Lightpick({
		field: document.getElementById('datepicker1'),
		format: 'MM/DD/YYYY',
		repick: true
	});
	var picker2 = new Lightpick({
		field: document.getElementById('datepicker2'),
		format: 'MM/DD/YYYY',
		repick: true,
		onClose: function (){
			var arrDate = new Date('<?php echo $arrival_date; ?>');
			var passport_expiry_date = new Date($("#datepicker2").val());

			if(arrDate < passport_expiry_date){
				console.log("ArrDate is greater or equal to P.expiry date");
				if (((passport_expiry_date-arrDate) / (1000 * 3600 * 24)) < 90) {
					console.log("Burası da çalışıyor.")
					$('#datepicker2_warning').removeClass("displayNone").text("Please enter a passport with longer than 90 days duration before your arrival.");
				} else {
					if (!$('#datepicker2_warning').hasClass("displayNone")) {
						$('#datepicker2_warning').addClass("displayNone").text("");
					}
				}
			}else{
				$('#datepicker2_warning').removeClass("displayNone").text("Your arrival date can not be later than your passport expiry date.");
			}
		}
	});

	<?php if($supporting_document){ ?>
	var picker3 = new Lightpick({
		field: document.getElementById('datepicker3'),
		format: 'MM/DD/YYYY',
		repick: true
	});
	<?php } ?>

	$(".countryselect").countrySelect();
});   
</script>
<?php echo $footer; ?>