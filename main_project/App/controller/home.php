<?php



class Home extends Controller {

    public function index($col)
    {
        $obj = $this->model('Db');
        // $data = $obj->SelectData($col);
        $this->render('home/index');
        // $this->render('showdata/show',$data);
    }
    public function test()
    {
        echo "<h1>test hello world</h1>";
    }
}