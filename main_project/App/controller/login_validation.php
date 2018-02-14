<?php


class Login_validation  extends Controller{
    
    public function data()
    {
        if(isset($_POST['submit'])){
            $data = $_POST['data'];
            if($data['emp_email'] == "" && $data['emp_password'] == "" ){
                // echo'<pre>';
                // print_r($data);
                // echo'</pre>';
                // exit;
                $error[value] = "must enter";
                // echo'<pre>';
                // print_r($error);
                // echo'</pre>';
                // exit;
                $this->render('home/index',$error);
            }else{
                echo "have fun";
            }
        }else{
            $this->render('home/index');
        }
        // echo" successfully login";
    }

}

?>