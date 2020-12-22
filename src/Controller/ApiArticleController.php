<?php
namespace src\Controller;

use src\Model\Article;
use src\Model\BDD;

class ApiArticleController {

    public function GetByID($id){
        if($_SERVER["REQUEST_METHOD"] <> "GET"){
            return "Error : La requete doit être du GET";
        }

        $articles = new Article();
        $article = $articles->SqlGetById(BDD::getInstance(),$id);

        $arrayArticle = [
          "Id" => $article->getId(),
          "Titre" => $article->getTitre(),
          "Description" => $article->getDescription(),
          "DateAjout" => $article->getDateAjout(),
          "Auteur" => $article->getAuteur(),
        ];

        return json_encode($arrayArticle);
        // http://www.cesi.local/ApiArticle/GetByID/5
    }

    public function Add(){
        // http://www.cesi.local/ApiArticle/Add
        if($_SERVER["REQUEST_METHOD"] <> "POST"){
            return "Error : La requete doit être du POST";
        }

        $article = new Article();
        $article->setTitre($_POST["Titre"]);
        $article->setDescription($_POST["Description"]);
        $article->setDateAjout($_POST["DateAjout"]);
        $article->setAuteur($_POST["Auteur"]);
        $id = $article->SqlAdd(BDD::getInstance());

        return json_encode($id);

    }
}