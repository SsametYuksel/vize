-- --------------------------------------------------------

--
-- Database: `opencart`
--

-- --------------------------------------------------------

SET sql_mode = '';
--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(15, 'Slideshow', 1),
(17, 'banners-1', 1),
(18, 'banners-2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=203 ;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(190, 15, 'index.php?route=product/product&amp;product_id=43', 'catalog/slide-1.jpg', 1),
(196, 17, 'index.php?route=product/product&amp;product_id=43', 'catalog/banner-2.jpg', 1),
(195, 17, 'index.php?route=product/product&amp;product_id=49', 'catalog/banner-1.jpg', 0),
(191, 15, 'index.php?route=product/product&amp;product_id=35', 'catalog/slide-1.jpg', 2),
(192, 15, 'index.php?route=product/product&amp;product_id=30', 'catalog/slide-1.jpg', 3),
(202, 18, 'index.php?route=product/product&amp;product_id=49', 'catalog/banner-4.jpg', 0),
(201, 18, 'index.php?route=product/product&amp;product_id=45', 'catalog/banner-3.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `description`) VALUES
(99, 1, 9, 'slide-1', ''),
(100, 1, 9, 'slide-2', ''),
(101, 1, 9, 'slide-3', ''),
(99, 2, 9, 'slide-1', ''),
(100, 2, 9, 'slide-2', ''),
(101, 2, 9, 'slide-3', ''),
(99, 3, 9, 'slide-1', ''),
(100, 3, 9, 'slide-2', ''),
(101, 3, 9, 'slide-3', ''),
(202, 3, 18, 'banner-1', '&lt;h3&gt;family&lt;/h3&gt;\r\n&lt;h4  class=&quot;off1&quot;&gt;travel&lt;/h4&gt;'),
(202, 2, 18, 'banner-1', '&lt;h3&gt;family&lt;/h3&gt;\r\n&lt;h4  class=&quot;off1&quot;&gt;travel&lt;/h4&gt;'),
(202, 1, 18, 'banner-1', '&lt;h3&gt;family&lt;/h3&gt;\r\n&lt;h4 class=&quot;off1&quot;&gt;travel&lt;/h4&gt;'),
(201, 3, 18, 'banner-1', '&lt;h3&gt;honeymoon&lt;/h3&gt;\r\n&lt;h4&gt;packages&lt;/h4&gt;'),
(201, 2, 18, 'banner-1', '&lt;h3&gt;honeymoon&lt;/h3&gt;\r\n&lt;h4&gt;packages&lt;/h4&gt;'),
(195, 1, 17, 'banner-1', '&lt;h3&gt;summer&lt;/h3&gt;\r\n&lt;h4&gt;sale&lt;/h4&gt;'),
(195, 2, 17, 'banner-1', '&lt;h3&gt;summer&lt;/h3&gt;\r\n&lt;h4&gt;sale&lt;/h4&gt;'),
(195, 3, 17, 'banner-1', '&lt;h3&gt;summer&lt;/h3&gt;\r\n&lt;h4&gt;sale&lt;/h4&gt;'),
(196, 1, 17, 'banner-1', '&lt;h3&gt;special&lt;/h3&gt;\r\n&lt;h4 class=&quot;off1&quot;&gt;offers&lt;/h4&gt;'),
(196, 2, 17, 'banner-1', '&lt;h3&gt;special&lt;/h3&gt;\r\n&lt;h4 class=&quot;off1&quot;&gt;offers&lt;/h4&gt;'),
(196, 3, 17, 'banner-1', '&lt;h3&gt;special&lt;/h3&gt;\r\n&lt;h4 class=&quot;off1&quot;&gt;offers&lt;/h4&gt;'),
(201, 1, 18, 'banner-1', '&lt;h3&gt;honeymoon&lt;/h3&gt;\r\n&lt;h4&gt;packages&lt;/h4&gt;'),
(192, 3, 15, 'slide-3', '&lt;h2&gt;feugia alesuada&lt;/h2&gt;\r\n&lt;h4&gt;Aenean nec eros Vestibulum ante&lt;/h4&gt;'),
(192, 1, 15, 'slide-3', '&lt;h2&gt;feugia alesuada&lt;/h2&gt;\r\n&lt;h4&gt;Aenean nec eros Vestibulum ante&lt;/h4&gt;'),
(192, 2, 15, 'slide-3', '&lt;h2&gt;feugia alesuada&lt;/h2&gt;\r\n&lt;h4&gt;Aenean nec eros Vestibulum ante&lt;/h4&gt;'),
(191, 2, 15, 'slide-2', '&lt;h2&gt;tincidunt ac vive&lt;/h2&gt;\r\n&lt;h4&gt;Vestibulum libero nisl porta&lt;/h4&gt;\r\n'),
(191, 3, 15, 'slide-2', '&lt;h2&gt;tincidunt ac vive&lt;/h2&gt;\r\n&lt;h4&gt;Vestibulum libero nisl porta&lt;/h4&gt;\r\n'),
(190, 3, 15, 'slide-1', '&lt;h2&gt;festibulum&lt;/h2&gt;\r\n&lt;h4&gt; Lorem ipsum dolor sit amet conse&lt;/h4&gt;\r\n'),
(191, 1, 15, 'slide-2', '&lt;h2&gt;tincidunt ac vive&lt;/h2&gt;\r\n&lt;h4&gt;Vestibulum libero nisl porta&lt;/h4&gt;\r\n'),
(190, 1, 15, 'slide-1', '&lt;h2&gt;festibulum&lt;/h2&gt;\r\n&lt;h4&gt; Lorem ipsum dolor sit amet conse&lt;/h4&gt;\r\n'),
(190, 2, 15, 'slide-1', '&lt;h2&gt;festibulum&lt;/h2&gt;\r\n&lt;h4&gt; Lorem ipsum dolor sit amet conse&lt;/h4&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=439 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(426, 'module', 'carousel'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(432, 'module', 'tm_fbbox'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(428, 'module', 'parallax'),
(429, 'module', 'html'),
(430, 'module', 'tm_category'),
(433, 'module', 'bestseller'),
(434, 'module', 'latest'),
(435, 'module', 'special'),
(436, 'module', 'affiliate'),
(437, 'module', 'information'),
(438, 'module', 'tm_slideshow');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=616 ;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(604, 3, 'special.48', 'column_left', 3),
(602, 10, 'account', 'column_left', 3),
(612, 13, 'account', 'column_left', 2),
(615, 4, 'bestseller.43', 'column_left', 2),
(607, 8, 'bestseller.43', 'column_left', 2),
(599, 1, 'banner.55', 'content_top', 2),
(598, 1, 'featured.28', 'content_top', 3),
(603, 3, 'account', 'column_left', 2),
(597, 1, 'tm_slideshow.46', 'header_top', 1),
(596, 1, 'banner.53', 'content_top', 1),
(600, 6, 'account', 'column_left', 2),
(601, 10, 'affiliate', 'column_left', 2),
(605, 12, 'account', 'column_left', 2),
(606, 8, 'account', 'column_left', 1),
(614, 4, 'account', 'column_left', 1),
(610, 5, 'account', 'column_left', 2),
(613, 9, 'account', 'column_left', 2),
(611, 13, 'special.48', 'column_left', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=189 ;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(179, 6, 0, 'account/%'),
(180, 10, 0, 'affiliate/%'),
(181, 3, 0, 'product/category'),
(178, 1, 0, 'common/home'),
(168, 2, 0, 'product/product'),
(171, 11, 0, 'information/information'),
(172, 7, 0, 'checkout/%'),
(183, 8, 0, 'information/contact'),
(187, 9, 0, 'information/sitemap'),
(188, 4, 0, ''),
(185, 5, 0, 'product/manufacturer'),
(182, 12, 0, 'product/compare'),
(186, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
CREATE TABLE IF NOT EXISTS `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(54, 'Header Top Position on Home page', '7', 'viva', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>Header Top Position on Home page</name>\n	<version>1.0</version>\n	<author>viva</author>\n	<link>http://www.templatemonster.com</link>\n	<code>7</code>\n	<file path="catalog/controller/common/home.php">\n		<operation>\n			<search><![CDATA[\n			$data[''content_top''] = $this->load->controller(''common/content_top'');\n			]]></search>\n			<add position="after"><![CDATA[\n			$data[''header_top''] = $this->load->controller(''common/header_top'');\n			]]></add>\n		</operation>\n	</file>\n	<file path="catalog/view/theme/*/template/common/home.tpl">\n		<operation>\n			<search><![CDATA[\n			<?php echo $header; ?>\n			]]></search>\n			<add position="after"><![CDATA[\n			<div class="header_modules"><?php echo $header_top; ?></div>\n			]]></add>\n		</operation>\n	</file>\n	<file path="admin/view/template/design/layout_form.tpl">\n		<operation>\n			<search><![CDATA[\n			<?php if ($layout_module[''position''] == ''content_top'') { ?>\n			]]></search>\n			<add position="before"><![CDATA[\n			<?php if ($layout_module[''position''] == ''header_top'') { ?>\n					<option value="header_top" selected="selected"><?php echo $text_header_top; ?></option>\n					<?php } else { ?>\n					<option value="header_top"><?php echo $text_header_top; ?></option>\n					<?php } ?>\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			html += ''    <option value="content_top"><?php echo $text_content_top; ?></option>'';\n			]]></search>\n			<add position="after"><![CDATA[\n				html += ''    <option value="header_top"><?php echo $text_header_top; ?></option>'';\n			]]></add>\n		</operation>\n	</file>\n	<file path="admin/controller/design/layout.php">\n		<operation>\n			<search><![CDATA[\n			$data[''text_content_top''] = $this->language->get(''text_content_top'');\n			]]></search>\n			<add position="after"><![CDATA[\n			$data[''text_header_top''] = $this->language->get(''text_header_top'');\n			]]></add>\n		</operation>\n	</file>\n	<file path="admin/language/english/design/layout.php">\n		<operation>\n			<search><![CDATA[\n			$_[''text_content_top'']    = ''Content Top'';\n			]]></search>\n			<add position="after"><![CDATA[\n			$_[''text_header_top'']    = ''Header Top'';\n			]]></add>\n		</operation>\n	</file>\n</modification>', 1, '2015-02-11 14:11:09'),
(30, 'Description fo banners', '3', 'viva', '1.0', 'http://www.opencart.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n	<name>Description fo banners</name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.opencart.com</link>\r\n	<code>3</code>\r\n	<file path="admin/controller/design/banner.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[''button_remove''] = $this->language->get(''button_remove'');\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n\r\n			$data[''entry_description''] = $this->language->get(''entry_description'');\r\n			\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[''banner_images''][] = array(\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n			''description''			   => $banner_image[''description''],\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="admin/model/design/banner.php">\r\n		<operation>\r\n			<search><![CDATA[ $this->db->escape($banner_image_description[''title'']) . "''"); ]]>\r\n			</search>\r\n			<add position="replace"><![CDATA[ $this->db->escape($banner_image_description[''title'']) . "'', description = ''" .  $this->db->escape($banner_image_description[''description'']) . "''"); ]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$banner_image_description_data[$banner_image_description[''language_id'']] = array(''title'' => $banner_image_description[''title'']);\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n			$banner_image_description_desc[$banner_image_description[''language_id'']] = array ( ''description'' => $banner_image_description[''description''] );\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			''banner_image_description'' => $banner_image_description_data,\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n			''description''              => $banner_image_description_desc,\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="admin/language/*/design/banner.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[''entry_sort_order'']   = ''Sort Order'';\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n			$_[''entry_description'']       = ''Description:'';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="admin/view/template/design/banner_form.tpl">\r\n		<operation>\r\n			<search><![CDATA[\r\n			<td class="text-left"><?php echo $entry_title; ?></td>\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n			<td class="text-left"><?php echo $entry_description; ?></td>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			<td class="text-left"><input type="text" name="banner_image[<?php echo $image_row; ?>][link]" value="<?php echo $banner_image[''link'']; ?>" placeholder="<?php echo $entry_link; ?>" class="form-control" /></td>\r\n			]]></search>\r\n			<add position="before"><![CDATA[\r\n			<td>\r\n				<?php foreach ($languages as $language) { ?>\r\n				<textarea style="width:300px; height:150px;" name="banner_image[<?php echo $image_row; ?>][banner_image_description][<?php echo $language[''language_id'']; ?>][description]" id="description"><?php echo isset($banner_image[''description''][$language[''language_id'']]) ? $banner_image[''description''][$language[''language_id'']][''description''] : ''''; ?></textarea>\r\n				<img src="view/image/flags/<?php echo $language[''image'']; ?>" title="<?php echo $language[''name'']; ?>" /><br />\r\n				<?php } ?>\r\n				</td>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			html += ''  <td class="text-left"><input type="text" name="banner_image['' + image_row + ''][link]" value="" placeholder="<?php echo $entry_link; ?>" class="form-control" /></td>'';\r\n			]]></search>\r\n			<add position="before"><![CDATA[\r\n	 html += ''<td class="text-left">'';\r\n	<?php foreach ($languages as $language) { ?>\r\n	html += ''<textarea style="width:300px; height:150px;" name="banner_image['' + image_row + ''][banner_image_description][<?php echo $language[''language_id'']; ?>][description]" id="description"></textarea><br />'';\r\n	<?php } ?>\r\n	html += ''</td>'';\r\n	]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/controller/module/banner.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			''title'' => $result[''title''],\r\n			]]></search>\r\n			<add position="before"><![CDATA[\r\n			''description'' => html_entity_decode($result[''description'']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/controller/module/tm_slideshow.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			''title'' => $result[''title''],\r\n			]]></search>\r\n			<add position="before"><![CDATA[\r\n			''description'' => html_entity_decode($result[''description'']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/controller/module/parallax.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			''title'' => $result[''title''],\r\n			]]></search>\r\n			<add position="before"><![CDATA[\r\n			''description'' => html_entity_decode($result[''description'']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n</modification>', 1, '2014-12-08 12:32:07'),
(23, 'TM Featured ', '4', 'viva', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n	<name>TM Featured </name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>4</code>\r\n	<file path="catalog/controller/module/featured.php">\r\n		<operation>\r\n			<search><![CDATA[ \r\n				''rating''      => $rating,\r\n				]]></search>\r\n			<add position="after"><![CDATA[ \r\n					''reviews''    => $review_total,\r\n					''author''     => $product_info[''manufacturer''],\r\n					''description1'' => html_entity_decode($product_info[''description''], ENT_QUOTES, ''UTF-8''),\r\n					''manufacturers'' =>$data[''manufacturers''] = $this->url->link(''product/manufacturer/info'', ''manufacturer_id='' . $product_info[''manufacturer_id'']),\r\n					''model'' => $product_info[''model''],\r\n					''text_availability'' => $product_info[''quantity''],\r\n					''allow'' => $product_info[''minimum''],\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$this->load->model(''tool/image'');\r\n				]]></search>\r\n			<add position="after"><![CDATA[ \r\n						$this->load->model(''catalog/manufacturer'');\r\n						$this->language->load(''product/product'');\r\n						$this->language->load(''product/category'');\r\n						$this->load->model(''catalog/review'');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[''button_cart''] = $this->language->get(''button_cart'');\r\n				]]></search>\r\n			<add position="after"><![CDATA[ \r\n				$data[''text_quick''] = $this->language->get(''text_quick'');\r\n				$data[''text_price''] = $this->language->get(''text_price'');\r\n				$data[''button_wishlist''] = $this->language->get(''button_wishlist'');\r\n				$data[''button_compare''] = $this->language->get(''button_compare'');	\r\n				$data[''button_details''] = $this->language->get(''button_details'');\r\n				$data[''text_manufacturer''] = $this->language->get(''text_manufacturer'');\r\n				$data[''text_category''] = $this->language->get(''text_category'');\r\n				$data[''text_model''] = $this->language->get(''text_model'');\r\n				$data[''text_availability''] = $this->language->get(''text_availability'');\r\n				$data[''text_instock''] = $this->language->get(''text_instock'');\r\n				$data[''text_outstock''] = $this->language->get(''text_outstock'');\r\n				$data[''reviews''] = $this->language->get(''reviews'');\r\n				$data[''text_price''] = $this->language->get(''text_price'');\r\n				$data[''text_product''] = $this->language->get(''text_product'');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $product_info = $this->model_catalog_product->getProduct($product_id); ]]></search>\r\n			<add position="after"><![CDATA[ \r\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($product_info[''product_id'']);\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/language/*/module/featured.php">\r\n		<operation>\r\n			<search><![CDATA[ $_[''heading_title''] ]]></search>\r\n			<add position="before"><![CDATA[		\r\n				$_[''text_category''] = ''Categories'';\r\n				$_[''text_manufacturer''] = ''Brand:'';\r\n				$_[''text_model''] = ''Model:'';\r\n				$_[''text_availability''] = ''Availability:'';\r\n				$_[''text_instock''] = ''In Stock'';\r\n				$_[''text_outstock''] = ''Out Stock'';\r\n				$_[''text_price'']        = ''Price: '';\r\n				$_[''text_tax'']          = ''Ex Tax:'';\r\n				$_[''text_quick'']          = ''Quick View''; \r\n				$_[''button_details'']          = ''Details'';\r\n				$_[''reviews'']          = ''reviews '';\r\n				$_[''text_product'']          = ''Product {current} of {total} '';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path="catalog/language/de-DE/module/featured.php">\r\n		<operation>\r\n			<search><![CDATA[ $_[''text_tax'']		= ''ohne Steuer''; ]]></search>\r\n			<add position="after"><![CDATA[		\r\n				$_[''button_details'']          = ''Details'';\r\n				$_[''text_category''] = ''Kategorie:'';\r\n				$_[''text_manufacturer''] = ''Marke:'';\r\n				$_[''text_model''] = ''Model:'';\r\n				$_[''text_availability''] = ''Verfugbarkeit:'';\r\n				$_[''text_instock''] = ''Vorratig'';\r\n				$_[''text_outstock''] = ''Heraus '';\r\n				$_[''text_price'']        = ''Preis: '';\r\n				$_[''text_tax'']          = ''Preis ohne Steuer:'';\r\n				$_[''text_quick'']          = ''Quick View''; \r\n				$_[''text_product'']          = ''Artikel {current} von {total} '';\r\n				$_[''text_sale'']      = ''Verkauf'';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path="catalog/language/russian/module/featured.php">\r\n		<operation>\r\n			<search><![CDATA[ $_[''text_tax'']]]></search>\r\n			<add position="before"><![CDATA[		\r\n				$_[''button_details'']          = ''Подробнее'';\r\n				$_[''text_category''] = ''Категория'';\r\n				$_[''text_manufacturer''] = ''Брєнд'';\r\n				$_[''text_model''] = ''Модель:'';\r\n				$_[''text_availability''] = ''Наличие:'';\r\n				$_[''text_instock''] = ''Доступно'';\r\n				$_[''text_outstock''] = ''нет в наличии '';\r\n				$_[''text_price'']        = ''Цена: '';\r\n				$_[''text_tax'']          = ''налог:'';\r\n				$_[''text_quick'']          = ''Быстрый просмотр''; \r\n				$_[''text_product'']          = ''Product {current} of {total} '';\r\n				$_[''text_sale'']      = ''Скидка'';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>', 1, '2014-12-02 15:00:20'),
(46, 'TM Header', '6', 'viva', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TM Header</name>\n	<version>1.0</version>\n	<author>viva</author>\n	<link>http://www.templatemonster.com</link>\n	<author>Tm</author>\n	<code>6</code>\n	<file path="catalog/controller/common/header.php">\n		<operation>\n			<search><![CDATA[ $data[''name''] = $this->config->get(''config_name''); ]]></search>\n			<add position="after"><![CDATA[ \n			$data[''maintenance''] = $this->config->get(''config_maintenance'');\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ $data[''text_all''] = $this->language->get(''text_all''); ]]></search>\n			<add position="before"><![CDATA[ \n			\n			$data[''text_shopcart''] = $this->language->get(''text_shopcart'');\n			$data[''text_information''] = $this->language->get(''text_information'');\n			$data[''text_service''] = $this->language->get(''text_service'');\n			$data[''text_extra''] = $this->language->get(''text_extra'');\n			$data[''text_account''] = $this->language->get(''text_account'');\n			$data[''text_contact''] = $this->language->get(''text_contact'');\n			$data[''text_return''] = $this->language->get(''text_return'');\n			$data[''text_sitemap''] = $this->language->get(''text_sitemap'');\n			$data[''text_manufacturer''] = $this->language->get(''text_manufacturer'');\n			$data[''text_voucher''] = $this->language->get(''text_voucher'');\n			$data[''text_affiliate''] = $this->language->get(''text_affiliate'');\n			$data[''text_special''] = $this->language->get(''text_special'');\n			$data[''text_account''] = $this->language->get(''text_account'');\n			$data[''text_order''] = $this->language->get(''text_order'');\n			$data[''text_newsletter''] = $this->language->get(''text_newsletter'');\n			$data[''text_category''] = $this->language->get(''text_category'');\n			\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ $data[''telephone''] = $this->config->get(''config_telephone''); ]]></search>\n			<add position="after"><![CDATA[ \n			$data[''sitemap''] = $this->url->link(''information/sitemap'');\n			$data[''special''] = $this->url->link(''product/special'');\n			$data[''contact''] = $this->url->link(''information/contact'');\n			$data[''contact''] = $this->url->link(''information/contact'');\n			$data[''return''] = $this->url->link(''account/return/insert'', '''', ''SSL'');\n			$data[''sitemap''] = $this->url->link(''information/sitemap'');\n			$data[''manufacturer''] = $this->url->link(''product/manufacturer'', '''', ''SSL'');\n			$data[''voucher''] = $this->url->link(''account/voucher'', '''', ''SSL'');\n			$data[''affiliate''] = $this->url->link(''affiliate/account'', '''', ''SSL'');\n			$data[''account''] = $this->url->link(''account/account'', '''', ''SSL'');\n			$data[''order''] = $this->url->link(''account/order'', '''', ''SSL'');\n			$data[''newsletter''] = $this->url->link(''account/newsletter'', '''', ''SSL'');		\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ $this->load->language(''common/header''); ]]></search>\n			<add position="before"><![CDATA[ \n			if (($data[''maintenance'']==0)) {\n			$data[''informations''] = array();\n			foreach ($this->model_catalog_information->getInformations() as $result) {\n				if ($result[''bottom'']) {\n					$data[''informations''][] = array(\n						''title'' => $result[''title''],\n						''href''  => $this->url->link(''information/information'', ''information_id='' . $result[''information_id''])\n					);\n				}\n			}	\n		}\n			]]></add>\n		</operation>\n	</file>\n	<file path="catalog/language/english/common/header.php">\n		<operation>\n			<search><![CDATA[ $_[''text_checkout'']       = ''Checkout''; ]]></search>\n			<add position="after"><![CDATA[ \n					$_[''text_information'']  = ''Information'';\n					$_[''text_service'']      = ''Customer Service'';\n					$_[''text_extra'']        = ''Extras'';\n					$_[''text_contact'']      = ''Contact Us'';\n					$_[''text_return'']       = ''Returns'';\n					$_[''text_sitemap'']      = ''Site Map'';\n					$_[''text_manufacturer''] = ''Brands'';\n					$_[''text_voucher'']      = ''Gift Vouchers'';\n					$_[''text_affiliate'']    = ''Affiliates'';\n					$_[''text_special'']      = ''Specials'';\n					$_[''text_account'']      = ''My Account'';\n					$_[''text_order'']        = ''Order History'';\n					$_[''text_newsletter'']   = ''Newsletter'';\n					$_[''text_category'']   = ''Categories'';\n					$_[''text_latest_added'']   = ''Latest added product(s):'';\n				]]></add>\n		</operation>\n	</file>\n\n</modification>', 1, '2014-12-18 13:45:00'),
(47, 'Footer Position', '13', 'viva', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>Footer Position</name>\n	<version>1.0</version>\n	<author>viva</author>\n	<link>http://www.templatemonster.com</link>\n	<code>13</code>\n	<file path="catalog/controller/common/footer.php">\n		<operation>\n			<search><![CDATA[ $data[''text_information''] = $this->language->get(''text_information''); ]]></search>\n			<add position="before"><![CDATA[\n			$data[''maintenance''] = $this->config->get(''config_maintenance'');\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			$data[''newsletter''] = $this->url->link(''account/newsletter'', '''', ''SSL'');\n			]]></search>\n			<add position="after"><![CDATA[\n			if (($data[''maintenance'']==0)) {\n			$data[''footer_top''] = $this->load->controller(''common/footer_top'');\n			}\n			]]></add>\n		</operation>\n	</file>\n	<file path="catalog/view/theme/*/template/common/footer.tpl">\n		<operation>\n			<search><![CDATA[\n			<div class="col-sm-4">\n			]]></search>\n			<add position="after"><![CDATA[\n			<?php echo $footer_top; ?>\n			]]></add>\n		</operation>\n	</file>\n	<file path="admin/view/template/design/layout_form.tpl">\n		<operation>\n			<search><![CDATA[\n			<?php if ($layout_module[''position''] == ''content_top'') { ?>\n			]]></search>\n			<add position="before"><![CDATA[\n			<?php if ($layout_module[''position''] == ''footer_top'') { ?>\n					<option value="footer_top" selected="selected"><?php echo $text_footer_top; ?></option>\n					<?php } else { ?>\n					<option value="footer_top"><?php echo $text_footer_top; ?></option>\n					<?php } ?>\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			html += ''    <option value="content_top"><?php echo $text_content_top; ?></option>'';\n			]]></search>\n			<add position="after"><![CDATA[\n				html += ''    <option value="footer_top"><?php echo $text_footer_top; ?></option>'';\n			]]></add>\n		</operation>\n	</file>\n	<file path="admin/controller/design/layout.php">\n		<operation>\n			<search><![CDATA[\n			$data[''text_content_top''] = $this->language->get(''text_content_top'');\n			]]></search>\n			<add position="after"><![CDATA[\n			$data[''text_footer_top''] = $this->language->get(''text_footer_top'');\n			]]></add>\n		</operation>\n	</file>\n	<file path="admin/language/english/design/layout.php">\n		<operation>\n			<search><![CDATA[\n			$_[''text_content_top'']    = ''Content Top'';\n			]]></search>\n			<add position="after"><![CDATA[\n			$_[''text_footer_top'']    = ''Footer'';\n			]]></add>\n		</operation>\n	</file>\n</modification>', 1, '2014-12-18 13:45:03'),
(53, 'TM Footer', '5', 'viva', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TM Footer</name>\n	<version>1.0</version>\n	<author>viva</author>\n	<link>http://www.templatemonster.com</link>\n	<code>5</code>\n	<file path="catalog/controller/common/footer.php">\n		<operation error="skip">\n			<search><![CDATA[ $data[''text_newsletter''] = $this->language->get(''text_newsletter''); ]]></search>\n			<add position="after"><![CDATA[ \n			$data[''text_account''] = $this->language->get(''text_account'');\n			$data[''text_follow''] = $this->language->get(''text_follow'');\n			$data[''text_support''] = $this->language->get(''text_support'');\n			$data[''text_twi''] = $this->language->get(''text_twi'');\n			$data[''text_fb''] = $this->language->get(''text_fb'');\n			$data[''text_rss''] = $this->language->get(''text_rss'');\n			$data[''text_yt''] = $this->language->get(''text_yt'');\n			]]></add>\n		</operation>\n		<operation error="skip">\n			<search><![CDATA[ $data[''newsletter''] = $this->url->link(''account/newsletter'', '''', ''SSL''); ]]></search>\n			<add position="after"><![CDATA[ \n			$data[''address''] = nl2br($this->config->get(''config_address''));\n			$data[''telephone''] = $this->config->get(''config_telephone'');\n			$data[''fax''] = $this->config->get(''config_fax'');\n			\n			]]></add>\n		</operation>\n	</file>\n	<file path="catalog/language/*/common/footer.php">\n		<operation error="skip">\n			<search><![CDATA[ $_[''text_information''] ]]></search>\n			<add position="before"><![CDATA[ \n				$_[''text_follow'']   = ''Follow Us'';\n				$_[''text_support'']   = ''Online support'';\n				$_[''text_fb'']   = ''Facebook'';\n				$_[''text_twi'']   = ''Twitter'';\n				$_[''text_rss'']   = ''RSS'';\n				$_[''text_yt'']   = ''YouTube'';\n				]]></add>\n		</operation>\n	</file>\n</modification>', 1, '2015-02-07 11:16:47'),
(27, 'Top Menu All Levels', '8', 'viva', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n	<name>Top Menu All Levels</name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>8</code>\r\n	<file path="catalog/controller/common/header.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[''language''] = $this->load->controller(''common/language'');\r\n			]]></search>\r\n			<add position="before"><![CDATA[\r\n			$this->load->model(''design/topmenu'');\r\n			$data[''categories''] = $this->model_design_topmenu->getMenu();\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2014-12-02 15:00:36'),
(28, 'TM Product Category image', '9', 'viva', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n	<name>TM Product Category image</name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>9</code>\r\n	<file path="catalog/controller/product/category.php">\r\n		<operation error="skip">\r\n			<search><![CDATA[  ''href''  => $this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''_'' . $result[''category_id''] . $url)]]></search>\r\n			<add position="after"><![CDATA[,''thumb'' => $image]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[  $data[''categories''][] = array(]]></search>\r\n			<add position="before"><![CDATA[  $image = $this->model_tool_image->resize($result[''image''], $this->config->get(''config_image_category_width''), $this->config->get(''config_image_category_height''));   ]]></add>\r\n		</operation>\r\n		\r\n		\r\n	</file>\r\n</modification>', 1, '2014-12-02 15:00:39'),
(29, 'TM Live search', '10', 'viva', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n	<name>TM Live search</name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>10</code>\r\n	<file path="catalog/controller/product/search.php">\r\n		<operation error="skip">\r\n			<search><![CDATA[ class ControllerProductSearch extends Controller { ]]></search>\r\n			<add  position="after"><![CDATA[\r\n				public function ajax()\r\n	{\r\n		// Contains results\r\n		$data = array();\r\n		if( isset($this->request->get[''keyword'']) ) {\r\n			// Parse all keywords to lowercase\r\n			$keywords = strtolower( $this->request->get[''keyword''] );\r\n			// Perform search only if we have some keywords\r\n			if( strlen($keywords) >= 3 ) {\r\n				$parts = explode( '' '', $keywords );\r\n				$add = '''';\r\n				// Generating search\r\n				foreach( $parts as $part ) {\r\n					$add .= '' AND (LOWER(pd.name) LIKE "%'' . $this->db->escape($part) . ''%"'';\r\n					$add .= '' OR LOWER(p.model) LIKE "%'' . $this->db->escape($part) . ''%")'';\r\n				}\r\n				$add = substr( $add, 4 );\r\n				$sql  = ''SELECT pd.product_id, pd.name, p.model, p.image FROM '' . DB_PREFIX . ''product_description AS pd '';\r\n				$sql .= ''LEFT JOIN '' . DB_PREFIX . ''product AS p ON p.product_id = pd.product_id '';\r\n				$sql .= ''LEFT JOIN '' . DB_PREFIX . ''product_to_store AS p2s ON p2s.product_id = pd.product_id '';\r\n				$sql .= ''WHERE '' . $add . '' AND p.status = 1 '';\r\n				$sql .= ''AND pd.language_id = '' . (int)$this->config->get(''config_language_id'');\r\n				$sql .= '' AND p2s.store_id =  '' . (int)$this->config->get(''config_store_id''); \r\n				$sql .= '' ORDER BY p.sort_order ASC, LOWER(pd.name) ASC, LOWER(p.model) ASC'';\r\n				$sql .= '' LIMIT 15'';\r\n				$res = $this->db->query( $sql );\r\n				if( $res ) {\r\n					$data = ( isset($res->rows) ) ? $res->rows : $res->row;\r\n					$this->load->model(''tool/image''); \r\n					// For the seo url stuff\r\n					$basehref = ''product/product&keyword='' . $this->request->get[''keyword''] . ''&product_id='';\r\n					foreach( $data as $key => $values ) {\r\n						if ( $values[''image''] ) {\r\n							$image = $this->model_tool_image->resize($values[''image''], $this->config->get(''config_image_cart_width''), $this->config->get(''config_image_cart_height''));\r\n						}\r\n						else {\r\n							$image = $this->model_tool_image->resize(''no_image.jpg'', $this->config->get(''config_image_cart_width''), $this->config->get(''config_image_cart_height''));\r\n						}\r\n						$data[$key] = array(\r\n							''name'' => htmlspecialchars_decode($values[''name''] . '' ('' . $values[''model''] . '')'', ENT_QUOTES),\r\n							''href'' => $this->url->link($basehref . $values[''product_id'']),\r\n							''image'' =>$image\r\n						);\r\n					}\r\n				}\r\n			}\r\n		}\r\n		echo json_encode( $data );\r\n	}\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2014-12-02 15:00:42'),
(36, 'Text sale', '1', 'viva', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n	<name>Text sale</name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>1</code>\r\n	<file path="catalog/controller/module/featured.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[''button_compare''] = $this->language->get(''button_compare'');\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n			$data[''text_sale''] = $this->language->get(''text_sale'');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/controller/module/special.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[''button_compare''] = $this->language->get(''button_compare'');\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n			$data[''text_sale''] = $this->language->get(''text_sale'');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/controller/module/latest.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[''button_compare''] = $this->language->get(''button_compare'');\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n			$data[''text_new''] = $this->language->get(''text_new'');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/language/english/module/featured.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[''text_tax'']      = ''Ex Tax:'';\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n			$_[''text_sale'']      = ''Sale'';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/language/english/module/special.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[''text_tax'']      = ''Ex Tax:'';\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n			$_[''text_sale'']      = ''Sale'';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/language/english/module/latest.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[''text_tax'']      = ''Ex Tax:'';\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n			$_[''text_new'']      = ''New'';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/language/de-DE/module/featured.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[''text_tax'']\r\n			]]></search>\r\n			<add position="before"><![CDATA[\r\n			$_[''text_sale'']      = ''Verkauf'';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/language/de-DE/module/special.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[''text_tax'']\r\n			]]></search>\r\n			<add position="before"><![CDATA[\r\n			$_[''text_sale'']      = ''Verkauf'';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/language/de-DE/module/latest.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[''text_tax'']\r\n			]]></search>\r\n			<add position="before"><![CDATA[\r\n			$_[''text_new'']      = ''Neue '';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/language/russian/module/featured.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[''text_tax'']\r\n			]]></search>\r\n			<add position="before"><![CDATA[\r\n			$_[''text_sale'']      = ''Скидка'';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/language/russian/module/special.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[''text_tax'']\r\n			]]></search>\r\n			<add position="before"><![CDATA[\r\n			$_[''text_sale'']      = ''Скидка'';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/language/russian/module/latest.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[''text_tax'']\r\n			]]></search>\r\n			<add position="before"><![CDATA[\r\n			$_[''text_new'']      = ''Новый '';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2014-12-10 10:36:57'),
(39, 'TM latest ', '15', 'viva', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n	<name>TM latest </name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>15</code>\r\n	<file path="catalog/controller/module/latest.php">\r\n		<operation>\r\n			<search><![CDATA[ \r\n				''rating''      => $rating,\r\n				]]></search>\r\n			<add position="after"><![CDATA[ \r\n					''reviews''    => $review_total,\r\n					''author''     => $result[''manufacturer''],\r\n					''description1'' => html_entity_decode($result[''description''], ENT_QUOTES, ''UTF-8''),\r\n					''manufacturers'' =>$data[''manufacturers''] = $this->url->link(''product/manufacturer/info'', ''manufacturer_id='' . $result[''manufacturer_id'']),\r\n					''model'' => $result[''model''],\r\n					''text_availability'' => $result[''quantity''],\r\n					''allow'' => $result[''minimum''],\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$this->load->model(''tool/image'');\r\n				]]></search>\r\n			<add position="after"><![CDATA[ \r\n						$this->load->model(''catalog/manufacturer'');\r\n						$this->language->load(''product/product'');\r\n						$this->language->load(''product/category'');\r\n						$this->load->model(''catalog/review'');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[''button_cart''] = $this->language->get(''button_cart'');\r\n				]]></search>\r\n			<add position="after"><![CDATA[ \r\n				$data[''text_quick''] = $this->language->get(''text_quick'');\r\n				$data[''text_price''] = $this->language->get(''text_price'');\r\n				$data[''button_wishlist''] = $this->language->get(''button_wishlist'');\r\n				$data[''button_compare''] = $this->language->get(''button_compare'');	\r\n				$data[''button_details''] = $this->language->get(''button_details'');\r\n				$data[''text_manufacturer''] = $this->language->get(''text_manufacturer'');\r\n				$data[''text_category''] = $this->language->get(''text_category'');\r\n				$data[''text_model''] = $this->language->get(''text_model'');\r\n				$data[''text_availability''] = $this->language->get(''text_availability'');\r\n				$data[''text_instock''] = $this->language->get(''text_instock'');\r\n				$data[''text_outstock''] = $this->language->get(''text_outstock'');\r\n				$data[''reviews''] = $this->language->get(''reviews'');\r\n				$data[''text_price''] = $this->language->get(''text_price'');\r\n				$data[''text_product''] = $this->language->get(''text_product'');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ foreach ($results as $result) { ]]></search>\r\n			<add position="after"><![CDATA[ \r\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($result[''product_id'']);\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/language/*/module/latest.php">\r\n		<operation>\r\n			<search><![CDATA[ $_[''heading_title''] ]]></search>\r\n			<add position="before"><![CDATA[		\r\n				$_[''text_category''] = ''Categories'';\r\n				$_[''text_manufacturer''] = ''Brand:'';\r\n				$_[''text_model''] = ''Model:'';\r\n				$_[''text_availability''] = ''Availability:'';\r\n				$_[''text_instock''] = ''In Stock'';\r\n				$_[''text_outstock''] = ''Out Stock'';\r\n				$_[''text_price'']        = ''Price: '';\r\n				$_[''text_tax'']          = ''Ex Tax:'';\r\n				$_[''text_quick'']          = ''Quick View''; \r\n				$_[''button_details'']          = ''Details'';\r\n				$_[''reviews'']          = ''reviews '';\r\n				$_[''text_product'']          = ''Product {current} of {total} '';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path="catalog/language/de-DE/module/latest.php">\r\n		<operation>\r\n			<search><![CDATA[ $_[''text_tax'']		= ''ohne Steuer''; ]]></search>\r\n			<add position="after"><![CDATA[		\r\n				$_[''button_details'']          = ''Details'';\r\n				$_[''text_category''] = ''Kategorie:'';\r\n				$_[''text_manufacturer''] = ''Marke:'';\r\n				$_[''text_model''] = ''Model:'';\r\n				$_[''text_availability''] = ''Verfugbarkeit:'';\r\n				$_[''text_instock''] = ''Vorratig'';\r\n				$_[''text_outstock''] = ''Heraus '';\r\n				$_[''text_price'']        = ''Preis: '';\r\n				$_[''text_tax'']          = ''Preis ohne Steuer:'';\r\n				$_[''text_quick'']          = ''Vorschau''; \r\n				$_[''text_product'']          = ''Artikel {current} von {total} '';\r\n				$_[''text_sale'']      = ''Verkauf'';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path="catalog/language/russian/module/latest.php">\r\n		<operation>\r\n			<search><![CDATA[ $_[''text_tax'']]]></search>\r\n			<add position="before"><![CDATA[		\r\n				$_[''button_details'']          = ''Подробнее'';\r\n				$_[''text_category''] = ''Категория'';\r\n				$_[''text_manufacturer''] = ''Брєнд'';\r\n				$_[''text_model''] = ''Модель:'';\r\n				$_[''text_availability''] = ''Наличие:'';\r\n				$_[''text_instock''] = ''Доступно'';\r\n				$_[''text_outstock''] = ''нет в наличии '';\r\n				$_[''text_price'']        = ''Цена: '';\r\n				$_[''text_tax'']          = ''налог:'';\r\n				$_[''text_quick'']          = ''Быстрый просмотр''; \r\n				$_[''text_product'']          = ''Product {current} of {total} '';\r\n				$_[''text_sale'']      = ''Скидка'';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>', 1, '2014-12-11 17:36:19'),
(40, 'TM Special ', '14', 'viva', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n	<name>TM Special </name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>14</code>\r\n	<file path="catalog/controller/module/special.php">\r\n		<operation>\r\n			<search><![CDATA[ \r\n				''rating''      => $rating,\r\n				]]></search>\r\n			<add position="after"><![CDATA[ \r\n					''reviews''    => $review_total,\r\n					''author''     => $result[''manufacturer''],\r\n					''description1'' => html_entity_decode($result[''description''], ENT_QUOTES, ''UTF-8''),\r\n					''manufacturers'' =>$data[''manufacturers''] = $this->url->link(''product/manufacturer/info'', ''manufacturer_id='' . $result[''manufacturer_id'']),\r\n					''model'' => $result[''model''],\r\n					''text_availability'' => $result[''quantity''],\r\n					''allow'' => $result[''minimum''],\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$this->load->model(''tool/image'');\r\n				]]></search>\r\n			<add position="after"><![CDATA[ \r\n						$this->load->model(''catalog/manufacturer'');\r\n						$this->language->load(''product/product'');\r\n						$this->language->load(''product/category'');\r\n						$this->load->model(''catalog/review'');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[''button_cart''] = $this->language->get(''button_cart'');\r\n				]]></search>\r\n			<add position="after"><![CDATA[ \r\n				$data[''text_quick''] = $this->language->get(''text_quick'');\r\n				$data[''text_price''] = $this->language->get(''text_price'');\r\n				$data[''button_wishlist''] = $this->language->get(''button_wishlist'');\r\n				$data[''button_compare''] = $this->language->get(''button_compare'');	\r\n				$data[''button_details''] = $this->language->get(''button_details'');\r\n				$data[''text_manufacturer''] = $this->language->get(''text_manufacturer'');\r\n				$data[''text_category''] = $this->language->get(''text_category'');\r\n				$data[''text_model''] = $this->language->get(''text_model'');\r\n				$data[''text_availability''] = $this->language->get(''text_availability'');\r\n				$data[''text_instock''] = $this->language->get(''text_instock'');\r\n				$data[''text_outstock''] = $this->language->get(''text_outstock'');\r\n				$data[''reviews''] = $this->language->get(''reviews'');\r\n				$data[''text_price''] = $this->language->get(''text_price'');\r\n				$data[''text_product''] = $this->language->get(''text_product'');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ foreach ($results as $result) { ]]></search>\r\n			<add position="after"><![CDATA[ \r\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($result[''product_id'']);\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/language/*/module/special.php">\r\n		<operation>\r\n			<search><![CDATA[ $_[''heading_title''] ]]></search>\r\n			<add position="before"><![CDATA[		\r\n				$_[''text_category''] = ''Categories'';\r\n				$_[''text_manufacturer''] = ''Brand:'';\r\n				$_[''text_model''] = ''Model:'';\r\n				$_[''text_availability''] = ''Availability:'';\r\n				$_[''text_instock''] = ''In Stock'';\r\n				$_[''text_outstock''] = ''Out Stock'';\r\n				$_[''text_price'']        = ''Price: '';\r\n				$_[''text_tax'']          = ''Ex Tax:'';\r\n				$_[''text_quick'']          = ''Quick View''; \r\n				$_[''button_details'']          = ''Details'';\r\n				$_[''reviews'']          = ''reviews '';\r\n				$_[''text_product'']          = ''Product {current} of {total} '';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path="catalog/language/de-DE/module/special.php">\r\n		<operation>\r\n			<search><![CDATA[ $_[''text_tax'']		= ''ohne Steuer''; ]]></search>\r\n			<add position="after"><![CDATA[		\r\n				$_[''button_details'']          = ''Details'';\r\n				$_[''text_category''] = ''Kategorie:'';\r\n				$_[''text_manufacturer''] = ''Marke:'';\r\n				$_[''text_model''] = ''Model:'';\r\n				$_[''text_availability''] = ''Verfugbarkeit:'';\r\n				$_[''text_instock''] = ''Vorratig'';\r\n				$_[''text_outstock''] = ''Heraus '';\r\n				$_[''text_price'']        = ''Preis: '';\r\n				$_[''text_tax'']          = ''Preis ohne Steuer:'';\r\n				$_[''text_quick'']          = ''Vorschau''; \r\n				$_[''text_product'']          = ''Artikel {current} von {total} '';\r\n				$_[''text_sale'']      = ''Verkauf'';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path="catalog/language/russian/module/special.php">\r\n		<operation>\r\n			<search><![CDATA[ $_[''text_tax'']]]></search>\r\n			<add position="before"><![CDATA[		\r\n				$_[''button_details'']          = ''Подробнее'';\r\n				$_[''text_category''] = ''Категория'';\r\n				$_[''text_manufacturer''] = ''Брєнд'';\r\n				$_[''text_model''] = ''Модель:'';\r\n				$_[''text_availability''] = ''Наличие:'';\r\n				$_[''text_instock''] = ''Доступно'';\r\n				$_[''text_outstock''] = ''нет в наличии '';\r\n				$_[''text_price'']        = ''Цена: '';\r\n				$_[''text_tax'']          = ''налог:'';\r\n				$_[''text_quick'']          = ''Быстрый просмотр''; \r\n				$_[''text_product'']          = ''Product {current} of {total} '';\r\n				$_[''text_sale'']      = ''Скидка'';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>', 1, '2014-12-11 17:36:23'),
(52, 'TM Header Cart', '2', 'viva', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TM Header Cart</name>\n	<version>1.0</version>\n	<author>viva</author>\n	<link>http://www.templatemonster.com</link>\n	<code>2</code>\n	<file path="catalog/controller/common/cart.php">\n		<operation>\n			<search><![CDATA[ $data[''text_loading''] = $this->language->get(''text_loading''); ]]></search>\n			<add position="after"><![CDATA[ \n				$data[''text_items2''] = sprintf($this->language->get(''text_items2''), $this->cart->countProducts() + (isset($this->session->data[''vouchers'']) ? count($this->session->data[''vouchers'']) : 0), $this->currency->format($total));\n				$data[''text_shopping_cart''] = $this->language->get(''text_shopping_cart'');\n				]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ $data[''text_loading''] = $this->language->get(''text_loading''); ]]></search>\n			<add position="after"><![CDATA[ \n				$data[''text_items3''] = sprintf($this->language->get(''text_items3''), $this->cart->countProducts() + (isset($this->session->data[''vouchers'']) ? count($this->session->data[''vouchers'']) : 0), $this->currency->format($total));\n				$data[''text_shopping_cart''] = $this->language->get(''text_shopping_cart'');\n				]]></add>\n		</operation>\n	</file>\n	<file path="catalog/language/*/common/cart.php">\n		<operation>\n			<search><![CDATA[ $_[''text_items''] ]]></search>\n			<add position="before"><![CDATA[ \n			$_[''text_items2'']    = ''%s'';\n			$_[''text_items3'']    = ''%s item(s)'';\n			$_[''text_shopping_cart'']    = ''Cart:'';\n				]]></add>\n		</operation>\n	</file>\n	<file path="catalog/language/*/checkout/cart.php">\n		<operation>\n			<search><![CDATA[ $_[''text_items''] ]]></search>\n			<add position="before"><![CDATA[ \n			$_[''text_items2'']    = ''%s'';\n			$_[''text_shopping_cart'']    = ''Shopping Cart:'';\n				]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ $_[''text_items''] ]]></search>\n			<add position="before"><![CDATA[ \n			$_[''text_items2'']    = ''%s'';\n			$_[''text_shopping_cart'']    = ''Shopping Cart:'';\n				]]></add>\n		</operation>\n	</file>\n	<file path="catalog/language/de-DE/common/cart.php">\n		<operation>\n			<search><![CDATA[ $_[''text_recurring''] ]]></search>\n			<add position="before"><![CDATA[ \n				$_[''text_items3'']    = ''%s Artikel'';\n			$_[''text_shopping_cart'']= ''Warenkorb: '';\n				]]></add>\n		</operation>\n	</file>\n	<file path="catalog/language/russian/common/cart.php">\n		<operation>\n			<search><![CDATA[ $_[''text_recurring''] ]]></search>\n			<add position="before"><![CDATA[ \n				$_[''text_items3'']    = ''Товаров %s'';\n			$_[''text_shopping_cart''] = ''Корзина: '';\n				]]></add>\n		</operation>\n	</file>\n</modification>', 1, '2015-02-05 15:31:58');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(29, 'Home Page', 'carousel', 'a:5:{s:4:"name";s:20:"Carousel - Home Page";s:9:"banner_id";s:1:"8";s:5:"width";s:3:"130";s:6:"height";s:3:"100";s:6:"status";s:1:"1";}'),
(28, 'Featured ', 'featured', 'a:6:{s:4:"name";s:9:"Featured ";s:7:"product";a:8:{i:0;s:2:"35";i:1;s:2:"47";i:2;s:2:"41";i:3;s:2:"42";i:4;s:2:"48";i:5;s:2:"34";i:6;s:2:"29";i:7;s:2:"49";}s:5:"limit";s:1:"8";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(46, 'Tm Slideshow', 'tm_slideshow', 'a:5:{s:4:"name";s:12:"Tm Slideshow";s:9:"banner_id";s:2:"15";s:5:"width";s:4:"1800";s:6:"height";s:3:"546";s:6:"status";s:1:"1";}'),
(53, 'banners', 'banner', 'a:5:{s:4:"name";s:7:"banners";s:9:"banner_id";s:2:"17";s:5:"width";s:3:"570";s:6:"height";s:3:"249";s:6:"status";s:1:"1";}'),
(54, 'About', 'html', 'a:3:{s:4:"name";s:5:"About";s:18:"module_description";a:3:{i:1;a:2:{s:5:"title";s:5:"About";s:11:"description";s:1996:"&lt;div class=&quot;container&quot;&gt;    &lt;div class=&quot;row&quot;&gt;&lt;div class=&quot;col-sm-6&quot;&gt;        &lt;h5&gt;About&lt;/h5&gt;\r\n        &lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-6&quot;&gt;        &lt;h5&gt;Events&lt;/h5&gt;\r\n        &lt;ul class=&quot;events&quot;&gt;\r\n            &lt;li&gt;                &lt;p&gt;                    &lt;a href=&quot;#&quot;&gt;&lt;span class=&quot;fa fa-truck&quot;&gt;&lt;/span&gt; Ctetur adipisicing.&lt;/a&gt; Lorem ipsum dolor sit amet conse ctetur adipisicing elit.                &lt;/p&gt;\r\n            &lt;/li&gt;\r\n            &lt;li&gt;                &lt;p&gt;                    &lt;a href=&quot;#&quot;&gt;&lt;span class=&quot;fa fa-refresh&quot;&gt;&lt;/span&gt; Vostrud exercitation &lt;/a&gt; Ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.                &lt;/p&gt;\r\n            &lt;/li&gt;\r\n            &lt;li&gt;                &lt;p&gt;                    &lt;a href=&quot;#&quot;&gt;&lt;span class=&quot;fa fa-thumbs-o-up&quot;&gt;                    &lt;/span&gt; Dolore eu fugiat nulla&lt;/a&gt; Amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt.                &lt;/p&gt;\r\n            &lt;/li&gt;\r\n        &lt;/ul&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;";}i:2;a:2:{s:5:"title";s:5:"About";s:11:"description";s:1996:"&lt;div class=&quot;container&quot;&gt;    &lt;div class=&quot;row&quot;&gt;&lt;div class=&quot;col-sm-6&quot;&gt;        &lt;h5&gt;About&lt;/h5&gt;\r\n        &lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-6&quot;&gt;        &lt;h5&gt;Events&lt;/h5&gt;\r\n        &lt;ul class=&quot;events&quot;&gt;\r\n            &lt;li&gt;                &lt;p&gt;                    &lt;a href=&quot;#&quot;&gt;&lt;span class=&quot;fa fa-truck&quot;&gt;&lt;/span&gt; Ctetur adipisicing.&lt;/a&gt; Lorem ipsum dolor sit amet conse ctetur adipisicing elit.                &lt;/p&gt;\r\n            &lt;/li&gt;\r\n            &lt;li&gt;                &lt;p&gt;                    &lt;a href=&quot;#&quot;&gt;&lt;span class=&quot;fa fa-refresh&quot;&gt;&lt;/span&gt; Vostrud exercitation &lt;/a&gt; Ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.                &lt;/p&gt;\r\n            &lt;/li&gt;\r\n            &lt;li&gt;                &lt;p&gt;                    &lt;a href=&quot;#&quot;&gt;&lt;span class=&quot;fa fa-thumbs-o-up&quot;&gt;                    &lt;/span&gt; Dolore eu fugiat nulla&lt;/a&gt; Amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt.                &lt;/p&gt;\r\n            &lt;/li&gt;\r\n        &lt;/ul&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;";}i:3;a:2:{s:5:"title";s:5:"About";s:11:"description";s:1996:"&lt;div class=&quot;container&quot;&gt;    &lt;div class=&quot;row&quot;&gt;&lt;div class=&quot;col-sm-6&quot;&gt;        &lt;h5&gt;About&lt;/h5&gt;\r\n        &lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-6&quot;&gt;        &lt;h5&gt;Events&lt;/h5&gt;\r\n        &lt;ul class=&quot;events&quot;&gt;\r\n            &lt;li&gt;                &lt;p&gt;                    &lt;a href=&quot;#&quot;&gt;&lt;span class=&quot;fa fa-truck&quot;&gt;&lt;/span&gt; Ctetur adipisicing.&lt;/a&gt; Lorem ipsum dolor sit amet conse ctetur adipisicing elit.                &lt;/p&gt;\r\n            &lt;/li&gt;\r\n            &lt;li&gt;                &lt;p&gt;                    &lt;a href=&quot;#&quot;&gt;&lt;span class=&quot;fa fa-refresh&quot;&gt;&lt;/span&gt; Vostrud exercitation &lt;/a&gt; Ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.                &lt;/p&gt;\r\n            &lt;/li&gt;\r\n            &lt;li&gt;                &lt;p&gt;                    &lt;a href=&quot;#&quot;&gt;&lt;span class=&quot;fa fa-thumbs-o-up&quot;&gt;                    &lt;/span&gt; Dolore eu fugiat nulla&lt;/a&gt; Amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt.                &lt;/p&gt;\r\n            &lt;/li&gt;\r\n        &lt;/ul&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;";}}s:6:"status";s:1:"1";}'),
(42, 'Facebook', 'tm_fbbox', 'a:11:{s:4:"name";s:8:"Facebook";s:5:"appId";s:16:"1494197684186276";s:8:"page_url";s:40:"https://www.facebook.com/TemplateMonster";s:12:"color_scheme";s:5:"light";s:10:"show_faces";s:1:"1";s:11:"show_stream";s:1:"0";s:11:"show_header";s:1:"0";s:11:"show_border";s:1:"0";s:5:"width";s:3:"370";s:6:"height";s:3:"190";s:6:"status";s:1:"1";}'),
(43, 'Bestsellers', 'bestseller', 'a:5:{s:4:"name";s:11:"Bestsellers";s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(44, 'Latest Products', 'latest', 'a:5:{s:4:"name";s:15:"Latest Products";s:5:"limit";s:1:"6";s:5:"width";s:3:"230";s:6:"height";s:3:"210";s:6:"status";s:1:"1";}'),
(48, 'Specials Home Page', 'special', 'a:5:{s:4:"name";s:18:"Specials Home Page";s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(55, 'banner-2', 'banner', 'a:5:{s:4:"name";s:8:"banner-2";s:9:"banner_id";s:2:"18";s:5:"width";s:3:"570";s:6:"height";s:3:"249";s:6:"status";s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4499 ;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(837, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(954, 0, 'affiliate', 'affiliate_status', '1', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(4463, 0, 'config', 'config_image_wishlist_height', '47', 0),
(4464, 0, 'config', 'config_image_cart_width', '47', 0),
(4465, 0, 'config', 'config_image_cart_height', '47', 0),
(4466, 0, 'config', 'config_image_location_width', '268', 0),
(4467, 0, 'config', 'config_image_location_height', '50', 0),
(4468, 0, 'config', 'config_ftp_hostname', '192.168.9.2', 0),
(4469, 0, 'config', 'config_ftp_port', '21', 0),
(4470, 0, 'config', 'config_ftp_username', '', 0),
(4471, 0, 'config', 'config_ftp_password', '', 0),
(4472, 0, 'config', 'config_ftp_root', '', 0),
(4473, 0, 'config', 'config_ftp_status', '0', 0),
(4474, 0, 'config', 'config_mail', 'a:7:{s:8:"protocol";s:4:"mail";s:9:"parameter";s:0:"";s:13:"smtp_hostname";s:0:"";s:13:"smtp_username";s:0:"";s:13:"smtp_password";s:0:"";s:9:"smtp_port";s:0:"";s:12:"smtp_timeout";s:0:"";}', 1),
(4475, 0, 'config', 'config_mail_alert', '', 0),
(4476, 0, 'config', 'config_fraud_detection', '0', 0),
(4477, 0, 'config', 'config_fraud_key', '', 0),
(4478, 0, 'config', 'config_fraud_score', '', 0),
(4479, 0, 'config', 'config_fraud_status_id', '7', 0),
(4480, 0, 'config', 'config_secure', '0', 0),
(4481, 0, 'config', 'config_shared', '0', 0),
(4482, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(4462, 0, 'config', 'config_image_wishlist_width', '47', 0),
(4460, 0, 'config', 'config_image_compare_width', '90', 0),
(4461, 0, 'config', 'config_image_compare_height', '90', 0),
(4459, 0, 'config', 'config_image_related_height', '270', 0),
(4458, 0, 'config', 'config_image_related_width', '270', 0),
(4457, 0, 'config', 'config_image_additional_height', '88', 0),
(4456, 0, 'config', 'config_image_additional_width', '88', 0),
(4452, 0, 'config', 'config_image_popup_width', '800', 0),
(4453, 0, 'config', 'config_image_popup_height', '800', 0),
(4454, 0, 'config', 'config_image_product_width', '220', 0),
(4455, 0, 'config', 'config_image_product_height', '220', 0),
(4451, 0, 'config', 'config_image_thumb_height', '800', 0),
(839, 0, 'tm_category', 'tm_category_status', '1', 0),
(4450, 0, 'config', 'config_image_thumb_width', '800', 0),
(4449, 0, 'config', 'config_image_category_height', '190', 0),
(4448, 0, 'config', 'config_image_category_width', '190', 0),
(4447, 0, 'config', 'config_icon', 'catalog/favicon.png', 0),
(4446, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(4445, 0, 'config', 'config_return_status_id', '2', 0),
(4444, 0, 'config', 'config_return_id', '0', 0),
(4443, 0, 'config', 'config_affiliate_mail', '0', 0),
(4442, 0, 'config', 'config_affiliate_id', '4', 0),
(4441, 0, 'config', 'config_affiliate_commission', '5', 0),
(4440, 0, 'config', 'config_affiliate_auto', '0', 0),
(4439, 0, 'config', 'config_affiliate_approval', '0', 0),
(4438, 0, 'config', 'config_stock_checkout', '0', 0),
(4437, 0, 'config', 'config_stock_warning', '0', 0),
(4436, 0, 'config', 'config_stock_display', '0', 0),
(4435, 0, 'config', 'config_order_mail', '0', 0),
(4434, 0, 'config', 'config_complete_status', 'a:1:{i:0;s:1:"5";}', 1),
(4433, 0, 'config', 'config_processing_status', 'a:1:{i:0;s:1:"2";}', 1),
(4432, 0, 'config', 'config_order_status_id', '1', 0),
(4431, 0, 'config', 'config_checkout_id', '5', 0),
(4430, 0, 'config', 'config_checkout_guest', '1', 0),
(4429, 0, 'config', 'config_cart_weight', '1', 0),
(4498, 0, 'config', 'config_api_id', '8', 0),
(4427, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(4426, 0, 'config', 'config_account_mail', '0', 0),
(4425, 0, 'config', 'config_account_id', '3', 0),
(4424, 0, 'config', 'config_login_attempts', '5', 0),
(4423, 0, 'config', 'config_customer_price', '0', 0),
(4422, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(4421, 0, 'config', 'config_customer_group_id', '1', 0),
(4420, 0, 'config', 'config_customer_online', '0', 0),
(4419, 0, 'config', 'config_tax_customer', 'shipping', 0),
(4418, 0, 'config', 'config_tax_default', 'shipping', 0),
(4417, 0, 'config', 'config_tax', '0', 0),
(4416, 0, 'config', 'config_voucher_max', '1000', 0),
(4415, 0, 'config', 'config_voucher_min', '1', 0),
(4414, 0, 'config', 'config_review_mail', '0', 0),
(4413, 0, 'config', 'config_review_guest', '1', 0),
(4412, 0, 'config', 'config_review_status', '1', 0),
(4411, 0, 'config', 'config_limit_admin', '20', 0),
(4410, 0, 'config', 'config_product_description_length', '90', 0),
(4409, 0, 'config', 'config_product_limit', '6', 0),
(4408, 0, 'config', 'config_product_count', '1', 0),
(4407, 0, 'config', 'config_weight_class_id', '1', 0),
(4406, 0, 'config', 'config_length_class_id', '1', 0),
(4405, 0, 'config', 'config_currency_auto', '1', 0),
(4404, 0, 'config', 'config_currency', 'USD', 0),
(4403, 0, 'config', 'config_admin_language', 'en', 0),
(4402, 0, 'config', 'config_language', 'en', 0),
(4401, 0, 'config', 'config_zone_id', '3563', 0),
(4400, 0, 'config', 'config_country_id', '222', 0),
(4399, 0, 'config', 'config_layout_id', '4', 0),
(4398, 0, 'config', 'config_template', 'theme518', 0),
(4397, 0, 'config', 'config_meta_keyword', '', 0),
(4396, 0, 'config', 'config_meta_description', 'Travel online store', 0),
(4395, 0, 'config', 'config_meta_title', 'Travel online store', 0),
(4394, 0, 'config', 'config_comment', 'Aenean mattis efficitur metus eget ornare.', 0),
(4392, 0, 'config', 'config_image', '', 0),
(4393, 0, 'config', 'config_open', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0),
(4391, 0, 'config', 'config_fax', '1-800-234-5678', 0),
(4390, 0, 'config', 'config_telephone', '800-2345-6789', 0),
(4495, 0, 'config', 'config_email', 'admin@r.ru', 0),
(4388, 0, 'config', 'config_geocode', '42.3317600  -71.1211600', 0),
(4387, 0, 'config', 'config_address', '4578 Marmora Road,Glasgow D04 89GR', 0),
(4385, 0, 'config', 'config_name', 'Travel online store', 0),
(4386, 0, 'config', 'config_owner', 'Travel online store', 0),
(4483, 0, 'config', 'config_seo_url', '0', 0),
(4484, 0, 'config', 'config_file_max_size', '300000', 0),
(4485, 0, 'config', 'config_file_ext_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(4486, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(4487, 0, 'config', 'config_maintenance', '0', 0),
(4488, 0, 'config', 'config_password', '1', 0),
(4497, 0, 'config', 'config_encryption', 'cdb9dd2a21b3f81a24039e8769ba4b6e', 0),
(4490, 0, 'config', 'config_compression', '0', 0),
(4491, 0, 'config', 'config_error_display', '1', 0),
(4492, 0, 'config', 'config_error_log', '1', 0),
(4493, 0, 'config', 'config_error_filename', 'error.log', 0),
(4494, 0, 'config', 'config_google_analytics', '', 0),
(4496, 0, 'config', 'config_url', 'http://192.168.9.27/06.january/Mu.24825.opencart.raffa/24825/theme518(full)/', 0);

