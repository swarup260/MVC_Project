<?php

class Db
{
    public static $instance=null;
    private $conn;
    private function __construct()
    {
        $this->conn = new mysqli(DB_HOST,DB_USERNAME,
        DB_PSWD,DB_NAME);
        // if($this->conn){
        //     echo "successfully";
        // }else{
        //     echo "ERROR";
        // }
    }

    public function connect()
    {
        return $this->conn;
    }
    
    public static function getInstance(){
        if(self::$instance == null){
            return self::$instance = new self;
        }else{
            return self::$instance;
        }
    }

    // Insert Function 
    public function insertData($tableName,$array)
    {
        /* SQL query using Implode */
        $sql = "INSERT INTO $tableName ";
        $sql .= "( " . implode(",",array_keys($array)) .")";
        $sql .= "VALUES ('" .implode("','",$array) ."')";
        // echo $sql;exit;
        $rel = $this->connect()->query($sql);
        if($rel){
            // echo "Successfully";
            return true;
        }else{
            echo "not";
        }
    }
    // Select Function 
    public function selectData($tableName){
        $sql = "SElECT * FROM $tableName";
        $rel = $this->connect()->query($sql);
        if($rel->num_rows >0){
            while ($row = $rel->fetch_assoc()) {
                $data[] = $row;
            }
        }else{
            echo "No Data";
        }
        return $data;
    }
    // Delete and Update the status Function 
    public function deleteData($tableName,$id,$parms){
        if($parms == '1'){
            $sql = "DELETE FROM $tableName WHERE id = $id";
            // echo $sql;exit;
            $rel = $this->connect()->query($sql);
            if($rel){
                return true;
            }else{
                echo "not";
            }
        }/* End of if */else if($parms == '0') {
            $sql = "UPDATE $tableName SET emp_status = 'Active' WHERE id =$id";
            // echo $sql;exit;
            $rel = $this->connect()->query($sql);
            if($rel){
                return true;
            }else{
                echo "not";
            }
        }
        
        
    }
    // Validate the user 
    public function checkUser($tableName,$email,$password)
        {
            $sql = "SELECT * FROM $tableName WHERE emp_email = '$email' AND  emp_password = '$password' AND emp_status = 'Active' "  ;
            //  echo $sql;exit;
             $rel = $this->connect()->query($sql);
             if($rel->num_rows >0){
                 while($row = $rel->fetch_assoc()){
                     if( ! $row['emp_email'] == $email || 
                     $password == $row['emp_password'] ){
                        //  echo "Successfully";
                        return true;
                     }
                 }
             }else{
                 echo "ERROR";
             }
        }
        // Udpate Function
        public function updateUser($tableName,$id,$fields)
        {
            $set = "";
            $x = 1;
            foreach($fields as $key => $values){
                $set.= "{$key} = '{$values}' ";
                if($x < count($fields)){
                    $set .= ',';
                }
                $x++;
            }
            $sql = "UPDATE TABLE  {$tableName} SET {$set} WHERE id = {$id}";
             echo $sql;exit;
             $rel = $this->connect()->query($sql);
             if($rel){
                return true;
             }else{
                 echo "ERROR";
             }
        }

/* class END */

}
// echo DB_HOST." ".DB_USERNAME." ".DB_PSWD." ".DB_NAME;

// $data =  Db::getInstance()->selectData('employee_attendance');
// echo "<pre>";
// print_r($data);