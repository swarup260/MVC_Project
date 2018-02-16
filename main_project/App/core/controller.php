<?php


class Controller {

    protected function model($model)
    {
        require_once "../App/models/" . $model.".php";
        return $model::getInstance();
    }

    protected function render($views,$data =[])
    {
        include "../App/views/" .$views .".phtml";
    }
    

}