<?php
class ControllerCommonApplyform extends Controller {
	public function index() {

        if($this->request->post['come-from-applyprice-form'] != '1'){
            $this->response->redirect($this->url->link('common/home'));
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
        $this->load->model('checkout/order');


		if(isset($this->request->post['type']) && $this->request->post['type'] == 'confirmed'){

            $this->addOrder();

			unset($_SESSION['name']);
			unset($_SESSION['surname']);
			unset($_SESSION['birthplace']);
			unset($_SESSION['birthplace']);
			unset($_SESSION['birthdate']);
			unset($_SESSION['passport_number']);
			unset($_SESSION['email']);
			unset($_SESSION['phone']);
			unset($_SESSION['residence_address']);
			unset($_SESSION['passport_issue_date']);
			unset($_SESSION['passport_expiry_date']);
			unset($_SESSION['supporting_document_type']);
			unset($_SESSION['supporting_document']);
			unset($_SESSION['supporting_document_number']);
			unset($_SESSION['supporting_document_expiry_date']);
			unset($_SESSION['photo']);
			unset($_SESSION['number_of_entries']);
			unset($_SESSION['stay_duration']);
			unset($_SESSION['nationality_id']);
			unset($_SESSION['product_type_a']);
			unset($_SESSION['product_type']);
			unset($_SESSION['image_names']);
            unset($_SESSION['upload_image']);
			unset($_SESSION['upload_error_image']);
			unset($_SESSION['docs_names']);
            unset($_SESSION['upload_docs']);
			unset($_SESSION['upload_error_docs']);
			unset($_SESSION['folder_order_id']);
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/applyformconfirmed.tpl', $data));
		}
		elseif(isset($this->request->post['type']) && $this->request->post['type'] == 'confirm'){
            if(isset($this->request->files['image'])){

                //rearrange the array, make it ready to upload.
                $image_array = $this->rearrangeImageArray($this->request->files['image']);

                //upload the image
                $data['upload_image'] = $this->session->data['upload_image'] = $this->uploadMultiplePhotos($image_array);

                //initialize arrays, otherwise saves as string
                $data['image_names'] = array();
                $this->session->data['image_names'] = array();
                $this->session->data['upload_error_image'] = array();
                $data['upload_error_image'] = array();

                //add filenames to session to show in the next page
                foreach($image_array as $key => $image_name){
                    $data['image_names'][$key] = $image_name['name'];
                    $this->session->data['image_names'][$key] = $image_name['name'];
                }

                //check if there are any errors on upload
                foreach ($this->session->data['upload_image'] as $key => $check_fail){
                    if(isset($check_fail['error'])){
                        $this->session->data['upload_error_image'][$key] = "Error uploading "
                            .$data['image_names'][$key];
                        $data['upload_error_image'][$key] ="Error uploading "
                            .$data['image_names'][$key];
                    }
                }
            }

            if(isset($this->request->files['docs'])){
                //rearrange the array, make it ready to upload.
                $docs_array = $this->rearrangeImageArray($this->request->files['docs']);

                //upload the file
                $data['upload_docs'] = $this->session->data['upload_docs'] = $this->uploadDocs($docs_array);

                //initialize arrays, otherwise saves as string
                $data['docs_names'] = array();
                $this->session->data['docs_names'] = array();
                $this->session->data['upload_error_docs'] = array();
                $data['upload_error_docs'] = array();


                //add filenames to session to show in the next page
                foreach($docs_array as $key => $docs_name){
                    $data['docs_names'][$key] = $docs_name['name'];
                    $this->session->data['docs_names'][$key] = $docs_name['name'];
                }

                //check if there are any errors on upload
                foreach ($this->session->data['upload_docs'] as $key => $check_fail){
                    if(isset($check_fail['error'])){
                        $this->session->data['upload_error_docs'][$key] = "Error uploading "
                            .$data['docs_names'][$key];
                        $data['upload_error_docs'][$key] ="Error uploading "
                            .$data['docs_names'][$key];
                    }
                }
            }

		    $details = $this->model_catalog_product->getProductDetails($this->session->data['nationality_id']);
            $data['need_supporting_docs'] = $details['need_supporting_docs'];

            $explode = explode("/", $details["max_stay_days"]);

            $insurance = 0;
            if($this->session->data['insurance'] == 1)
                $insurance = 10;

            $data['nationality'] = $this->model_catalog_product->getProduct($this->session->data['nationality_id'])['name'];
            $priceAndName = $this->model_catalog_product->getIdToPrice($this->session->data['nationality_id'], $this->session->data['product_type_a']);

            $data['price'] = intval($priceAndName['price'])+$insurance;

            $this->session->data['stay_duration'] = $data['stay_duration'] = $explode[1];
            $this->session->data['number_of_entries'] = $data['number_of_entries'] = $details['passport_type_allowance'];
            $data['arrival_date'] = $this->session->data['arrival_date'];
            $data['insurance'] = $this->session->data['insurance'];
            $data['product_type'] = $this->session->data['product_type_a'];

            if ($this->session->data['product_type_a'] == 62 || $this->session->data['product_type_a'] == 63){
                $this->session->data['name'] = $data['name'] = $this->request->post['name']; //
                $this->session->data['surname'] = $data['surname'] = $this->request->post['surname'];//
                $this->session->data['birthplace'] = $data['birthplace'] = $this->request->post['birthplace'];//
                $this->session->data['birthdate'] = $data['birthdate'] = $this->request->post['birthdate'];//
                $this->session->data['passport_number'] = $data['passport_number'] = $this->request->post['passport_number'];//
                $this->session->data['email'] = $data['email'] = $this->request->post['email'];//
                $this->session->data['phone'] = $data['phone'] = $this->request->post['phone'];//
                $this->session->data['residence_address'] = $data['residence_address'] = $this->request->post['residence_address'];//
                $this->session->data['passport_issue_date'] = $data['passport_issue_date'] = $this->request->post['passport_issue_date'];//
                $this->session->data['passport_expiry_date'] = $data['passport_expiry_date'] = $this->request->post['passport_expiry_date'];//
                if($details['need_supporting_docs'] == 1){
                    $this->session->data['supporting_document_type'] = $data['supporting_document_type'] = $this->request->post['supporting_document_type'];//
                    $this->session->data['supporting_document'] = $data['supporting_document'] = $this->request->post['supporting_document'];//
                    $this->session->data['supporting_document_number'] = $data['supporting_document_number'] = $this->request->post['supporting_document_number'];//
                    $this->session->data['supporting_document_expiry_date'] = $data['supporting_document_expiry_date'] = $this->request->post['supporting_document_expiry_date'];//
                }
            }


			$data['return_back'] = $this->url->link('common/applyform');

			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/applyformconfirm.tpl', $data));
		}
		else{
		    if(isset($this->request->post['nationality_id'])){
		        $nationality_id = $this->request->post['nationality_id'];
                $this->session->data['nationality_id'] = $nationality_id;
            }else{
                $nationality_id = $this->session->data['nationality_id'];
            }

		    if(isset($this->request->post['arrival_date'])){
                $arrival_date = $this->request->post['arrival_date'];
                $this->session->data['arrival_date'] = $arrival_date;
            }else{
                $arrival_date = $this->session->data['arrival_date'];

            }

            if (isset($this->session->data['product_type'])){
                $this->session->data['product_type_a'] = $this->session->data['product_type'];
                unset($_SESSION['product_type']);
            }

            $data['category'] = $this->session->data['product_type_a'];
            $data['arrival_date'] = $arrival_date;

            if(isset($this->request->post['insurance'])){
                $data['insurance'] = $this->session->data['insurance'] = $this->request->post['insurance'];
            }
            elseif(isset($this->session->data['insurance'])){
                $data['insurance'] = $this->session->data['insurance'];
            }else{
                $data['insurance'] = $this->session->data['insurance'] = 0;
            }



			$need_supporting_document = $this->model_catalog_product->getNeedSupportingDocs($nationality_id);
            $this->session->data['supporting_document'] = $need_supporting_document["need_supporting_docs"];
            $data['supporting_document_needed'] = $need_supporting_document["need_supporting_docs"];

            if (isset($need_supporting_document["need_supporting_docs"])) {
                $data['supporting_document_list'] = $this->model_catalog_category->getCategories(44);
            }



            //3 tane session var.

            if (isset($this->session->data['name'])){
                $data['name'] = $this->session->data['name'];
                $data['surname'] = $this->session->data['surname'];
                $data['birthplace'] = $this->session->data['birthplace'];
                $data['birthdate'] = $this->session->data['birthdate'];
                $data['passport_number'] = $this->session->data['passport_number'];
                $data['email'] = $this->session->data['email'];
                $data['phone'] = $this->session->data['phone'];
                $data['residence_address'] = $this->session->data['residence_address'];
                $data['passport_issue_date'] = $this->session->data['passport_issue_date'];
                $data['passport_expiry_date'] = $this->session->data['passport_expiry_date'];
                if ($need_supporting_document["need_supporting_docs"]){
                    $data['supporting_document_type'] = $this->session->data['supporting_document_type'];
                    $data['supporting_document'] = $this->session->data['supporting_document'];
                    $data['supporting_document_number'] = $this->session->data['supporting_document_number'];
                    $data['supporting_document_expiry_date'] = $this->session->data['supporting_document_expiry_date'];
                }
                $data['number_of_entries'] = $this->session->data['number_of_entries'];
                $data['stay_duration'] = $this->session->data['stay_duration'];
            }

			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/applyform.tpl', $data));
		}
	}

	public function rearrangeImageArray($array){
        $image_array = array();
        $file_count = count($array['name']);
        $file_keys = array_keys($array);
        for ($i=0; $i<$file_count; $i++)
        {
            foreach ($file_keys as $key)
            {
                $image_array[$i][$key] = $array[$key][$i];
            }
        }
        return $image_array;
    }

    public function getDocumentsBaseOnSupportingDocumentType()
    {
        $parent_id = $this->request->post['parent_id'];
        $this->load->model('catalog/category');
        $cats = $this->model_catalog_category->getCategories($parent_id);   
        $this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($cats));
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

    public function moveTempFiles(){
	    $imageAndDocs = array();
        if(isset($this->session->data['upload_image'])){
            $folder_name = $this->session->data['folder_order_id'] = $this->request->post['name'];
            if(!is_dir( DIR_IMAGE.'/docs/'. $folder_name)){
                mkdir(DIR_IMAGE.'/docs/'.$folder_name, 0744);
            }
            $data["upload_image"] = $this->session->data['upload_image'];
            foreach($this->session->data['upload_image'] as $key => $move_image){
                $errorimages[$key] = rename(DIR_UPLOAD_TEMP.$this->session->data['upload_image'][$key]['new_file_name'],
                    DIR_IMAGE.'/docs/'.$folder_name.'/'.$this->session->data['image_names'][$key]);
            }
        }

        if(isset($this->session->data['upload_docs'])){
            if(!isset($folder_name)){
                $folder_name = $this->session->data['folder_order_id'] = $this->request->post['name'];
            }
            if(!is_dir( DIR_IMAGE.'/docs/'. $folder_name)){
                mkdir(DIR_IMAGE.'/docs/'.$folder_name, 0744);
            }
            $data["upload_docs"] = $this->session->data['upload_docs'];
            foreach($this->session->data['upload_docs'] as $key => $move_docs){
                $errorDocs[$key] = rename(DIR_UPLOAD_TEMP.$this->session->data['upload_docs'][$key]['new_file_name'],
                    DIR_IMAGE
                    .'/'
                    .$folder_name.'/'.$this->session->data['docs_names'][$key]);
            }
        }

        if(isset($errorimages) && isset($errorDocs)){
            return array_merge($errorimages, $errorDocs);
        }elseif(isset($this->session->data['upload_image'])){
            return $errorimages;
        }else{
            return 0;
        }
    }

	public function addOrder()
	{
        if ($this->session->data['product_type_a'] == 62 || $this->session->data['product_type_a'] == 63){
            $price =  $this->model_catalog_product->getIdToPrice($this->session->data['nationality_id'], $this->session->data['product_type_a']);
            $this->load->model('checkout/order');
            $details = $this->model_catalog_product->getProductDetails($this->session->data['nationality_id']);

            if ($details['need_supporting_docs'] == "1"){
                $moveError = $this->moveTempFiles();
                $order_data['name'] = $this->request->post['name'];//
                $order_data['surname'] = $this->request->post['surname'];//
                $order_data['birthdate'] = $this->request->post['birthdate'];
                $order_data['birthplace'] = $this->request->post['birthplace'];
                $order_data['passport_number'] = $this->request->post['passport_number'];
                $order_data['email'] = $this->request->post['email'];//
                $order_data['phone'] = $this->request->post['phone'];//
                $order_data['residence_address'] = $this->request->post['residence_address'];
                $order_data['passport_issue_date'] = $this->request->post['passport_issue_date'];
                $order_data['passport_expiry_date'] = $this->request->post['passport_expiry_date'];
                $order_data['supporting_document_type'] = $this->request->post['supporting_document_type'];
                $order_data['supporting_document'] = $this->request->post['supporting_document'];
                $order_data['supporting_document_number'] = $this->request->post['supporting_document_number'];
                $order_data['supporting_document_expiry_date'] = $this->request->post['supporting_document_expiry_date'];
                $order_data['total'] = $price['price'];//
                $order_data['category'] = $price['catname'];
                $order_data['arrival_date'] = $this->session->data['arrival_date'];
                $order_data['order_status_id'] = 1;

                $this->session->data['order_id'] = $this->model_checkout_order->addMyOrderDocs($order_data);
            }else{
                $moveError = $this->moveTempFiles();
                $order_data['name'] = $this->request->post['name'];
                $order_data['surname'] = $this->request->post['surname'];
                $order_data['birthdate'] = $this->request->post['birthdate'];
                $order_data['birthplace'] = $this->request->post['birthplace'];
                $order_data['passport_number'] = $this->request->post['passport_number'];
                $order_data['email'] = $this->request->post['email'];
                $order_data['phone'] = $this->request->post['phone'];//
                $order_data['residence_address'] = $this->request->post['residence_address'];
                $order_data['passport_issue_date'] = $this->request->post['passport_issue_date'];
                $order_data['passport_expiry_date'] = $this->request->post['passport_expiry_date'];
                $order_data['total'] = $price['price'];
                $order_data['category'] = $price['catname'];
                $order_data['arrival_date'] = $this->session->data['arrival_date'];
                $order_data['order_status_id'] = 1;

                $this->session->data['order_id'] = $this->model_checkout_order->addMyOrder($order_data);
            }
        }
        elseif ($this->session->data['product_type_a'] == 64 || $this->session->data['product_type_a'] == 65){
            $price =  $this->model_catalog_product->getIdToPrice($this->session->data['nationality_id'], $this->session->data['product_type_a']);
            $this->load->model('checkout/order');
            $details = $this->model_catalog_product->getProductDetails($this->session->data['nationality_id']);

            //eğer sigorta istendiyse 10 dolar ekle.

            $moveError = $this->moveTempFiles();

            if(!(in_array(FALSE, $moveError, TRUE)) && count($moveError) == count($this->session->data['upload_image'])) {
                $codeImageString = "";

                end($this->session->data['upload_image']);
                $last_key = key($this->session->data['upload_image']);
                foreach ($this->session->data['upload_image'] as $key => $photo) {
                    $codeImageString .= $photo['code'];
                    if ($last_key != $key) {
                        $codeImageString .= ', ';
                    }
                }
            }
            elseif(!(in_array(FALSE, $moveError, TRUE)) && count($moveError) == (count($this->session->data['upload_image'])+count($this->session->data['upload_docs']))){
                $codeImageString = "";

                end($this->session->data['upload_image']);
                $last_key = key($this->session->data['upload_image']);
                foreach ($this->session->data['upload_image'] as $key => $photo) {
                    $codeImageString .= $photo['code'];
                    if ($last_key != $key) {
                        $codeImageString .= ', ';
                    }
                }
                $codeDocsString = "";

                end($this->session->data['upload_docs']);
                $last_key = key($this->session->data['upload_docs']);
                foreach ($this->session->data['upload_docs'] as $key => $photo) {
                    $codeDocsString .= $photo['code'];
                    if ($last_key != $key) {
                        $codeDocsString .= ', ';
                    }
                }
            }
            else{
                $this->response->redirect($this->url->link('common/applyform'));
            }

            $insurance = 0;
            if($this->session->data['insurance'] == 1)
                $insurance = 10;

            $order_data['nationality'] = $this->session->data['nationality_id'];
            $order_data['name'] = $this->session->data['folder_order_id'];
            $order_data['photos'] = $codeImageString;
            if(isset($codeDocsString)){$order_data['supporting_document'] = $codeDocsString;}
            $order_data['category'] = $price['catname'];
            $order_data['arrival_date'] = $this->session->data['arrival_date'];
            $order_data['insurance'] = $this->session->data['insurance'];
            $order_data['total'] = intval($price['price'])+$insurance;
            $order_data['order_status_id'] = 1;

            $this->session->data['order_id'] = $this->model_checkout_order->addMyOrderEasy($order_data);
        }
        else{
            $this->response->redirect($this->url->link('common/applyform'));
        }


	}

	public function uploadPhoto(){
        $this->load->language('tool/upload');

        $json = array();

        if (!empty($this->request->files['image']['name']) && is_file($this->request->files['image']['tmp_name'])) {
            $tmp_name = $this->request->files['image']['tmp_name'];

            // Sanitize the filename
            $filename = basename(preg_replace('/[^a-zA-Z0-9\.\-\s+]/', '', html_entity_decode($this->request->files['image']['name'], ENT_QUOTES, 'UTF-8')));

            // Validate the filename length
            if ((utf8_strlen($filename) < 3) || (utf8_strlen($filename) > 64)) {
                $json['error'] = $this->language->get('error_filename');
            }

            // Allowed file extension types
            $allowed = array();

            $extension_allowed = preg_replace('~\r?\n~', "\n", $this->config->get('config_file_ext_allowed'));

            $filetypes = explode("\n", $extension_allowed);

            foreach ($filetypes as $filetype) {
                $allowed[] = trim($filetype);
            }

            if (!in_array(strtolower(substr(strrchr($filename, '.'), 1)), $allowed)) {
                $json['error'] = $this->language->get('error_filetype');
            }

            // Allowed file mime types
            $allowed = array();

            $mime_allowed = preg_replace('~\r?\n~', "\n", $this->config->get('config_file_mime_allowed'));

            $filetypes = explode("\n", $mime_allowed);

            foreach ($filetypes as $filetype) {
                $allowed[] = trim($filetype);
            }

            if (!in_array($this->request->files['image']['type'], $allowed)) {
                $json['error'] = $this->language->get('error_filetype');
            }

            // Check to see if any PHP files are trying to be uploaded
            $content = file_get_contents($this->request->files['image']['tmp_name']);

            if (preg_match('/\<\?php/i', $content)) {
                $json['error'] = $this->language->get('error_filetype');
            }

            // Return any upload error
            if ($this->request->files['image']['error'] != UPLOAD_ERR_OK) {
                $json['error'] = $this->language->get('error_upload_' . $this->request->files['image']['error']);
            }
        } else {
            $json['error'] = $this->language->get('error_upload');
        }

        if (!$json) {
            $ext = pathinfo($filename);
            $file = $ext['filename'] . '.' . md5(mt_rand()) . "." . $ext['extension'];

            move_uploaded_file($this->request->files['image']['tmp_name'], DIR_UPLOAD_TEMP . $file);

            // Hide the uploaded file name so people can not link to it directly.
            $this->load->model('tool/upload');

            $json['tmp_name'] = $tmp_name;
            $json['code'] = $this->model_tool_upload->addUpload($filename, $file);
            $json['file_location'] = DIR_UPLOAD_TEMP . $file;
            $json['success'] = $this->language->get('text_upload');
        }

       return $json;
    }

    public function uploadMultiplePhotos($image_array){
	    $this->load->language('tool/upload');

        $json = array();

        $check_file = 0;
        $check_empty = 0;

        foreach ($image_array as $is_file){
            if(!is_file($is_file['tmp_name'])){
                $check_file = 1;
            }
        }

        foreach ($image_array as $empty){
            if(empty($empty['name'])){
                $check_empty = 1;
            }
        }

        if ($check_empty == 0 && $check_file == 0) {
            foreach ($image_array as $key => $image_file) {
                $tmp_name[$key] = $image_file['tmp_name'];

                // Sanitize the filename
                $filenames[$key] = basename(preg_replace('/[^a-zA-Z0-9\.\-\s+]/', '', html_entity_decode
                ($image_file['name'], ENT_QUOTES, 'UTF-8')));

                // Validate the filename length
                if ((utf8_strlen($filenames[$key]) < 3) || (utf8_strlen($filenames[$key]) > 64)) {
                    $json['error'] = $this->language->get('error_filename');
                }

                // Allowed file extension types
                $allowed = array();

                $extension_allowed = preg_replace('~\r?\n~', "\n", $this->config->get('config_file_ext_allowed'));

                $filetypes = explode("\n", $extension_allowed);

                foreach ($filetypes as $filetype) {
                    $allowed[] = trim($filetype);
                }

                if (!in_array(strtolower(substr(strrchr($filenames[$key], '.'), 1)), $allowed)) {
                    $json['error'] = $this->language->get('error_filetype');
                }

                // Allowed file mime types
                $allowed = array();

                $mime_allowed = preg_replace('~\r?\n~', "\n", $this->config->get('config_file_mime_allowed'));

                $filetypes = explode("\n", $mime_allowed);

                foreach ($filetypes as $filetype) {
                    $allowed[] = trim($filetype);
                }

                if (!in_array($image_file['type'], $allowed)) {
                    $json['error'] = $this->language->get('error_filetype');
                }

                // Check to see if any PHP files are trying to be uploaded
                $content = file_get_contents($image_file['tmp_name']);

                if (preg_match('/\<\?php/i', $content)) {
                    $json['error'] = $this->language->get('error_filetype');
                }

                // Return any upload error
                if ($image_file['error'] != UPLOAD_ERR_OK) {
                    $json['error'] = $this->language->get('error_upload_' . $image_file['error']);
                }
            }
        } else {
            $json['error'] = $this->language->get('error_upload');
        }

        if (!$json) {
            foreach ($filenames as $key => $file){
                $ext = pathinfo($file);
                $file = $ext['filename'] . '.' . md5(mt_rand()) . "." . $ext['extension'];

                move_uploaded_file($tmp_name[$key], DIR_UPLOAD_TEMP . $file);

                // Hide the uploaded file name so people can not link to it directly.
                $this->load->model('tool/upload');

                $json[$key]['tmp_name'] = $tmp_name[$key];
                $json[$key]['code'] = $this->model_tool_upload->addUpload($filenames[$key], $file);
                $json[$key]['file_location'] = DIR_UPLOAD_TEMP . $file;
                $json[$key]['new_file_name'] = $file;
                $json[$key]['success'] = $this->language->get('text_upload');
            }
        }
        return $json;
    }
    
	public function uploadDocs($docs_array)
    {
        $this->load->language('tool/upload');

        $json = array();

        $check_file = 0;
        $check_empty = 0;

        foreach ($docs_array as $is_file) {
            if (!is_file($is_file['tmp_name'])) {
                $check_file = 1;
            }
        }

        foreach ($docs_array as $empty) {
            if (empty($empty['name'])) {
                $check_empty = 1;
            }
        }

        if ($check_empty == 0 && $check_file == 0) {
            foreach ($docs_array as $key => $docs_file) {
                $tmp_name[$key] = $docs_file['tmp_name'];

                // Sanitize the filename
                $filenames[$key] = basename(preg_replace('/[^a-zA-Z0-9\.\-\s+]/', '', html_entity_decode
                ($docs_file['name'], ENT_QUOTES, 'UTF-8')));

                // Validate the filename length
                if ((utf8_strlen($filenames[$key]) < 3) || (utf8_strlen($filenames[$key]) > 64)) {
                    $json['error'] = $this->language->get('error_filename');
                }

                // Check to see if any PHP files are trying to be uploaded
                $content = file_get_contents($docs_file['tmp_name']);

                if (preg_match('/\<\?php/i', $content)) {
                    $json['error'] = $this->language->get('error_filetype');
                }

                // Return any upload error
                if ($docs_file['error'] != UPLOAD_ERR_OK) {
                    $json['error'] = $this->language->get('error_upload_' . $docs_file['error']);
                }
            }
        } else {
            $json['error'] = $this->language->get('error_upload');
        }

        if (!$json) {
            foreach ($filenames as $key => $file) {
                $ext = pathinfo($file);
                $file = $ext['filename'] . '.' . md5(mt_rand()) . "." . $ext['extension'];

                move_uploaded_file($tmp_name[$key], DIR_UPLOAD_TEMP . $file);

                // Hide the uploaded file name so people can not link to it directly.
                $this->load->model('tool/upload');

                $json[$key]['tmp_name'] = $tmp_name[$key];
                $json[$key]['code'] = $this->model_tool_upload->addUpload($filenames[$key], $file);
                $json[$key]['file_location'] = DIR_UPLOAD_TEMP . $file;
                $json[$key]['new_file_name'] = $file;
                $json[$key]['success'] = $this->language->get('text_upload');
            }
        }
        return $json;
    }
}