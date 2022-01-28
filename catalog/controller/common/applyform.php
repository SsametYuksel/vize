<?php
class ControllerCommonApplyform extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');

			$data['header_top'] = $this->load->controller('common/header_top');
			
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		// Load Product model
		$this->load->model('catalog/product');

		$data['nationalities'] = $this->model_catalog_product->getProducts(array(
			'filter_category_id' => '39'
		));

		$data['passports'] = $this->model_catalog_product->getProductOptions(56)[0]['product_option_value'];
		
		
		// print_r($data['nationalities']); exit;
		// print_r($data['passports'][0]); exit;

		if(isset($this->request->post['type']) && $this->request->post['type'] == 'confirmed'){

			$this->addOrder();
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/applyformconfirmed.tpl', $data));

		}elseif(isset($this->request->post['type']) && $this->request->post['type'] == 'confirm'){

			$this->session->data['name'] = $data['name'] = $this->request->post['name'];
			$this->session->data['surname'] = $data['surname'] = $this->request->post['surname'];
			$this->session->data['birthplace'] = $data['birthplace'] = $this->request->post['birthplace'];
			$this->session->data['birthdate'] = $data['birthdate'] = $this->request->post['birthdate'];
			$this->session->data['passport'] = $data['passport'] = $this->request->post['passport'];
			$this->session->data['email'] = $data['email'] = $this->request->post['email'];
			$this->session->data['phone'] = $data['phone'] = $this->request->post['phone'];
			$this->session->data['residence_address'] = $data['residence_address'] = $this->request->post['residence_address'];
			$this->session->data['passport_issue_date'] = $data['passport_issue_date'] = $this->request->post['passport_issue_date'];
			$this->session->data['passport_expiry_date'] = $data['passport_expiry_date'] = $this->request->post['passport_expiry_date'];
			$this->session->data['supporting_document_type'] = $data['supporting_document_type'] = $this->request->post['supporting_document_type'];
			$this->session->data['supporting_document'] = $data['supporting_document'] = $this->request->post['supporting_document'];
			$this->session->data['supporting_document_number'] = $data['supporting_document_number'] = $this->request->post['supporting_document_number'];
			$this->session->data['supporting_document_expiry_date'] = $data['supporting_document_expiry_date'] = $this->request->post['supporting_document_expiry_date'];

			$data['number_of_entries'] = $this->session->data['number_of_entries'];
			$data['stay_duration'] = $this->session->data['stay_duration'];
			$data['nationality'] = $this->model_catalog_product->getProduct($this->session->data['nationality_id'])['name'];
			$option = $this->model_catalog_product->getProductOptions($this->session->data['nationality_id'])[0];
			$this->session->data['product_option_id'] = $option['product_option_id'];
			$passports = $option['product_option_value'];
			$option = $this->session->data['option'] = array_values(array_filter($passports, function($passport){
				return $passport['product_option_value_id'] == $this->session->data['passport_id'];
			}))[0];
			
			$data['passport'] = $option['name'];
			
			$data['arrival_date'] = $this->session->data['arrival_date'];

			$data['return_back'] = $this->url->link('common/applyform');

			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/applyformconfirm.tpl', $data));
		}else{

			$this->session->data['number_of_entries'] = $this->request->post['number_of_entries'];
			$this->session->data['stay_duration'] = $this->request->post['stay_duration'];
			$this->session->data['nationality_id'] = $this->request->post['nationality_id'];
			$this->session->data['passport_id'] = $this->request->post['passport_id'];
			$this->session->data['arrival_date'] = $this->request->post['arrival_date'];

			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/applyform.tpl', $data));
		}
		
	}

	public function getPassports()
	{
		$this->load->model('catalog/product');
		$product_id = $this->request->get['product_id'];
		$passports = $this->model_catalog_product->getProductOptions($product_id)[0]['product_option_value'];
		$passports = array_map(function($item){
			$item['price'] = $this->currency->format($item['price']);
			return $item;
		}, $passports);

		// $this->response->setOutput(json_encode($passports));
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($passports));
	}


	public function addOrder()
	{
		$order_data['customer_id'] = 0;
		$order_data['customer_group_id'] = 1;
		$order_data['firstname'] = $this->session->data['name'];
		$order_data['lastname'] = $this->session->data['surname'];
		$order_data['email'] = $this->session->data['email'];
		$order_data['telephone'] = $this->session->data['phone'];
		$order_data['fax'] = '';
		$order_data['store_name'] = '';
		$order_data['store_id'] = '1';
		$order_data['store_url'] = '';
		$order_data['payment_firstname'] = $this->session->data['name'];
		$order_data['payment_lastname'] = $this->session->data['surname'];
		$order_data['payment_company'] = '';
		$order_data['payment_address'] = $this->session->data['residence_address'];
		$order_data['payment_address_1'] = '';
		$order_data['payment_address_2'] = '';
		$order_data['payment_city'] = '';
		$order_data['payment_postcode'] = '';
		$order_data['payment_country'] = '';
		$order_data['payment_country_id'] = $this->session->data['nationality_id'];
		$order_data['payment_zone'] = '';
		$order_data['payment_zone_id'] = '';
		$order_data['payment_address_format'] = '';
		$order_data['payment_method'] = '';
		$order_data['payment_code'] = '';

		$order_data['shipping_firstname'] = $this->session->data['name'];
		$order_data['shipping_lastname'] = $this->session->data['surname'];
		$order_data['shipping_company'] = '';
		$order_data['shipping_method'] = '';
		$order_data['shipping_address_1'] = '';
		$order_data['shipping_address_2'] = '';
		$order_data['shipping_address_format'] = '';
		$order_data['shipping_city'] = '';
		$order_data['shipping_postcode'] = '';
		$order_data['shipping_country'] = '';
		$order_data['shipping_country_id'] = '';
		$order_data['shipping_zone'] = '';
		$order_data['shipping_zone_id'] = '';
		$order_data['shipping_code'] = '';
		$order_data['shipping_code'] = '';

		$order_data['comment'] = '';

		$order_data['tax_class_id'] = '';
		$order_data['invoice_prefix'] = '';

		$option = $this->session->data['option'];
		$order_data['total'] = $option['price'];
		
		$order_data['affiliate_id'] = '';
		$order_data['commission'] = '';
		$order_data['marketing_id'] = '';
		$order_data['tracking'] = '';
		
		$order_data['language_id'] = '1';
		$order_data['currency_id'] = $this->currency->getId();
		$order_data['currency_code'] = $this->currency->getCode();
		$order_data['currency_value'] = $this->currency->getValue($this->currency->getCode());

		$order_data['ip'] = '';
		$order_data['forwarded_ip'] = '';
		$order_data['user_agent'] = '';
		$order_data['accept_language'] = '';
		


		$option_data[] = array(
			'product_option_id'       => $this->session->data['product_option_id'],
			'product_option_value_id' => $option['product_option_value_id'],
			'option_id'               => 15,
			'option_value_id'         => $option['option_value_id'],
			'name'                    => $option['name'],
			'value'                   => $option['price'],
			'type'                    => ''
		);
		
		$product_id = $this->session->data['nationality_id'];
		$product = $this->model_catalog_product->getProduct($product_id);
		$product = array(
			'product_id' => $product_id,
			'name'       => $product['name'],
			'model'      => '',
			'option'     => $option_data,
			'download'   => '',
			'quantity'   => 1,
			'subtract'   => '',
			'price'      => $option['price'],
			'total'      => $option['price'],
			'tax'        => '',
			'reward'     => ''
		);

		$order_data['products'][] = array(
			'product_id' => $product['product_id'],
			'name'       => $product['name'],
			'model'      => $product['model'],
			'option'     => $option_data,
			'download'   => $product['download'],
			'quantity'   => $product['quantity'],
			'subtract'   => $product['subtract'],
			'price'      => $product['price'],
			'total'      => $product['total'],
			'tax'        => '',
			'reward'     => $product['reward']
		);

		// $this->load->model('extension/extension');
		// $results = $this->model_extension_extension->getExtensions('total');
		
		$this->load->model('checkout/order');
		$this->session->data['order_id'] = $this->model_checkout_order->addOrder($order_data);
	}
}