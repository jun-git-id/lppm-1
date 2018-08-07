<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Beranda extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('berita_model');
	}

	public function index()
	{
		$data['berita'] = $this->berita_model->home();
		$data['isi'] 	= 'beranda/list.php';
		$this->load->view('template.php',$data);		
	}

}

/* End of file Beranda.php */
/* Location: ./application/controllers/admin/Beranda.php */