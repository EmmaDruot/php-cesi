<?php 

namespace src\Controller;

use src\Model\Commentaire;
use src\Model\BDD;

class CommentaireController extends AbstractController{
    public function Add(){
        if($_POST){
            $commentaire = new Commentaire();
            $commentaire->setTexte($_POST["texte"]);
            $commentaire->setAuteur($_POST["auteur"]);
            $commentaire->setMail($_POST["mail"]);
            $id = $commentaire->SqlAdd(BDD::getInstance());
            header("Location:/commentaire/show/$id");
        }else{
            return $this->twig->render("Commentaire/add.html.twig");
        }
    }
    public function All(){
        $commentaires = new Commentaire();
        $datas = $commentaires->SqlGetAll(BDD::getInstance());

        return $this->twig->render("Commentaire/all.html.twig", [
            "commentaires"=>$datas
        ]);
    }

    public function Show($id){
        $commentaires = new Commentaire();
        $datas = $commentaires->SqlGetById(BDD::getInstance(),$id);

        return $this->twig->render("Commentaire/show.html.twig", [
            "commentaire"=>$datas
        ]);
    }

    public function Delete($id){
        $commentaires = new Commentaire();
        $datas = $commentaires->SqlDeleteById(BDD::getInstance(),$id);

        header("Location:/Commentaire/All");
    }
    public function Update($id){
        $commentaires = new Commentaire();
        $commentaire = $commentaires->SqlGetById(BDD::getInstance(),$id);

        if($_POST){
            $commentaire->setTexte($_POST["texte"]);
            $commentaire->setAuteur($_POST["auteur"]);
            $commentaire->setMail($_POST["mail"]);
            $commentaire->setId($id);
            $commentaire->SqlUpdate(BDD::getInstance());
            
            header("Location:/commentaire/show/$id");
        }else{
            return $this->twig->render("Commentaire/update.html.twig", [
                "commentaire"=>$commentaire
            ]);
        }

    }
}