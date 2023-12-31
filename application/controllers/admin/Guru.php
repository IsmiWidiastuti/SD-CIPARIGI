<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Guru extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->userdata('level')){
			$this->session->set_flashdata('pesan', 'Anda harus masuk terlebih dahulu!');
			redirect('home');
		} elseif($this->session->userdata('level') != 'Administrator') {
            $this->session->set_flashdata('pesan', 'Anda bukan administrator!');
			redirect('home');
        }
	}

	public function index()
	{
        $data['title']  = 'Data Guru';
        $this->db->where('level', 'Guru');
        $data['guru']   = $this->m_model->get_desc('tb_user');
		
		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/templates/sidebar');
		$this->load->view('admin/guru');
		$this->load->view('admin/templates/footer');
    }
    
    public function insert()
    {
        date_default_timezone_set('Asia/Jakarta');

        $nama           = $_POST['nama'];
        $jenisKelamin   = $_POST['jenisKelamin'];
        $tptLahir       = $_POST['tptLahir'];
        $tglLahir       = $_POST['tglLahir'];
        $telp           = $_POST['telp'];
        $alamat         = $_POST['alamat'];
        $username       = $_POST['username'];
        $password       = $_POST['password'];
        $level          = 'Guru';
        $terdaftar      = date('Y-m-d H:i:s');
        $foto           = 'no-image.png';

        $options = [
            'cost' => 10,
        ];

        $enkripPassword = password_hash($password, PASSWORD_BCRYPT, $options);

        $data = array(
            'nama'          => $nama,
            'jenisKelamin'  => $jenisKelamin,
            'tptLahir'      => $tptLahir,
            'tglLahir'      => $tglLahir,
            'telp'          => $telp,
            'alamat'        => $alamat,
            'username'      => $username,
            'password'      => $enkripPassword,
            'level'         => $level,
            'terdaftar'     => $terdaftar,
            'foto'          => $foto,
        );

        $this->m_model->insert($data, 'tb_user');
        $this->session->set_flashdata('pesan', 'Data guru berhasil ditambahkan!');
        redirect('admin/guru');
    }

    public function delete($id)
    {
        $where = array('id' => $id);

        $this->m_model->delete($where, 'tb_user');
        $this->session->set_flashdata('pesan', 'Data guru berhasil dihapus!');
        redirect('admin/guru');
    }
}