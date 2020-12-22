<?php
namespace src\Model;



Class Commentaire {
    private $id;
    private $Texte;
    private $Auteur;
    private $Date;
    private $Mail;
    private $Article_Id;

    public function SqlAdd(\PDO $bdd){
        try {
            $requete = $bdd->prepare("INSERT INTO commentaires (Texte, Auteur, Mail, Date) VALUES(:Text, :Auteur, :Mail, :Date)");
            $date = new \DateTime();
            $requete->execute([
                "Texte" => $this->getTexte(),
                "Auteur" => $this->getAuteur(),
                "Date" => $this->getDate(),
                "Mail" =>$this->getMail(),
            ]);
            return $bdd->lastInsertId();
        }catch (\Exception $e){
            return $e->getMessage();
        }

    }
    public function SqlAddToComment(\PDO $bdd, $id){
        try {
            $requete = $bdd->prepare("INSERT INTO commentaires (Texte, Auteur, Mail, Date, Article_Id) VALUES(:Texte, :Auteur, :Mail, :Date, :Article_Id)");
            $requete->execute([
                "Texte" => $this->getTexte(),
                "Auteur" => $this->getAuteur(),
                "Date" => $this->getDate(),
                "Mail" =>$this->getMail(),
                "Article_Id" =>$this->getArticleId()
            ]);
            return $bdd->lastInsertId();
        }catch (\Exception $e){
            return $e->getMessage();
        }

    }
    public function SqlUpdate(\PDO $bdd){
        try {
            $requete = $bdd->prepare("UPDATE commentaires set Texte= :Texte, Auteur = :Auteur, Date = :Date, Mail = :mail WHERE Id = :Id");
            $date = new \DateTime();
            $requete->execute([
                "Texte" => $this->getLibelle(),
                "Auteur" => $this->getIcon(),
                "Date" => $date->format('d/m/Y'),
                "Mail" =>$this->getMail(),
                "Id" => $this->getId()
            ]);
            return "OK";
        }catch (\Exception $e){
            return $e->getMessage();
        }

    }
    /**
     * Récupère tous les commentaires
     * @param \PDO $bdd
     * @return array
     */
    public function SqlGetAll(\PDO $bdd){
        $requete = $bdd->prepare("SELECT * FROM commentaires");
        $requete->execute();
        $datas =  $requete->fetchAll(\PDO::FETCH_CLASS,'src\Model\Commentaire');
        return $datas;

    }

    public function SqlGetById(\PDO $bdd, $Id){
        $requete = $bdd->prepare("SELECT * FROM commentaires WHERE Id=:Id");
        $requete->execute([
            "Id" => $Id
        ]);
        $requete->setFetchMode(\PDO::FETCH_CLASS,'src\Model\Commentaire');
        $commentaire = $requete->fetch();

        return $commentaire;
    }
    public function findByArticle(\PDO $bdd, $Id){
        $requete = $bdd->prepare("SELECT * FROM commentaires WHERE Article_Id=:Id");
        $requete->execute([
            "Id" => $Id
        ]);
        $requete->setFetchMode(\PDO::FETCH_CLASS,'src\Model\Commentaire');
        $commentaire = $requete->fetchAll();

        return $commentaire;
    }
    public function SqlDeleteById(\PDO $bdd, $Id){
        $requete = $bdd->prepare("DELETE FROM commentaires WHERE Id=:Id");
        $requete->execute([
            "Id" => $Id
        ]);
        return true;
    }
    public function getId(){
        return $this->id;
    }
    public function setId($id){
        $this->id = $id;
        return $this;
    }
    public function getTexte(){
        return $this->Texte;
    }
    public function setTexte($Texte){
        $this->Texte = $Texte;
        return $this;
    }
    public function getAuteur(){
        return $this->Auteur;
    }
    public function setAuteur($Auteur){
        $this->Auteur = $Auteur;
        return $this;
    }
    public function getMail(){
        return $this->Mail;
    }
    public function setMail($Mail){
        $this->Mail = $Mail;
        return $this;
    }
    public function getDate(){
        return $this->Date;
    }
    public function setDate($Date){
        $this->Date = $Date;
        return $this;
    }
    public function getArticleId(){
        return $this->Article_Id;
    }
    public function setArticleId($Article_Id){
        $this->Article_Id = $Article_Id;
        return $this;
    }
}