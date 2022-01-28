<?php echo $header; ?>
			<div class="header_modules"><?php echo $header_top; ?></div>

<style> 
	.col-form-label {
		line-height: 34px;
		font-size: 16px;
		font-weight: 500;
	}

	.country-select.inside {width: 100%;}

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
						<input type="text" class="form-control" name="name">
					</div>
				</div>

				<!-- Surname -->
				<div class="form-group row">
					<label for="surname" class="col-sm-5 col-form-label">Surname</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="surname">
					</div>
				</div>

				<!-- Date of birth -->
				<div class="form-group row">
					<label for="birthdate" class="col-sm-5 col-form-label">Birth Date</label>
					<div class="col-sm-7">
						<div class="form-group">
							<div class='input-group date datetime'>
								<input type='text' name="birthdate" class="form-control" />
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
						<input name="birthplace" type="text" class="countryselect form-control">
					</div>
				</div>

				<!-- Passport number -->
				<div class="form-group row">
					<label for="passport" class="col-sm-5 col-form-label">Passport</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="passport">
					</div>
				</div>

				<!-- Email -->
				<div class="form-group row">
					<label for="email" class="col-sm-5 col-form-label">Email</label>
					<div class="col-sm-7">
						<input type="email" class="form-control" name="email">
					</div>
				</div>

				
				<!-- Phone -->
				<div class="form-group row">
					<label for="phone" class="col-sm-5 col-form-label">Phone</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="phone">
					</div>
				</div>
				
				<!-- Residence address -->
				<div class="form-group row">
					<label for="residence_address" class="col-sm-5 col-form-label">Residence Address</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="residence_address">
					</div>
				</div>
				
				<!-- Passport issue date -->
				<div class="form-group row">
					<label for="passport_issue_date" class="col-sm-5 col-form-label">Passport Issue Date</label>
					<div class="col-sm-7">
						<div class="form-group">
							<div class='input-group date datetime'>
								<input type='text' name="passport_issue_date" class="form-control" />
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
								<input type='text' name="passport_expiry_date" class="form-control" />
								<span class="input-group-addon">
								<span class="glyphicon glyphicon-calendar"></span>
								</span>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Supporting document type -->
				<div class="form-group row">
					<label for="supporting_document_type" class="col-sm-5 col-form-label">Supporting Document Type</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="supporting_document_type">
					</div>
				</div>
				
				<!-- Supporting document -->
				<div class="form-group row">
					<label for="supporting_document" class="col-sm-5 col-form-label">Supporting Document</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="supporting_document">
					</div>
				</div>
			
				
				<!-- Supporting document number-->
				<div class="form-group row">
					<label for="supporting_document_number" class="col-sm-5 col-form-label">Supporting Document Number</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="supporting_document_number">
					</div>
				</div>
				
				<!-- Supporting document expiry_date-->
				<div class="form-group row">
					<label for="supporting_document_expiry_date" class="col-sm-5 col-form-label">Supporting Document Expiry Date</label>
					<div class="col-sm-7">
						<div class="form-group">
							<div class='input-group date datetime'>
								<input type='text' name="supporting_document_expiry_date" class="form-control" />
								<span class="input-group-addon">
								<span class="glyphicon glyphicon-calendar"></span>
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="form-check text-center">
				  <label class="form-check-label">
					<input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" checked>
					I confirm all the information given above is correct

				  </label>
				</div>
			
				<div class="text-center" style="margin-top: 10px">
					<button name="" id="" style="font-size: 28px" class="btn btn-primary" type="submit">Save & Continue <i class="fa fa-arrow-right" aria-hidden="true"></i></button>
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

$(document).ready(function() {
	$('.datetime').datetimepicker({
		format: "L",
	});

	$(".countryselect").countrySelect();
});   
</script>
<?php echo $footer; ?>

