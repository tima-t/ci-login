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

	}


	public function index() {
		$this->load->view('header');
		$this->load->view('lessons/lesson_'.$this->input->get('lesson', TRUE).'/page_'.$this->input->get('page', TRUE));
		$this->load->view('footer');

	}

}
