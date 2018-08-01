<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hibah_model extends CI_Model {
	
	// Load database
	public function __construct() {
		parent::__construct();
		$this->load->database();
	}
	
	//Listing
	public function listing() {
		$this->db->select('hibah.*, users.nama');
		$this->db->from('hibah');
		$this->db->join('users','users.id_user = hibah.id_user','LEFT');
		$query = $this->db->get();
		return $query->result();
	}
	
	//Read
	public function read($slug_hibah) {
		$this->db->select('hibah.*, kategori_hibah.nama_kategori_hibah, users.nama');
		$this->db->from('hibah');
		// Join
		$this->db->join('kategori_hibah','kategori_hibah.id_kategori_hibah = hibah.id_kategori_hibah', 'LEFT');
		$this->db->join('users','users.id_user = hibah.id_user','LEFT');
		// End join
		$this->db->where('slug_hibah',$slug_hibah);
		$this->db->order_by('id_hibah','DESC');
		$query = $this->db->get();
		return $query->row();
	}
	
	//Kategori
	public function kategori($id_kategori_hibah) {
		$this->db->select('hibah.*, kategori_hibah.nama_kategori_hibah, users.nama');
		$this->db->from('hibah');
		// Join
		$this->db->join('kategori_hibah','kategori_hibah.id_kategori_hibah = hibah.id_kategori_hibah', 'LEFT');
		$this->db->join('users','users.id_user = hibah.id_user','LEFT');
		// End join
		$this->db->where('hibah.id_kategori_hibah',$id_kategori_hibah);
		$this->db->order_by('id_hibah','DESC');
		$query = $this->db->get();
		return $query->result();
	}
	
	//Home
	public function home() {
		$this->db->select('hibah.*, kategori_hibah.nama_kategori_hibah, users.nama');
		$this->db->from('hibah');
		// Join
		$this->db->join('kategori_hibah','kategori_hibah.id_kategori_hibah = hibah.id_kategori_hibah', 'LEFT');
		$this->db->join('users','users.id_user = hibah.id_user','LEFT');
		// End join
		$this->db->where('hibah.status_hibah','Publish');
		$this->db->order_by('id_hibah','DESC');
		$this->db->limit(6);
		$query = $this->db->get();
		return $query->result();
	}
	
	// detail perhibah
	public function detail($hibah_id){
		$query = $this->db->get_where('hibah',array('hibah_id'  => $hibah_id));
		return $query->row();
	}
	
	// Tambah
	public function tambah ($data) {
		$this->db->insert('hibah',$data);
	}
	
	// Edit 
	public function edit ($data) {
		$this->db->where('hibah_id',$data['hibah_id']);
		$this->db->update('hibah',$data);
	}
	
	// Delete
	public function delete ($data){
		$this->db->where('hibah_id',$data['hibah_id']);
		$this->db->delete('hibah',$data);
	}

	// detail per pemberi
	public function detailall($akses_id)
	{
		$this->db->where('id_user', $akses_id);
		return $this->db->get('hibah')->result();
	}
}