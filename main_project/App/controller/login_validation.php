<?php


class Login_validation  extends Controller{
    
    public function data()
    {
        if(isset($_POST['submit'])){
        $this->validation($_POST['data']);
        }else{
            $this->render('home/index');
        }
        // echo" successfully login";
    }

    private function validation($array){
            $data = $_POST['data'];
            if($data['u_email'] == "" && $data['u_password'] == "" ){
                $data['email_error'] = "must enter";$data['password_error'] = "must enter";
                $this->render('home/index',$data);
            }else if(!filter_var($data['u_email'], FILTER_VALIDATE_EMAIL)) {
                $data['email_error'] = "must be  a valid";
                $this->render('home/index',$data);
            }else if(count($data['u_password']) > 5 && preg_match('/^[a-zA-Z0-9]*$/',$data['u_password']) ){
                /* check the function */
                $data['email_error'] = "must be  a greater then 5 and only contain alphanumeric";
                $this->render('home/index',$data);
            }else{
                $obj = $this->model('Db');
                $data = $obj->checkUser('login_system',$data['u_email'],$data['u_password']);
                if($data != "ERROR"){
                    $this->render('home/index');
                }else{
                    $this->render('signup/signup',$data);
                }
                
            }
    }

}

?>