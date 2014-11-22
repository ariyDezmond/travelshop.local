<?php

class Admin extends MX_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('admins_model');
        $this->form_validation->set_message('required', 'Поле "%s" обязательно для заполения');
        $this->form_validation->set_message('valid_email', 'Поле "%s" должно содержать валидный E-mail адрес');
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

        if ($this->input->post('login')) {

            $this->form_validation->set_rules('login', 'Логин', 'required');
            $this->form_validation->set_rules('pass', 'Пароль', 'required');

            $this->form_validation->set_error_delimiters('<div class="alert alert-danger" role="alert">', '</div>');

            if ($this->admins_model->get_user()) {
                $this->session->set_userdata('logged', true);
            } else {
                $arr = array(
                    'error' => '<div class="alert alert-danger" role="alert"><strong>Ошибка! </strong>Неверный логин и/или пароль!</div>'
                );
                $this->session->set_userdata($arr);
            }
        }
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('admin/pages/login');
        } else {
            redirect('admin/main');
        }
    }

    public function view($page = 'main') {
        if ($page != 'login' && !$this->session->userdata('logged')) {
            redirect('admin/login');
        }

        $data['title'] = 'Административная панель';
        $this->load->view('templates/metahead', $data);
        $this->load->view('templates/navbar', $data);
        $this->load->view('pages/' . $page, $data);
        $this->load->view('templates/footer', $data);
    }

    public function edit($page, $id) {
        if (!$this->session->userdata('logged')) {
            redirect('admin/login');
        }
        $data['title'] = 'Редактирование записи - административная панель';
        $data['page'] = $page;
        $data['id'] = $id;
        $this->load->view('templates/metahead', $data);
        $this->load->view('templates/navbar', $data);
        $this->load->view('pages/edit', $data);
        $this->load->view('templates/footer', $data);
    }

    public function add($page) {
        if (!$this->session->userdata('logged')) {
            redirect('admin/login');
        }
        $data['title'] = 'Добавление записи - административная панель';
        $data['page'] = $page;
        $this->load->view('templates/metahead', $data);
        $this->load->view('templates/navbar', $data);
        $this->load->view('pages/add', $data);
        $this->load->view('templates/footer', $data);
    }

    public function logout() {
        $this->session->unset_userdata('logged');
        $this->session->sess_destroy();
        redirect('admin/login');
    }

}
