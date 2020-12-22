<?php
namespace src\Model;

Class Categorie {
    private $id;
    private $Libelle;
    private $Icon;

    public function SqlAdd(\PDO $bdd){
        try {
            $requete = $bdd->prepare("INSERT INTO categories (Libelle, Icon) VALUES(:Libelle, :Icon)");

            $requete->execute([
                "Libelle" => $this->getLibelle(),
                "Icon" => $this->getIcon(),
            ]);
            return $bdd->lastInsertId();
        }catch (\Exception $e){
            return $e->getMessage();
        }

    }

    public function SqlUpdate(\PDO $bdd){
        try {
            $requete = $bdd->prepare("UPDATE categories set Libelle= :Libelle, Icon = :Icon WHERE Id = :Id");

            $requete->execute([
                "Libelle" => $this->getLibelle(),
                "Icon" => $this->getIcon(),
                "Id" => $this->getId()
            ]);
            return "OK";
        }catch (\Exception $e){
            return $e->getMessage();
        }

    }
    /**
     * Récupère toutes les catégories
     * @param \PDO $bdd
     * @return array
     */
    public function SqlGetAll(\PDO $bdd){
        $requete = $bdd->prepare("SELECT * FROM categories");
        $requete->execute();
        $datas =  $requete->fetchAll(\PDO::FETCH_CLASS,'src\Model\Categorie');
        return $datas;

    }

    public function SqlGetById(\PDO $bdd, $Id){
        $requete = $bdd->prepare("SELECT * FROM categories WHERE Id=:Id");
        $requete->execute([
            "Id" => $Id
        ]);
        $requete->setFetchMode(\PDO::FETCH_CLASS,'src\Model\Categorie');
        $categorie = $requete->fetch();

        return $categorie;
    }

    public function SqlDeleteById(\PDO $bdd, $Id){
        $requete = $bdd->prepare("DELETE FROM categories WHERE Id=:Id");
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
    public function getLibelle(){
        return $this->Libelle;
    }
    public function setLibelle($Libelle){
        $this->Libelle = $Libelle;
        return $this;
    }
    public function getIcon(){
        return $this->Icon;
    }
    public function setIcon($Icon){
        $this->Icon = $Icon;
        return $this;
    }
}