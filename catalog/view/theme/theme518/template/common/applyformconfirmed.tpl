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
        <div class="container text-center">
            <h2 class="text-success"> Your passport request is confirmed</h2>
            <h3> We will prepare the passport and will inform your through Email</h3>
            <h3> Thanks for your apply</h3>
        </div>
	
	</div>
</div>

<div class="content_bottom">
			<?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>

