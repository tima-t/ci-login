<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * User_model class.
 *
 * @extends CI_Model
 */
class Cdkey_model extends CI_Model {

	/**
	 * __construct function.
	 *
	 * @access public
	 * @return void
	 */
	public function __construct() {

		parent::__construct();
		$this->load->database();

	}

	/**
	 * create_user function.
	 *
	 * @access public
	 * @param mixed $username
	 * @param mixed $email
	 * @param mixed $password
	 * @return bool true on success, false on failure
	 */
	public function update_cdKey($username,$cdkey) {

		$data = array(
			'user_id'  => $username,
			'first_use' => date('Y-m-j H:i:s'),
			'used'     => true,
		);
		$this->db->where('product_number',$cdkey);
		$this->db->where('used',false);
		$this->db->update('cd_keys', $data);
		return $this->db->affected_rows()>0 ? true : false ;

	}



}
