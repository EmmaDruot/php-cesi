<?php 

namespace src\Controller;

use src\Model\Categorie;
use src\Model\BDD;

class CategorieController extends AbstractController{
    public function Add(){
        if($_POST){
            $categorie = new Categorie();
            $categorie->setLibelle($_POST["libelle"]);
            $categorie->setIcon($_POST["icon"]);
            $id = $categorie->SqlAdd(BDD::getInstance());
            header("Location:/categorie/show/$id");
        }else{
            return $this->twig->render("Categorie/add.html.twig");
        }
    }
    public function All(){
        $categories = new Categorie();
        $datas = $categories->SqlGetAll(BDD::getInstance());

        return $this->twig->render("Categorie/all.html.twig", [
            "categories"=>$datas
        ]);
    }

    public function Show($id){
        $categories = new Categorie();
        $datas = $categories->SqlGetById(BDD::getInstance(),$id);

        return $this->twig->render("Categorie/show.html.twig", [
            "categorie"=>$datas
        ]);
    }

    public function Delete($id){
        $categories = new Categorie();
        $datas = $categories->SqlDeleteById(BDD::getInstance(),$id);

        header("Location:/Categorie/All");
    }
    public function Update($id){
        $categories = new Categorie();
        $categorie = $categories->SqlGetById(BDD::getInstance(),$id);

        if($_POST){
            $categorie->setLibelle($_POST["libelle"]);
            $categorie->setIcon($_POST["icon"]);
            $categorie->setId($id);
            $categorie->SqlUpdate(BDD::getInstance());
            
            header("Location:/categorie/show/$id");
        }else{
            return $this->twig->render("Categorie/update.html.twig", [
                "categorie"=>$categorie
            ]);
        }

    }
}