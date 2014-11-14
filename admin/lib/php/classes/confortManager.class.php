<?php

class ConfortManager extends Confort {
    private $_db;
    private $_confortArray = array();
    
    public function __construct($db) {
        $this->_db = $db;
    }
    
    public function getListeConfort(){
        try {
            $query="select * from confort";
            $resultset= $this->_db->prepare($query);
            $resultset->execute();            
        }catch(PDOException $e) {
            print "Echec de la requ&ecirc;te ".$e->getMessage();
        }
    
        while($data = $resultset->fetch()){
            $_confortArray[] = new Confort($data);
        }
        
        return $_confortArray;
 } 
}
