<?php

class Toursbuy extends MX_Controller {

    private $module = 'toursbuy';
    private $module_name = 'Покупка туров';
    private $model;

    public function __construct() {
        parent::__construct();
        $this->model = $this->load->model('toursbuy_model');
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
        } else {
            $data['entries'] = $this->model->get('', true);
        }
        $this->load->view($this->module, $data);
    }

    public function send($id) {
        $data['id'] = $id;
        $data['module'] = $this->module;
        if ($this->input->post('do') == $this->module . 'Send') {
            $email = $this->model->get_email();
            $this->form_validation->set_rules('name', 'Имя', 'required|trim|xss_clean');
            $this->form_validation->set_rules('email', 'Email', 'required|valid_email|trim|xss_clean');
            $this->form_validation->set_rules('phone', 'Телефон', 'required|trim|xss_clean');

            $this->form_validation->set_error_delimiters('<p style="color:red;">', '</p>');

            if ($this->form_validation->run() == FALSE) {
                $this->load->view('front/' . $this->module, $data);
            } else {
                $this->model->set($id);
                echo '<p style="margin:10px; font-weight:bold; text-align:center; color:green">Спасибо за покупку! Наш менеджер свяжется с вам в ближайшее время!</p>';

                $emailArray = $this->model->get_email();
                if (valid_email($emailArray['email'])) {
                    $config = array(
                        'protocol' => 'smtp',
                        'smtp_host' => 'ssl://smtp.googlemail.com',
                        'smtp_port' => 465,
                        'smtp_user' => 'officialakniet@gmail.com',
                        'smtp_pass' => 'googstud321',
                        'mailtype' => 'html',
                        'charset' => 'utf-8'
                    );
                    $this->load->library('email');
                    $this->email->initialize($config);

                    $this->email->set_newline("\r\n");
                    $this->email->from('support@travelshop.ru', 'Новая покупка тура на сайте ' . str_ireplace('http://', '', substr(base_url(), 0, -1)));
                    $this->email->to($emailArray['email']);
                    $this->email->subject('Новая покупка тура на сайте ' . str_ireplace('http://', '', substr(base_url(), 0, -1)));
                    $this->email->message(
                            'Имя: ' . $this->input->post('name') . '<br>' .
                            'E-mail: ' . $this->input->post('email') . '<br>' .
                            'Телефон: ' . $this->input->post('phone') . '<br>' .
                            'Дата: ' . date('Y-m-d H:i:s') . '<br>' .
                            'IP: ' . $this->input->ip_address() . '<br>'
                    );
                    $this->email->send();
                }
                if (valid_email($this->input->post('email'))) {
                    $config = array(
                        'protocol' => 'smtp',
                        'smtp_host' => 'ssl://smtp.googlemail.com',
                        'smtp_port' => 465,
                        'smtp_user' => 'officialakniet@gmail.com',
                        'smtp_pass' => 'googstud321',
                        'mailtype' => 'html',
                        'charset' => 'utf-8'
                    );
                    $this->load->library('email');
                    $this->email->initialize($config);

                    $this->email->set_newline("\r\n");
                    $this->email->from('support@travelshop.ru', 'Сайт туристической компании ' . str_ireplace('http://', '', substr(base_url(), 0, -1)));
                    $this->email->to($emailArray['email']);
                    $this->email->subject('Спасибо за покупку на сайте ' . str_ireplace('http://', '', substr(base_url(), 0, -1)));
                    $this->email->message('Спасибо за покупку на сайте ' . str_ireplace('http://', '', substr(base_url(), 0, -1)).', наш менеджер скоро свяжется с вами для уточнения заказа. С уважением компания Travelshop.');
                    $this->email->send();
                }
            }
        } else {
            $this->load->view('front/' . $this->module, $data);
        }
    }

    public function more($id = null) {
        $data['title'] = 'Административная панель';
        $data['module_name'] = $this->module_name;
        $data['module'] = $this->module;
        $entry = $this->model->get($id);
        $data['entry'] = $entry;
        $data['tour'] = Modules::run('tours/get_by_id', $entry['tour_id']);
        $this->load->view('more', $data);
    }

    public function get_unread_requests() {
        return $this->model->get_unread_requests();
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

    public function save()
    {
        $token = 'f1cc605b8eb3c048a327695a587927a0'; 
        /*Партнерский маркер*/
        $marker = '72756'; 

        $aParams = array(
            'search[params_attributes][origin_name]' => $_GET['origin_iata'],
            'search[params_attributes][destination_name]' => $_GET['destination_iata'],
            'search[params_attributes][depart_date]' => $_GET['depart_date'],
            'search[params_attributes][return_date]' => $_GET['return_date'],
            'search[params_attributes][range]' => $_GET['range'],
            'search[params_attributes][adults]' => $_GET['adults'],
            'search[params_attributes][children]' => $_GET['children'],
            'search[params_attributes][infants]' => $_GET['infants'],
            'search[params_attributes][trip_class]' => $_GET['trip_class']
        ); 

        ksort($aParams);

        $signature = md5("$token:$marker:".implode(':', array_values($aParams)));

        $bParams = array(
            'signature' => $signature,
            'enable_api_auth' => true,
            'marker' => $marker
            );
        $aParams = $aParams + $bParams;

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, 'http://yasen.aviasales.ru/searches.json');
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($aParams));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_FAILONERROR, 1);
        /*Выполнение curl запроса*/
        $answer = curl_exec($ch);
        $answer = json_decode($answer, true);
        echo "<pre>"; 
        var_dump(($answer['tickets']));
        /*Вывод списка авиакомпаний, совершающих перелет по маршруту*/              
                        echo "<p>Перелеты между этими городами совершают <b>авиакомпании</b>: </p><ul>" ;
                        foreach ($answer['airlines'] as $value){
                            echo "<li>Name: " .$value['name']. "</li>";
                            echo "<li>Alliance name : " .$value['alliance_name']. "</li>";
                        }
                        echo "</ul>";
    }

    public function up($id) {
        $this->model->order($id, 'up');
    }

    public function down($id) {
        $this->model->order($id, 'down');
    }

}
