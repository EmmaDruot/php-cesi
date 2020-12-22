<?php
namespace src\Controller;

use DateTime;
use src\Model\Article;
use src\Model\Categorie;
use src\Model\BDD;
use src\Model\Commentaire;
use Symfony\Component\Routing\RouteCollection;
use Symfony\Component\Routing\Route;

class ArticleController extends AbstractController {

    public function Add(){
        $categories = new Categorie();
        $datas = $categories->SqlGetAll(BDD::getInstance());
        if($_POST){
            $objArticle = new Article();
            $objArticle->setTitre($_POST["Titre"]);
            $objArticle->setDescription($_POST["Description"]);
            $objArticle->setDateAjout($_POST["DateAjout"]);
            $objArticle->setAuteur($_POST["Auteur"]);
            $objArticle->setCategorieId($_POST["categorie"]);

            $id = $objArticle->SqlAdd(BDD::getInstance());
            // Redirection
            header("Location:/article/show/$id");
        }else{
            return $this->twig->render("Article/add.html.twig", array(
                'categories'=>$datas
            ));
        }


    }

    public function All(){
        $articles = new Article();
        $datas = $articles->SqlGetAll(BDD::getInstance());

        return $this->twig->render("Article/all.html.twig", [
            "articleList"=>$datas
        ]);
    }

    public function Show($id){
        $articles = new Article();
        $datas = $articles->SqlGetById(BDD::getInstance(),$id);
        $categories = new Categorie();
        $categorie = $categories->SqlGetById(BDD::getInstance(),$datas->getCategorieId());
        $commentaire = new Commentaire();
        $commentaires = $commentaire->findByArticle(BDD::getInstance(),$id);
        if($_POST){
            $date = new \DateTime();
            $commentaire->setTexte($_POST['texte']);
            $commentaire->setAuteur($_POST['auteur']);
            $commentaire->setMail($_POST['mail']);
            $commentaire->setDate($date->format('Y-m-d'));
            $commentaire->setArticleId($id);
            $commentaire->SqlAddToComment(BDD::getInstance(),$id);
            header("Location: /Article/show/$id");
        }   

        return $this->twig->render("Article/show.html.twig", [
            "article"=>$datas,
            "commentaires"=>$commentaires,
            "categorie"=>$categorie
        ]);
    }

    public function Delete($id){
        $articles = new Article();
        $articles->SqlDeleteById(BDD::getInstance(),$id);

        header("Location:/Article/All");
    }

    public function Update($id){
        $articles = new Article();
        $datas = $articles->SqlGetById(BDD::getInstance(),$id);

        if($_POST){
            $objArticle = new Article();
            $objArticle->setTitre($_POST["Titre"]);
            $objArticle->setDescription($_POST["Description"]);
            $objArticle->setDateAjout($_POST["DateAjout"]);
            $objArticle->setAuteur($_POST["Auteur"]);
            $objArticle->setId($id);
            //Exécuter la mise à jour
            $objArticle->SqlUpdate(BDD::getInstance());
            // Redirection
            header("Location:/article/show/$id");
        }else{
            return $this->twig->render("Article/update.html.twig", [
                "article"=>$datas
            ]);
        }

    }

    public function Fixtures(){
        //Vider la table
        $article = new Article();
        $article->SqlTruncate(BDD::getInstance());

//Tableau "Jeu de donnée"
        $Titres = ["PHP en force", "Java en baisse", "JS un jour ça marchera", "Flutter valeur montante", "GO le futur"];
        $Prenoms = ["Rebecca", "Alexandre", "Emilie", "Léo", "Aegir"];
        $datedujour = new \DateTime();
        for($i = 0;$i < 200;$i++){
            $datedujour->modify("+1 day");
            shuffle($Titres);
            shuffle($Prenoms);

            //Objet Article
            $objArticle = new Article();
            $objArticle->setTitre($Titres[0]);
            $objArticle->setDescription("Ceci est une excellent description");
            $objArticle->setDateAjout($datedujour->format("Y-m-d"));
            $objArticle->setAuteur($Prenoms[0]);

            //Exécuter l'insertion
            $objArticle->SqlAdd(BDD::getInstance());
        }
        header("Location:/?controller=Article&action=All");
    }

}