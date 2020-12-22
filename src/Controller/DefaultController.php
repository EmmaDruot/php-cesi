<?php
namespace src\Controller;

class DefaultController extends AbstractController {

    public function index(){

        return $this->twig->render("accueil.html.twig");
    }

}