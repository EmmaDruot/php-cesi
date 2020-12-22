<?php

use src\Controller\ArticleController;
use Symfony\Component\Routing\RouteCollection;
use Symfony\Component\Routing\Route;

require_once "../vendor/autoload.php";

/*
 * Autoloader de Classe
 */
function chargerClasse($classe){
    //Séparateur répertoire : "\" "/"
    $ds = DIRECTORY_SEPARATOR;
    $dir = __DIR__.$ds."..";
    $className = str_replace("\\",$ds,$classe);

    $file = "{$dir}{$ds}{$className}.php";

    if(is_readable($file)){
        require_once $file;
    }

}
spl_autoload_register("chargerClasse");

/**
 * ROUTEUR
 */
$s = $_SERVER['REQUEST_URI'];
$urls = explode("/", $s);
$controller = (isset($urls[1])) ? $urls[1] : '';
$action = (isset($urls[2])) ? $urls[2] : '';
$param = (isset($urls[3])) ? $urls[3] : '';

if($controller <> '') {
    $class = "src\Controller\\{$controller}Controller";
    if(class_exists($class)){
        $ctrl = new $class;
        if(method_exists($class,$action)){
            echo $ctrl->$action($param);
        }else{
            echo 'La page n\'existe';
            $ctrl = new \src\Controller\DefaultController();
            echo $ctrl->index();
        }
    }else{
        // Route par défaut
        $ctrl = new \src\Controller\DefaultController();
        echo $ctrl->index();
    }

}else{
    // Route par défaut
    $ctrl = new \src\Controller\DefaultController();
    echo $ctrl->index();
}
