<?php


class Controller {

    protected function model($model)
    {
        require_once "../App/models/" . $model.".php";
        return new $model;
    }

    protected function render($views,$data =[])
    {
        include "../App/views/" .$views .".php";
    }
    

}