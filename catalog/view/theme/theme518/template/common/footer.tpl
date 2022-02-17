<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="footer_box">
                    <h5 data-equal-group="5">About Us</h5>
                    <ul class="list-unstyled">
                        <li>
                            <a href="<?php echo $about; ?>">About us</a>
                        </li>
                        <li>
                            <a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>
                        </li>
                    </ul>
                </div>
            </div>
               <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="footer_box">
                    <h5 data-equal-group="5">Apply Now</h5>
                    <ul class="list-unstyled">
                        <li>
                            <a href="<?php echo $apply_standard; ?>">Apply Standard</a>
                        </li>
                        <li>
                            <a href="<?php echo $apply_easy; ?>">Apply Easy</a>
                        </li>
                        <li>
                            <a href="<?php echo $apply_standard_quick; ?>">Apply Standard (Quick)</a>
                        </li>
                        <li>
                            <a href="<?php echo $apply_easy_quick; ?>">Apply Easy (Quick)</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <?php if ($informations) { ?>
                <div class="footer_box">
                    <h5 data-equal-group="5"><?php echo $text_information; ?></h5>
                    <ul class="list-unstyled">
                        <?php foreach ($informations as $information) { ?>
                        <li>
                            <a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
                        </li>
                        <?php } ?>
                    </ul>
                </div>
                <?php } ?>
            </div>
        
         
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="footer_box">
                    <h5 data-equal-group="5"><?php echo $title; ?></h5>
                    <a href="<?php echo $home; ?>"><img style="width: 50%" src="<?php echo $logo; ?>" title="<?php echo $name; ?>"
                                    alt="<?php echo $name; ?>" class="img-responsive"/></a>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <div class="copyright" style="text-align: center">
        <div class="container">
           Design And Created By 
           <a href="https://ferisoft.com">Ferisoft</a>
        </div>
    </div>

</footer>
<script src="catalog/view/theme/theme518/js/livesearch.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme518/js/script.js" type="text/javascript"></script>
</div>

</body></html>