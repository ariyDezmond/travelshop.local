<?php

class Admin extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('admins_model');
    }

    public function index() {
        $this->load->helper('url');

        if (!$this->session->userdata('logged')) {
            redirect('admin/login');
        } else {
            redirect('admin/main');
        }
    }

    public function login() {
        if ($this->session->userdata('logged')) {
            redirect('admin/main');
        }

        $this->form_validation->set_rules('login', 'Логин', 'callback_username_check');
        $this->form_validation->set_rules('pass', 'Пароль', 'required');

        $this->form_validation->set_error_delimiters('<div class="alert alert-danger" role="alert">', '</div>');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('pages/login');
        } else {
            redirect('admin/main');
        }
    }

    public function username_check() {
        if ($this->admins_model->get_user()) {
            $this->session->set_userdata('logged', true);
            return true;
        } else {
            $this->form_validation->set_message('username_check', 'Неверный логин и/или пароль');
            return false;
        }
    }

    public function view($page = 'main') {
        
        if ($page == 'login' && !$this->session->userdata('logged')) {
            redirect('admin/login');
        }
        

        $data['title'] = 'Административная панель';
        $this->load->view('templates/metahead', $data);
        $this->load->view('templates/navbar', $data);
        $this->load->view('pages/' . $page, $data);
        $this->load->view('templates/footer', $data);
    }
    

    public function logout() {
        $this->session->unset_userdata('logged');
        $this->session->sess_destroy();
        redirect('admin/login');
    }

}
