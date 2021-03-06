<?php echo $header; ?>





<style>

	#top-part img {

		width: 100%;

	}



</style>





			<div class="header_modules"><?php echo $header_top; ?></div>



			<div id="top-part"><?php echo $content_top; ?></div>



<style>

	.col-form-label {

		line-height: 34px;

		font-size: 16px;

		font-weight: 500;

	}



	.text-dark {

		color: black;

	}



	.country-select.inside {width: 100%;}



	.displayNone{

		display: none;

	}



	#container {

		background-image: url('http://ferisoftdemo.com/vize/image/applyform1.jpg');

		background-size: cover;

	}

	

	#applyform {

		max-width: 600px;

		background-color: #ffffffe6;

		border-radius: 10px;
		box-shadow: 1px 1px 10px #f2f2f2;

		padding: 4%;

	}

</style>

<div id="container" style="padding: 60px 0">

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

		<div id="applyform" class="container" style="max-width: 600px">

			<div class="text-center">

				<h2 class="text-dark">Please fill the following form</h2>

				<p style="color:#3e3e3e;">Make sure to fill all input correct</p>

				<br>

			</div>

			<form method="POST" enctype="multipart/form-data">

				<input type="hidden" name="type" value="confirm">
				<input type="hidden" name="come-from-applyprice-form" value="1">



				<?php if($category == 64 || $category == 65){ ?>

						<!-- Photo 1 -->

						<div class="form-group row">

							<label for="image" class="col-sm-5 col-form-label">Upload Documents </label>

							<div class="col-sm-7">

								<input type="file" class="form-control" name="image[]" accept="image/*" multiple required>

							</div>

						</div>




				<div class="form-group form-inline">

					<label class="price-form" id="modal_link" style="margin-right: 5px"  data-toggle="modal" 

						   data-target="#exampleModal">Click here 

						for information regarding required documents</label>

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


						


				<?php }else{ ?>

	

				<!-- name -->

				<div class="form-group row">

					<label for="name" class="col-sm-5 col-form-label">Name</label>

					<div class="col-sm-7">

						<input type="text" class="form-control" name="name" value="name" <?php if(isset($name)){echo "value=$name";} ?> required>

					</div>

				</div>

				<!-- Surname -->

				<div class="form-group row">

					<label for="surname" class="col-sm-5 col-form-label">Surname</label>

					<div class="col-sm-7">

						<input type="text" class="form-control" name="surname" value="surname" <?php if(isset($surname)){echo "value=$surname";} ?> required>

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

						<input name="birthplace" value="Birth Place"  type="text" class="form-control" <?php if(isset($birthplace)){echo "value=$birthplace";} ?> required>

					</div>

				</div>



				<!-- Passport number -->

				<div class="form-group row">

					<label for="passport" class="col-sm-5 col-form-label">Passport Number</label>

					<div class="col-sm-7">

						<input type="text" value="123456789" class="form-control" name="passport_number" <?php if(isset($passport_number)){echo "value=$passport_number";} ?> required>

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





				<?php if($supporting_document_needed){ ?>

				<!-- Supporting document type -->

				<div class="form-group row">

					<label for="supporting_document_type" class="col-sm-5 col-form-label">Supporting Document Type</label>

					<div class="col-sm-7">

						<select class="form-control" name="supporting_document_type" id="supporting_document_type" required>

							<option disabled hidden selected value="">Please select a document type</option>

							<?php foreach($supporting_document_list as $document) {

								echo '<option data-id="'.$document['category_id'].'" value="'.$document['name'].'">'.$document['name'].'</option>';

							}?>

						</select>

					</div>

				</div>



				<!-- Supporting document -->

				<div class="form-group row">

					<label for="supporting_document" class="col-sm-5 col-form-label">Supporting Document</label>

					<div class="col-sm-7">

						<select class="form-control" name="supporting_document" id="docs" required>

							<option disabled hidden selected value="">Please select a document first</option>



						</select>

					</div>

				</div>





				<!-- Supporting document number-->

				<div class="form-group row">

					<label for="supporting_document_number" class="col-sm-5 col-form-label">Supporting Document Number</label>

					<div class="col-sm-7">

						<input type="text" class="form-control" name="supporting_document_number"  <?php if(isset($supporting_document_number)){echo "value=$supporting_document_number";} ?> required>

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

						<input type="email" value="test@gmail.com" class="form-control" name="email" <?php if(isset($email)){echo "value=$email";} ?> required>

					</div>

				</div>



				<!-- Confirm Email -->

				<div class="form-group row">

					<label for="email" class="col-sm-5 col-form-label">Confirm Email</label>

					<div class="col-sm-7">

						<input type="email" value="test@gmail.com" class="form-control" name="confirm_email" required>

					</div>

				</div>



				<!-- Phone -->

				<div class="form-group row">

					<label for="phone" class="col-sm-5 col-form-label">Phone</label>

					<div class="col-sm-7">

						<input type="text" value="123456789" class="form-control" name="phone" <?php if(isset($phone)){echo "value=$phone";} ?> required>

					</div>

				</div>



				<!-- Residence address -->

				<div class="form-group row">

					<label for="residence_address" class="col-sm-5 col-form-label">Residence Address</label>

					<div class="col-sm-7">

						<input type="text" value="address" class="form-control" name="residence_address" <?php if(isset($residence_address)){echo "value=$residence_address";} ?> required>

					</div>

				</div>

				<?php } ?>	



				<br>

				<br>

				<br>



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

					<button name="" id="next_part" style="font-size: 20px" class="btn btn-primary" type="submit">Save & Continue <i class="fa fa-arrow-right" aria-hidden="true"></i></button>

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



<?php if(!($category == 64 || $category == 65)){ ?>

<script>

var today = new Date();

	var picker3 = new Lightpick({

		field: document.getElementById('datepicker3'),

		format: 'MM/DD/YYYY',

		repick: true,

		minDate: today,

	});


	$('#supporting_document_type').on('change', function () {
		let parent_id = $('option:selected', this).data('id');
		$.ajax({

			url: 'index.php?route=common/applyform/getDocumentsBaseOnSupportingDocumentType',

			type: 'post',

			data:{

				parent_id: parent_id,

			},

			success: function(cats) {
				$('#docs').empty()
				cats.forEach(function(cat){
					$('#docs').append($('<option>', {
						value: cat.name,
						text: cat.name,
					}))
				})

			}

		});

	});





	$("#next_part").on("click", function (event){

		var arrDate = new Date('<?php echo $arrival_date; ?>');

		var passport_expiry_date = new Date($("#datepicker2").val());



		if(arrDate < passport_expiry_date){

			if (((passport_expiry_date-arrDate) / (1000 * 3600 * 24)) < 90) {

				$('#datepicker2_warning').removeClass("displayNone").text("Please enter a passport with longer than 90 days duration before your arrival.");

                event.preventDefault();

			} else {

				if (!$('#datepicker2_warning').hasClass("displayNone")) {

					$('#datepicker2_warning').addClass("displayNone").text("");

				}

			}

		}else{

			$('#datepicker2_warning').removeClass("displayNone").text("Your arrival date can not be later than your passport expiry date.");

            event.preventDefault();

		}



		if($("#checkBox").prop('checked') == false){

			$('#checkBox_warning').removeClass("displayNone").text("Please confirm the information by clicking the checkbox.");

            event.preventDefault();

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

</script>

<?php } else{ ?>

<script>



	$("#next_part").on("click", function (event){

		if($("#checkBox").prop('checked') == false){

			$('#checkBox_warning').removeClass("displayNone").text("Please confirm the information by clicking the checkbox.");

			event.preventDefault();

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

</script>

<?php } ?>



<script>

$(document).ready(function() {

	<?php if($category == 62 || $category == 63){ ?>

	var today = new Date();

	var dd = String(today.getDate()).padStart(2, '0');

	var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!

	var yyyy = today.getFullYear();

	today = mm + '/' + dd + '/' + yyyy;



	var picker = new Lightpick({

		field: document.getElementById('datepicker'),

		format: 'MM/DD/YYYY',

		repick: true,
		maxDate: today

	});

	<?php if(isset($birthdate)){echo '$("#datepicker").val("'.$birthdate.'");';} ?>



	var picker1 = new Lightpick({

		field: document.getElementById('datepicker1'),

		format: 'MM/DD/YYYY',

		repick: true,

		maxDate: today,

	});



	<?php if(isset($passport_issue_date)){echo '$("#datepicker1").val("'.$passport_issue_date.'");';} ?>



	var picker2 = new Lightpick({

		field: document.getElementById('datepicker2'),

		format: 'MM/DD/YYYY',

		repick: true,

		minDate: today,

		onClose: function (){

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

		}

	});

	<?php if(isset($passport_expiry_date)){ echo '$("#datepicker2").val("'.$passport_expiry_date.'");';} ?>



	<?php if(isset($supporting_document) && $supporting_document != 0 ){ ?>

        var picker3 = new Lightpick({

            field: document.getElementById('datepicker3'),

            format: 'MM/DD/YYYY',

            repick: true

        });

	<?php } ?>

	<?php if(isset($supporting_document_expiry_date)){echo '$("#datepicker3").val("'.$supporting_document_expiry_date

	.'");';} ?>



	<?php } ?>

	$(".countryselect").countrySelect();

});

     function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah')
                        .attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

</script>

<?php echo $footer; ?>