<?php

class Jouet_petManager {
    private $_db;
    private $_jouetArray=array();
    
    public function __construct($db) {
        $this->_db = $db;      
    }
    
    public function getListeJouet(){
        $query="select * from jouet_pet order by type_animal";
        $resultset = $this->_db->prepare($query);
        //$resultset->bindValue(1,$id,PDO::PARAM_INT);
        $resultset->execute();
       
        $nbr=$resultset->rowCount();
        while($data = $resultset->fetch()) {
            $_jouetArray[] = new jouet_pet($data);
        }
        return $_jouetArray;
    }
}
