<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * User class.
 *
 * @extends CI_Controller
 */
class Lesson extends CI_Controller {

	/**
	 * __construct function.
	 *
	 * @access public
	 * @return void
	 */
	public function __construct() {

		parent::__construct();
		$this->load->library(array('session'));
		$this->load->helper(array('url'));
		$this->data = array();

	}


	public function index() {
				$data['page'] = $this->input->get('page', true);
				$data['lesson'] = $this->input->get('lesson', true);
				$this->load->view('header');
				$this->load->view('lessons/lesson_' . $this->input->get('lesson', true) . '/lesson_wrapper',$data);
				$this->load->view('footer');
	}
	public function navigate() {
				$data['page'] = $this->input->get('page', true);
				$data['lesson'] = $this->input->get('lesson', true);
				$this->load->view('lessons/lesson_' . $this->input->get('lesson', true) . '/page_'. $data['page'],$data);
	}
}
