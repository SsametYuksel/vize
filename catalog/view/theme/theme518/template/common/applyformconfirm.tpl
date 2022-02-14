<?php echo $header; ?>
			<div class="header_modules"><?php echo $header_top; ?></div>

<style> 
	.col-form-label {
		line-height: 34px;
		font-size: 16px;
		font-weight: 500;
	}

	h5 {
		font-size: 22px;
		font-weight: 300;
		margin: 0;
		letter-spacing: 1.76px;
		text-transform: uppercase;
		color: #1d1f20;
	}	

	.text-dark {
		color: #1d1f20;
	}

	b {
		color: #4f4f4f;
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
            <form method="POST">
            <input type="hidden" name="type" value="confirmed"> </input> 
			<div class="text-center">
				<h2 class="text-dark">Please examine again and Confirm the data</h2>
				<p>If something is wrong return back and revise</p>
				<br>
			</div>
			<h5 class="text-dark">Service: </h5>
			<hr>
			<h4>Number of Entries: <b> <?php echo $number_of_entries ?> </b> </h4>
			<h4>Duration of Stay: <b> <?php echo $stay_duration ?> </b> </h4>
			<h4>Nationality: <b> <?php echo $nationality ?> </b> </h4>
			<h4>Passport: <b> <?php //echo $passport_id ?>Ordinary </b> </h4>
			<h4>Arrival Date: <b> <?php echo $arrival_date ?> </b> </h4>
			<h4>Insurance: <b><?php if($insurance){echo "Included";}else{echo "No";} ?> </b> </h4>
			<h4>Price: <b>$<?php echo (int)$price ?> </b> </h4>
			<br>
			<h5>Personal information: </h5>
			<hr>
			<?php if($product_type == 62 || $product_type == 63){ ?>
			<h4>Name: <b> <?php echo $name ?> </b> </h4>
			<h4>Surname: <b> <?php echo $surname ?> </b> </h4>
			<h4>Birth Date: <b> <?php echo $birthdate ?> </b> </h4>
			<h4>Birth Place: <b> <?php echo $birthplace ?> </b> </h4>
			<h4>Passport: <b> <?php echo $passport_number ?> </b> </h4>
			<h4>Email: <b> <?php echo $email ?> </b> </h4>
			<h4>Phone: <b> <?php echo $phone ?> </b> </h4>
			<h4>Residence Address: <b> <?php echo $residence_address ?> </b> </h4>
			<h4>Passport Issue Date: <b> <?php echo $passport_issue_date ?> </b> </h4>
			<h4>Passport Expiry Date: <b> <?php echo $passport_expiry_date ?> </b> </h4>
			<?php if($need_supporting_docs){ ?>
				<h4>Supporting Document Type: <b> <?php echo $supporting_document_type ?> </b> </h4>
				<h4>Supporting Document: <b> <?php echo $supporting_document ?> </b> </h4>
				<h4>Supporting Document Number: <b> <?php echo $supporting_document_number ?> </b> </h4>
				<h4>Supporting Document Expiry Date: <b> <?php echo $supporting_document_expiry_date ?> </b> </h4>
			<?php } ?>


			<input type="hidden" name="name" value="<?php echo $name ?>"> </input>
            <input type="hidden" name="surname" value="<?php echo $surname ?>"> </input> 
            <input type="hidden" name="birthdate" value="<?php echo $birthdate ?>"> </input> 
            <input type="hidden" name="birthplace" value="<?php echo $birthplace ?>"> </input> 
            <input type="hidden" name="passport_number" value="<?php echo $passport_number ?>"> </input>
            <input type="hidden" name="email" value="<?php echo $email ?>"> </input> 
            <input type="hidden" name="phone" value="<?php echo $phone ?>"> </input> 
            <input type="hidden" name="residence_address" value="<?php echo $residence_address ?>"> </input> 
            <input type="hidden" name="passport_issue_date" value="<?php echo $passport_issue_date ?>"> </input>
            <input type="hidden" name="passport_expiry_date" value="<?php echo $passport_expiry_date ?>"> </input>
			<?php if($need_supporting_docs){ ?>
            <input type="hidden" name="supporting_document_type" value="<?php echo $supporting_document_type ?>"> </input>
            <input type="hidden" name="supporting_document" value="<?php echo $supporting_document ?>"> </input>
            <input type="hidden" name="supporting_document_number" value="<?php echo $supporting_document_number ?>"> </input>
            <input type="hidden" name="supporting_document_expiry_date" value="<?php echo $supporting_document_expiry_date ?>"> </input>
			<?php } ?>
			<input type="hidden" name="arrival_date" value="<?php echo $arrival_date ?>"> </input>
            <?php }else{ ?>
				<h4>Photos: <b> <?php
										end($image_names);
										$last_key = key($image_names);
										foreach($image_names as $key => $photo){
												echo $photo;
												if($last_key != $key){
													echo ', ';
												}
											} ?> </b> </h4>
				<input type="hidden" name="name" value="<?php echo time().mt_rand(100,999); ?>">
				<input type="hidden" name="photo" value="<?php
										end($upload_image);
										$last_key = key($upload_image);
										foreach($upload_image as $key => $photo){
												echo $photo['code'];
												if($last_key != $key){
													echo ', ';
												}
											} ?>">
				<?php if($need_supporting_docs){ ?>
				<h4>Documents: <b> <?php
										end($docs_names);
										$last_key = key($docs_names);
										foreach($docs_names as $key => $docs){
											echo $docs;
											if($last_key != $key){
												echo ', ';
											}
										} ?> </b> </h4>
				<input type="hidden" name="supporting_document" value="<?php
										end($upload_docs);
										$last_key = key($upload_docs);
										foreach($upload_docs as $key => $docs){
												echo $docs['code'];
												if($last_key != $key){
													echo ', ';
												}
											} ?>">
				<?php } ?>
			<?php } ?>
            <div style="margin-top: 50px; display: flex; justify-content: space-between">
                <a href="<?php echo $return_back?>" style="font-size: 20px" class="btn btn-primary"><i class="fa fa-arrow-left" aria-hidden="true"></i> Return back </a>
                <button name="" id="" style="font-size: 20px" class="btn btn-primary" type="submit">Confirm <i class="fa fa-arrow-right" aria-hidden="true"></i></button>
            </div>

            
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

<?php echo $footer; ?>