<?php

class ReservationManager extends Reservation {
    private $_db;
    private $_confortArray = array();
    
    public function __construct($db) {
        $this->_db = $db;
    }
    
    public function addReservation(array $data) {
        
    }
    
    private function checkEmpty($data) {
        
        return true;
    }
    
}
