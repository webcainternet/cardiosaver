<?php
class ControllerTotalDescontoBancoSantander extends Controller {
    private $error = array();
    
    public function index() {
		$this->language->load('total/descontobancosantander');

        $this->document->setTitle($this->language->get('heading_title'));
        
		$this->load->model('setting/setting');
		
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('descontobancosantander', $this->request->post);
		
			$this->session->data['success'] = $this->language->get('text_success');
			
			$this->redirect($this->url->link('extension/total', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$this->data['entry_desconto'] = $this->language->get('entry_desconto');
		$this->data['entry_obs_title'] = $this->language->get('entry_obs_title');
		$this->data['entry_obs'] = $this->language->get('entry_obs');
					
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		
        if (isset($this->error['warning'])) {
            $this->data['error_warning'] = $this->error['warning'];
        } else {
            $this->data['error_warning'] = '';
        }

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_total'),
            'href'      => $this->url->link('extension/total', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );

        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('heading_title'),
            'href'      => $this->url->link('total/descontobancosantander', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );
                
		$this->data['action'] = $this->url->link('total/descontobancosantander', 'token=' . $this->session->data['token'], 'SSL');

        $this->data['cancel'] = $this->url->link('extension/total', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['countries'] = array();

		
        if (isset($this->request->post['descontobancosantander_desconto'])) {
            $this->data['descontobancosantander_desconto'] = $this->request->post['descontobancosantander_desconto'];
        } else {
            $this->data['descontobancosantander_desconto'] = $this->config->get('descontobancosantander_desconto');
        }
		
		if (isset($this->request->post['descontobancosantander_sort_order'])) {
            $this->data['descontobancosantander_sort_order'] = $this->request->post['descontobancosantander_sort_order'];
        } else {
            $this->data['descontobancosantander_sort_order'] = $this->config->get('descontobancosantander_sort_order');
        }
		
		if (isset($this->request->post['descontobancosantander_status'])) {
            $this->data['descontobancosantander_status'] = $this->request->post['descontobancosantander_status'];
        } else {
            $this->data['descontobancosantander_status'] = $this->config->get('descontobancosantander_status');
        }
             
        $this->load->model('localisation/tax_class');   
		
        $this->data['tax_classes'] = $this->model_localisation_tax_class->getTaxClasses();

        $this->template = 'total/descontobancosantander.tpl';
        $this->children = array(
            'common/header',
            'common/footer'
        );

        $this->response->setOutput($this->render());
    }

    private function validate() {
        return true;
    }
}
?>