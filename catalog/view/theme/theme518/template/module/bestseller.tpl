<div class="box bestsellers">
    <div class="box-heading">
        <h3><?php echo $heading_title; ?></h3>
    </div>
    <div class="box-content">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout">
            <div class="product-thumb transition .equal-height-767-2">
                <div class="image">
                    <a href="<?php echo $product['href']; ?>"><img alt="<?php echo $product['name']; ?>"
                                                                   title="<?php echo $product['name']; ?>"
                                                                   class="img-responsive lazy"
                                                                   data-src="<?php echo $product['thumb']; ?>"
                                                                   src="image/catalog/preload.gif"/></a>

                </div>
                <div class="caption">
                    <div class="name">
                        <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                    </div>
                    <div class="description"><?php echo $product['description']; ?></div>

                    <?php if ($product['price']) { ?>
                    <div class="price">
                        <?php if (!$product['special']) { ?>
                        <?php echo $product['price']; ?>
                        <?php } else { ?>
                        <span class="price-new"><?php echo $product['special']; ?></span> <span
                            class="price-old"><?php echo $product['price']; ?></span>
                        <?php } ?>
                        <?php if ($product['tax']) { ?>
                        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                        <?php } ?>
                    </div>
                    <?php } ?>
                    <div class="cart-button">
                        <button class="btn btn-add" type="button" data-toggle="tooltip"
                                title="<?php echo $button_cart; ?>"
                                onclick="cart.add('<?php echo $product['product_id']; ?>');">
                            <span><?php echo $button_cart; ?></span>
                        </button>
                        <button class="btn btn-icon" type="button" data-toggle="tooltip"
                                title="<?php echo $button_wishlist; ?>"
                                onclick="wishlist.add('<?php echo $product['product_id']; ?>');">
                            <i class="fa fa-heart visible-sm"></i> <span class="hidden-sm"><?php echo $button_wishlist; ?></span></button>
                        <button class="btn btn-icon" type="button" data-toggle="tooltip"
                                title="<?php echo $button_compare; ?>"
                                onclick="compare.add('<?php echo $product['product_id']; ?>');">
                            <i class="fa fa-exchange visible-sm"></i> <span class="hidden-sm"><?php echo $button_compare; ?></span></button>
                    </div>
                    <?php if ($product['rating']) { ?>
                    <div class="rating">
                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                        <?php if ($product['rating'] < $i) { ?>
                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } else { ?>
                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                    class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } ?>
                        <?php } ?>
                    </div>
                    <?php } ?>

                </div>

                <div class="clear"></div>
            </div>
        </div>

        <?php } ?>

    </div>
</div>

