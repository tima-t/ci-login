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
		$data = array();

		// $this->load->view('lessons/lesson_'.$this->input->get('lesson', TRUE).'/page_'.$this->input->get('page', TRUE));
		if (null !== $this->input->get('page', true)) {
			$data['page'] = $this->input->get('page', true);
		} else {
			$data['page'] = 1;
		}

		if (null !== $this->input->get('backToFirst', true)) {
			$backToFirst = $this->input->get('backToFirst', true);
		} else {
			$backToFirst = false;
		}
	var_dump($backToFirst);
		if ($data['page'] == 1 && !$backToFirst) {
				$this->load->view('header');
				$this->load->view('lessons/lesson_' . $this->input->get('lesson', true) . '/lesson_wrapper', $data);
				$this->load->view('footer');
		} else {
			$this->load->view('lessons/lesson_' . $this->input->get('lesson', true) . '/page_' . $data['page'], $data);
		}

	}

}
