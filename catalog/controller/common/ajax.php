<?php
class ControllerCommonAjax extends Controller{

    //Vize applyform.tpl içinden çağırılıyor
    public function getValues(){
        $supportingTypeId['id'] = $this->request->post['id'];
        $this->load->model('checkout/order');

        $documentTypes = $this->model_checkout_order->getSupportingDocuments($supportingTypeId);

        echo '<option disabled hidden selected value="">Please select a document</option>';

        foreach ($documentTypes as $item){
            echo '<option value="'.$item['id'].'">'.$item['name'].'</option>';
        }
    }
}