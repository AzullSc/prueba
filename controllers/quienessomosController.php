<?php
class quienessomosController extends Controller{
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index() {
        $this->_view->titulo='Quienes Somos';
        $this->_view->renderizarWeb('index');
    }
}
