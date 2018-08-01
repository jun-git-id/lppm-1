<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hibah extends CI_Controller {

	// Load database
	public function __construct(){
		parent::__construct();
		$this->load->model('hibah_model');
	}

	// Index
	public function index() {
		// cek akses level
		if ($this->session->userdata('akses_level') == 'Dosen') {
			redirect(base_url('admin/hibah/detailall'),'refresh');
		}
		$hibah = $this->hibah_model->listing();

		$data = array(	'title'		=> 'Data hibah',
						'hibah'		=> $hibah,
						'isi'		=> 'admin/hibah/list');
		$this->load->view('admin/layout/wrapper', $data);
	}

	// Tambah
	public function tambah() {

		// Validasi
		$v = $this->form_validation;

		$v->set_rules('hibah_judul','Nama hibah','required',
					array(	'required'		=> 'Nama hibah harus diisi'));

		if($v->run()) {
			$config['upload_path'] 		= './uploads/hibah/';
			$config['allowed_types'] 	= 'pdf|doc|docx|xls|xlsx';
			$config['max_size']			= '50000'; // KB	
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('hibah_file')) {
			// End validasi
				$data = array(	'title'		=> 'Tambah hibah',
					'error'		=> $this->upload->display_errors(),
					'isi'		=> 'admin/hibah/tambah');
				$this->load->view('admin/layout/wrapper', $data);
			// Masuk database
			}else{

				$upload_data				= array('uploads' =>$this->upload->data());

				// Proses ke database
				$i = $this->input;
				$data = array(	'id_user'				=> $this->session->userdata('id'),
								'hibah_judul'			=> $i->post('hibah_judul'),
								'hibah_file'			=> $upload_data['uploads']['file_name'],
								'hibah_keterangan'		=> $i->post('hibah_keterangan'),
							);
				$this->hibah_model->tambah($data);
				$this->session->set_flashdata('sukses','Hibah telah ditambah');

				// meredirek sesuai aksess level
				$akses_level = $this->session->userdata('akses_level');
				$akses_id = $this->session->userdata('id');
				if ($akses_level == 'Admin') {
					redirect(base_url('admin/hibah'));
				}else{
					redirect(base_url('admin/hibah/detailall/'.$akses_id));
				}
			}
		}
	// End masuk database
		$data = array(	'title'		=> 'Tambah hibah',
			'isi'		=> 'admin/hibah/tambah');
		$this->load->view('admin/layout/wrapper', $data);
	}


	// Edit
	public function edit($hibah_id) {

		// cek akses level
		if ($this->session->userdata('akses_level') == 'Dosen') {
			redirect(base_url('admin/hibah/detailall'),'refresh');
		}

		// melihat detail di database
		$hibah = $this->hibah_model->detail($hibah_id);
		// Validasi
		$v = $this->form_validation;

		$v->set_rules('hibah_judul','judul hibah','required',
			array(	'required'		=> 'Nama hibah harus diisi'));

		if($v->run()) {
			if(!empty($_FILES['hibah_file']['name'])) {
				$config['upload_path'] 		= './uploads/hibah/';
				$config['allowed_types'] 	= 'pdf|doc|docx|xls|xlsx';
				$config['max_size']			= '50000'; // KB	
				$this->load->library('upload', $config);
				if(! $this->upload->do_upload('hibah_file')) {
				// End validasi

					$data = array(	'title'		=> 'Edit hibah',
						'hibah'	=> $hibah,
						'error'		=> $this->upload->display_errors(),
						'isi'		=> 'admin/hibah/edit');
					$this->load->view('admin/layout/wrapper', $data);
				// Masuk database
				}else{
					$upload_data				= array('uploads' =>$this->upload->data());

					//delete file lama
					if(!empty($hibah->hibah_file)){
						unlink('./uploads/hibah/'.$hibah->hibah_file);
					}

					// Proses ke database
					$i = $this->input;
					$data = array(	'hibah_id'				=> $hibah_id,
									'hibah_judul'			=> $i->post('hibah_judul'),
									'hibah_file'			=> $upload_data['uploads']['file_name'],
									'hibah_keterangan'		=> $i->post('hibah_keterangan'),
								);
					$this->hibah_model->edit($data);
					$this->session->set_flashdata('sukses','Hibah telah diedit');
					redirect(base_url('admin/hibah'));
				}}else{
				// Proses ke database
					$i = $this->input;
					$data = array(	'hibah_id'				=> $hibah_id,
									'hibah_judul'			=> $i->post('hibah_judul'),
									'hibah_keterangan'		=> $i->post('hibah_keterangan'),									
								);
					$this->hibah_model->edit($data);
					$this->session->set_flashdata('sukses','Hibah telah diedit');
					redirect(base_url('admin/hibah'));
				}}
				// End masuk database
				$data = array(	'title'		=> 'Edit hibah',
					'hibah'	=> $hibah,
					'isi'		=> 'admin/hibah/edit'); 
				$this->load->view('admin/layout/wrapper', $data);
	}

	// Delete
	public function delete($hibah_id) {

		// cek akses level
		if ($this->session->userdata('akses_level') == 'Dosen') {
			redirect(base_url('admin/hibah/detailall'),'refresh');
		}
		
		// delete file hibah
		$hibah = $this->hibah_model->detail($hibah_id);
		if(!empty($hibah->hibah_file)){
			unlink('./uploads/hibah/'.$hibah->hibah_file);
		}

		$data = array('hibah_id'	=> $hibah_id);
		$this->hibah_model->delete($data);

		// kirim message sukses
		$this->session->set_flashdata('sukses','Data telah didelete');
		redirect(base_url('admin/hibah'));		
	}

	// detail per pemberi
	public function detailall()
	{
		$akses_id = $this->session->userdata('id');
		$hibah = $this->hibah_model->detailall($akses_id);

		$data = array(	'title'		=> 'Data hibah',
						'hibah'		=> $hibah,
						'isi'		=> 'admin/hibah/listall');
		$this->load->view('admin/layout/wrapper', $data);
	}

}