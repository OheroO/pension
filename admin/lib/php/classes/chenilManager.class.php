<?php

class ChenilManager extends Chenil {
    private $_db;
    private $_chenilArray = array();
    
    public function __construct($db) {
        $this->_db = $db;
    }
    
    public function getListeSelection($choix){
        try {
            $query="select * from vue_chenil where id_confort =:id_confort";
            $resultset= $this->_db->prepare($query);
            $resultset->bindValue(1,$choix,PDO::PARAM_INT);
            $resultset->execute();            
        }catch(PDOException $e) {
            print "Echec de la requ&ecirc;te ".$e->getMessage();
        }
    
        while($data = $resultset->fetch()){
            $_chenilArray[] = new Chenil($data);
        }

        return $_chenilArray;
 } 
}
