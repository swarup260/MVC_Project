<?php



class Home extends Controller {

    public function index($name = '')
    {
        $obj = $this->model('Db');
        $this->render('home/index',$array = array('name' => $name));
    }
    public function test()
    {
        echo "<h1>test hello world</h1>";
    }
}