<?php

class Vises extends MX_Controller {

    private $module = 'vises';
    private $module_name = 'Визовые услуги';

    public function __construct() {
        parent::__construct();
        $this->load->model('vises_model');
    }

    public function index() {
        $this->load->helper('url');

        if (!$this->session->userdata('logged')) {
            redirect('admin/login');
        } else {
            redirect('admin/main');
        }
    }

    public function get() {
        return $this->vises_model->get();
    }

    public function view($front = false) {
        $data['module_name'] = $this->module_name;
        $data['module'] = $this->module;
        $data['entry'] = $this->vises_model->get();
        if ($front) {
            $this->load->view('front/viese', $data);
        } else {
            $this->load->view($this->module, $data);
        }
    }

    public function edit($id = null) {
        if ($this->input->post('do') == $this->module . 'Edit') {
            $this->form_validation->set_rules('adress', 'Адрес', 'trim|xss_clean');
            $this->form_validation->set_rules('phone', 'Телефон(ы)', 'trim|xss_clean');
            $this->form_validation->set_rules('email', 'E-mail', 'trim|valid_email|xss_clean');
            $this->form_validation->set_rules('coords', 'Координаты на карте', 'trim|xss_clean');
            $this->form_validation->set_rules('social_text', 'Текст', 'trim|xss_clean');
            $this->form_validation->set_rules('social_vk', 'Мета keywords', 'trim|xss_clean');
            $this->form_validation->set_rules('social_fb', 'Мета keywords', 'trim|xss_clean');
            $this->form_validation->set_rules('social_tw', 'Мета keywords', 'trim|xss_clean');
            $this->form_validation->set_rules('social_ok', 'Мета keywords', 'trim|xss_clean');

            $this->form_validation->set_error_delimiters('<span class="label label-danger">', '</span>');

            if ($this->form_validation->run() == FALSE) {
                $arr = array(
                    'error' => '<div class="alert alert-danger" role="alert"><strong>Oops! </strong>Не валидный e-mail адрес!</div>'
                );
                $this->session->set_userdata($arr);
                redirect('admin/' . $this->module);
            } else {
                $this->vises_model->update($id);
                $arr = array(
                    'error' => '<div class="alert alert-success" role="alert"><strong>Успех! </strong>Запись была успешно обновлена!</div>'
                );
                $this->session->set_userdata($arr);
                redirect('admin/' . $this->module);
            }
        } else {
            $this->load->view($this->module, $data);
        }
    }

}
