<?php


class Login_validation  extends Controller{
    
    public function data()
    {
        
        if(isset($_POST['submit'])){
            
            // $data = $_POST['data'];
            // if($data['emp_email'] == "" && $data['emp_password'] == "" ){
            //     $data['error'] = "must enter";
            //     $this->render('home/index',$data);
            // }else{
            //     echo "have fun";
            // }
        }else{
            $this->render('home/index');
        }
        // echo" successfully login";
    }


    /*Validation Function */
    private function validation(Type $var = null)
    {
        # code...
    }

}

?>