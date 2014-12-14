<?php

class Reviews extends MX_Controller {

    private $module = 'reviews';
    private $module_name = 'Отзывы о турах';
    public $model;

    public function __construct() {
        parent::__construct();
        $this->load->model('reviews_model');
        $this->model = $this->reviews_model;
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

    public function savemail() {
        if (!$this->session->userdata('logged')) {
            redirect('admin/login');
        }
        if ($this->input->post('email')) {
            $email = $this->input->post('email');
            $this->model->save_email();
        }
    }

    public function view($for_front = false) {
        $data['module_name'] = $this->module_name;
        $data['module'] = $this->module;
        $data['email'] = $this->model->get_email();
        if (!$for_front) {
            $data['entries'] = $this->model->get();
            $this->load->view($this->module, $data);
        } else {
            $data['entries'] = $this->model->get('', true);
            $this->load->view('front/reviews_on_tour', $data);
        }
    }

    public function listOnMainPage() {
        $data['module_name'] = $this->module_name;
        $data['module'] = $this->module;

        $data['entries'] = $this->model->getForMainPage();
        $this->load->view('front/reviews_on_tour', $data);
    }

    public function fullList($startFrom) {
        $data['module_name'] = $this->module_name;
        $data['module'] = $this->module;

        $data['entries'] = $this->model->getForPagination($startFrom);
        $data['itemsCount'] = count($this->model->get('', true));
        $this->load->view('front/full_reviews_list', $data);
    }

    public function save() {
        $data['entries'] = $this->model->getForMainPage();
        if ($this->input->post('do') == $this->module . 'Save') {
            $this->form_validation->set_rules('name', 'Имя', 'required|trim|xss_clean');
            $this->form_validation->set_rules('text', 'Сообщение', 'required|trim|xss_clean');
            $this->form_validation->set_rules('email', 'E-mail', 'required|valid_email|trim|xss_clean');

            $this->form_validation->set_error_delimiters('<p style="color:red;">', '</p>');

            if ($this->form_validation->run() == FALSE) {
                $this->load->view('front/reviews_on_tour', $data);
            } else {
                $this->model->set();
                echo '<p style="margin:10px; font-weight:bold; text-align:center; color:green">Успех! Отзыв появится после рассмотрения администратором.</p>';

                $config = array(
                    'protocol' => 'smtp',
                    'smtp_host' => 'ssl://smtp.googlemail.com',
                    'smtp_port' => 465,
                    'smtp_user' => 'officialakniet@gmail.com',
                    'smtp_pass' => 'googstud321',
                    'mailtype'  => 'html',
                    'charset'   => 'utf-8'
                );
                $this->load->library('email');
                $this->email->initialize($config);

                $emailArray = $this->model->get_email();
                $this->email->set_newline("\r\n");
                $this->email->from($this->input->post('email'), $this->input->post('name'));
                $this->email->to($emailArray['email']);
                $this->email->subject('Новый отзыв на сайте');
                $this->email->message($this->input->post('text'));
                $this->email->send();
            }
        } else {
            $this->load->view('front/reviews_add_form', $data);
        }
    }

    public function edit($id = null) {
        if (!$this->session->userdata('logged')) {
            redirect('admin/login');
        }

        $data['title'] = 'Административная панель';
        $data['module_name'] = $this->module_name;
        $data['module'] = $this->module;
        $entry = $this->model->get($id);
        $data['entry'] = $entry;

        if ($this->input->post('do') == $this->module . 'Edit') {

            $this->form_validation->set_rules('name', 'Заголовок', 'required|trim|xss_clean');
            $this->form_validation->set_rules('email', 'E-mail', 'trim|valid_email|xss_clean');
            $this->form_validation->set_rules('text', 'Текст', 'trim|xss_clean');
            $this->form_validation->set_error_delimiters('<span class="label label-danger">', '</span>');

            if ($this->form_validation->run() == FALSE) {
                $this->load->view('edit', $data);
            } else {
                $this->model->update($id);

                $arr = array(
                    'error' => '<div class="alert alert-success" role="alert"><strong>Успех! </strong>Запись была успешно добавлена!</div>'
                );
                $this->session->set_userdata($arr);
                redirect('admin/' . $this->module . '/edit/' . $entry['id']);
            }
        } else {
            $this->load->view('edit', $data);
        }
    }

    public function update() {
        if (!$this->session->userdata('logged')) {
            redirect('admin/login');
        }
        if ($this->input->post('id')) {
            $id = $this->input->post('id');
            $this->model->update_request_read($id, $this->input->post('active'));
        }
    }

    public function setread() {
        if (!$this->session->userdata('logged')) {
            redirect('admin/login');
        }
        if ($this->input->post('id')) {
            $id = $this->input->post('id');
            $this->model->update_request_read($id);
        }
    }

    public function delete($id) {
        $entry = $this->model->get($id);
        if (count($entry) > 0) {
            $this->model->delete($id);
            redirect('admin/' . $this->module);
        } else {
            die('Ошибка! Такой записи в базе не существует!');
        }
    }

    public function up($id) {
        $this->model->order($id, 'up');
    }

    public function down($id) {
        $this->model->order($id, 'down');
    }

}
