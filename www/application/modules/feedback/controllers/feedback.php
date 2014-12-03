<?php

class Feedback extends MX_Controller {

    private $module = 'feedback';
    private $module_name = 'Обратная связь';

    public function __construct() {
        parent::__construct();
        $this->load->model('feedback_model');
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
            $this->feedback_model->save_email();
        }
    }

    public function view($for_front = false) {
        $data['module_name'] = $this->module_name;
        $data['module'] = $this->module;
        $data['email'] = $this->feedback_model->get_email();
        if (!$for_front) {
            $data['entries'] = $this->feedback_model->get();
            $this->load->view($this->module, $data);
        } else {
            $data['entries'] = $this->feedback_model->get('', true);
            $this->load->view('front/feedback_form', $data);
        }
    }

    public function save() {
        if ($this->input->post('do') == $this->module . 'Save') {
            $this->form_validation->set_rules('name', 'Имя', 'required|trim|xss_clean');
            $this->form_validation->set_rules('phone', 'Телефон', 'required|trim|xss_clean');
            $this->form_validation->set_rules('text', 'Сообщение', 'required|trim|xss_clean');
            $this->form_validation->set_rules('email', 'E-mail', 'required|valid_email|trim|xss_clean');

            $this->form_validation->set_error_delimiters('<p style="color:red;">', '</p>');

            if ($this->form_validation->run() == FALSE) {
                $this->load->view('front/feedback_form');
            } else {
                $this->feedback_model->set();
                echo '<p style="margin:10px; font-weight:bold; text-align:center; color:green">Успех! Сообщение отправлено.</p>';
                //$arr = array(
                //    'error' => '<p style="margin:10px; font-weight:bold; text-align:center; color:green">Успех! Заявка на поиск отеля была успешно отправлена! Ожидайте...наш менеджер свяжется с вам в ближайшее время.</p>'
                //);
                //$this->session->set_userdata($arr);
                //$this->load->view('front/request_form');
            }
        } else {
            $this->load->view('front/feedback_form');
        }
    }

    public function more($id = null) {
        $data['title'] = 'Административная панель';
        $data['module_name'] = $this->module_name;
        $data['module'] = $this->module;
        $entry = $this->feedback_model->get($id);
        $data['entry'] = $entry;
        $this->load->view('more', $data);
    }

    public function setread() {
        if (!$this->session->userdata('logged')) {
            redirect('admin/login');
        }
        if ($this->input->post('id')) {
            $id = $this->input->post('id');
            $this->feedback_model->update_request_read($id);
        }
    }

    public function delete($id) {
        $entry = $this->feedback_model->get($id);
        if (count($entry) > 0) {
            $this->feedback_model->delete($id);
            redirect('admin/' . $this->module);
        } else {
            die('Ошибка! Такой записи в базе не существует!');
        }
    }

    public function up($id) {
        $this->feedback_model->order($id, 'up');
    }

    public function down($id) {
        $this->feedback_model->order($id, 'down');
    }

}
