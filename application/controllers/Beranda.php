<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Beranda extends CI_Controller {

	public function index()
	{
		$this->load->view('beranda/list.php');		
	}

}

/* End of file Beranda.php */
/* Location: ./application/controllers/admin/Beranda.php */