<?php


class Controller {

    protected function model($model)
    {
        require_once "../App/models/" . $model.".php";
        return $model::getInstance();
        // return new $model;
    }

    protected function render($views,$data =[])
    {
        include_once "../App/views/" .$views .".phtml";
    }
    

}