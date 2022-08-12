<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('M_admin', 'm_admin');
    }

    public function index()
    {
        if ($this->session->userdata('role') != "admin") {
			echo "<script>
                alert('Anda harus login terlebih dahulu');
                window.location.href = '" . base_url('Admin/v_login') . "';
            </script>"; //Url Logi
		}
        $var['title'] = 'Home';
        $this->load->view('admin/dashboard', $var);
    }

    public function v_login()
    {
        $var['title'] = 'Admin | Login';
        $this->load->view('admin/login', $var);
    }

    public function login()
    {
        $this->form_validation->set_rules('username', 'Username', 'required|trim', ['required' => 'username tidak boleh kosong']);
        $this->form_validation->set_rules('password', 'Password', 'required|trim', ['required' => 'password tidak boleh kosong']);
        if ($this->form_validation->run() == false) {
            $this->load->view('admin/login');
        } else {
            $this->proses_login();
        }
    }

    private function proses_login()
    {
        $username = htmlspecialchars($this->input->post('username', TRUE), ENT_QUOTES);
        $password = htmlspecialchars($this->input->post('password', TRUE), ENT_QUOTES);

        $user = $this->db->get_where('admin', ['username' => $username])->row_array();
        $cekpass = $this->db->get_where('admin', array('password' => $password));

        if ($username == $user['username']) {
            if ($password == $user['password']) {
                $data = [
                    'id' => $user['id'],
                    'role' => $user['role'],
                    'username' => $user['username'],
                    'email' => $user['email'],
                ];
                $this->session->set_userdata($data);
                redirect('admin');
            } else {
                $this->session->set_flashdata('passwordsalah', true);
                redirect('admin/v_login');
            }
        } else {
            $this->session->set_flashdata('usernamesalah', true);
            redirect('admin/v_login');
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('id');
        $this->session->unset_userdata('username');
        $this->session->unset_userdata('email');
        $this->session->set_flashdata('logout', true);
        redirect('user');
    }

    public function penyakit()
    {
        if ($this->session->userdata('role') != "admin") {
			echo "<script>
                alert('Anda harus login terlebih dahulu');
                window.location.href = '" . base_url('Admin/v_login') . "';
            </script>"; //Url Logi
		}
        $var['title'] = 'Admin | Penyakit';
        $var['penyakit'] = $this->m_admin->get_penyakit();
        $var['penyakit2'] = $this->m_admin->get_penyakit();
        $this->load->view('admin/penyakit', $var);
    }

    public function save_penyakit()
    {
        if ($this->session->userdata('role') != "admin") {
			echo "<script>
                alert('Anda harus login terlebih dahulu');
                window.location.href = '" . base_url('Admin/v_login') . "';
            </script>"; //Url Logi
		}
        $this->m_admin->save_penyakit();
        $this->session->set_flashdata('berhasil', true);
        redirect('admin/penyakit');
    }

    public function update_penyakit()
    {
        
        $this->m_admin->update_penyakit();
        $this->session->set_flashdata('berhasil_update', true);
        redirect('admin/penyakit');
    }

    public function delete_penyakit($kd)
    {
        $this->db->delete('penyakit', ['kd_penyakit' => $kd]);
        $this->session->set_flashdata('berhasil_hapus', true);
        redirect('admin/penyakit');
    }

    public function gejala()
    {
        if ($this->session->userdata('role') != "admin") {
			echo "<script>
                alert('Anda harus login terlebih dahulu');
                window.location.href = '" . base_url('Admin/v_login') . "';
            </script>"; //Url Logi
		}
        $var['title'] = 'Admin | Gejala';
        $var['gejala'] = $this->m_admin->get_gejala();
        $var['gejala2'] = $this->m_admin->get_gejala();
        $this->load->view('admin/gejala', $var);
    }

    public function save_gejala()
    {
        $this->m_admin->save_gejala();
        $this->session->set_flashdata('berhasil', true);
        redirect('admin/gejala');
    }

    public function update_gejala()
    {
        $this->m_admin->update_gejala();
        $this->session->set_flashdata('berhasil_update', true);
        redirect('admin/gejala');
    }

    public function delete_gejala($kd)
    {
        $this->db->delete('gejala', ['kd_gejala' => $kd]);
        $this->session->set_flashdata('berhasil_hapus', true);
        redirect('admin/gejala');
    }

    public function rule()
    {
        if ($this->session->userdata('role') != "admin") {
			echo "<script>
                alert('Anda harus login terlebih dahulu');
                window.location.href = '" . base_url('Admin/v_login') . "';
            </script>"; //Url Logi
		}
        $var['title'] = 'Admin | Rule';
        $var['rule'] = $this->m_admin->get_rule();
        $var['penyakit'] = $this->m_admin->get_penyakit();
        $var['gejala'] = $this->m_admin->get_gejala();
        $var['rule2'] = $this->m_admin->get_rule();
        $this->load->view('admin/rule', $var);
    }

    public function save_rule()
    {
        $this->m_admin->save_rule();
        $this->session->set_flashdata('berhasil', true);
        redirect('admin/rule');
    }

    public function update_rule()
    {
        $this->m_admin->update_rule();
        $this->session->set_flashdata('berhasil_update', true);
        redirect('admin/rule');
    }

    public function delete_rule($id)
    {
        $this->db->delete('aturan', ['id_aturan' => $id]);
        $this->session->set_flashdata('berhasil_hapus', true);
        redirect('admin/rule');
    }

    public function pesan_kontak()
    {
        if ($this->session->userdata('role') != "admin") {
			echo "<script>
                alert('Anda harus login terlebih dahulu');
                window.location.href = '" . base_url('Admin/v_login') . "';
            </script>"; //Url Logi
		}
        $var['title'] = 'Admin | Pesan Kontak';
        $var['pesan'] = $this->m_admin->get_pesan();
        $var['pesan2'] = $this->m_admin->get_pesan();
        $this->load->view('admin/pesan', $var);
    }

    public function delete_pesan($id)
    {
        $this->db->delete('bukutamu', ['id_bukutamu' => $id]);
        $this->session->set_flashdata('berhasil_hapus', true);
        redirect('admin/pesan_kontak');
    }

    public function hasil_diagnosa()
    {
        if ($this->session->userdata('role') != "admin") {
			echo "<script>
                alert('Anda harus login terlebih dahulu');
                window.location.href = '" . base_url('Admin/v_login') . "';
            </script>"; //Url Logi
		}
        $var['title'] = 'Admin | Hasil Diagnosa';
        $var['diagnosa'] = $this->m_admin->get_diagnosa();
        $var['diagnosa2'] = $this->m_admin->get_diagnosa();
        $this->load->view('admin/diagnosa', $var);
    }
    
   public function delete_hasil_diagnosa($id)
    {
        $this->db->delete('diagnosa', ['kd_diagnosa' => $id]);
        $this->session->set_flashdata('berhasil_hapus', true);
        redirect('admin/hasil_diagnosa');
    }

    public function laporan_diagnosa()
    {
        if ($this->session->userdata('role') != "admin") {
			echo "<script>
                alert('Anda harus login terlebih dahulu');
                window.location.href = '" . base_url('Admin/v_login') . "';
            </script>"; //Url Logi
		}
        $var['title'] = 'Admin | Laporan Dignosa';
        $this->load->view('admin/laporan', $var);
    }

    public function pdf_laporan()
    {
        if ($this->session->userdata('role') != "admin") {
			echo "<script>
                alert('Anda harus login terlebih dahulu');
                window.location.href = '" . base_url('Admin/v_login') . "';
            </script>"; //Url Logi
		}
        $tgl_awal = $this->input->post('tgl_awal');
        $tgl_akhir = $this->input->post('tgl_akhir');
        $var['laporan'] = $this->m_admin->get_laporan($tgl_awal, $tgl_akhir);
        $this->load->view('admin/pdf_laporan', $var);
    }
}
