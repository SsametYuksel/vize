<?php
class ControllerCommonApplyprice extends Controller {
	public function index() {
        if (!$this->request->get["type"]){
            $this->response->redirect($this->url->link('common/home'));
        }

        if(isset($this->session->data['name'])){
            unset($_SESSION['name']);
        }

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

		$data['nationalities'] = $this->model_catalog_product->getProducts();

		$data['nationalities'] = array_map(function($item){
			$prices = $this->model_catalog_product->getProductOptions($item['product_id'])[0]['prices'];
			$prices = array_filter($prices, function($item){
				return $item['option_value_id'] == $_GET['type'];
			});
			$prices = array_values($prices);
			if(count($prices)){
				$item['price'] = $this->currency->format($prices[0]['price']);
			}

			return $item;

		}, $data['nationalities']);

		$this->session->data['product_type'] = $this->request->get["type"];

		$data['applyform_url'] = $this->url->link('common/applyform');

		// print_r($data['nationalities'][60]['prices']); exit;
		// print_r($data['passports'][0]); exit;
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/applyprice.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/applyprice.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/applyprice.tpl', $data));
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
}