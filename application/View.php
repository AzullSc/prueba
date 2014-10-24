<?php

class View
{
    private $_controlador;
    private $_js;
    
    public function __construct(Request $peticion) {
        $this->_controlador = $peticion->getControlador();
        $this->_js = array();
    }
    
    public function renderizar($vista, $item = false)
    {
        
        $js = array();
        
        if(count($this->_js)){
            $js = $this->_js;
        }
        
        $_layoutParams = array(
            'ruta_css' => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/css/',
            'ruta_font' => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/font/',
            'ruta_fontawe' => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/font-awesome/',
            'ruta_img' => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/img/',
            'ruta_js' => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/js/',
            'js'=>$js
        );
        
        $rutaView = ROOT . 'views' . DS . $this->_controlador . DS . $vista . '.php';
        
        if(is_readable($rutaView)){
            include_once ROOT . 'views'. DS . 'layout' . DS . DEFAULT_LAYOUT . DS . 'header.php';
            include_once $rutaView;
            include_once ROOT . 'views'. DS . 'layout' . DS . DEFAULT_LAYOUT . DS . 'footer.php';
        } 
        else {
            throw new Exception('Error de vista');
        }
    }
    
     public function renderizarWeb($vista, $item = false)
    {
        
        $js = array();
        
        if(count($this->_js)){
            $js = $this->_js;
        }
        
        $_layoutWeb = array(
            'ruta_css' => BASE_URL . 'views/layout/' . DEFAULT_WEB . '/css/',
            'ruta_font' => BASE_URL . 'views/layout/' . DEFAULT_WEB . '/font/',
            'ruta_fontawe' => BASE_URL . 'views/layout/' . DEFAULT_WEB . '/font-awesome/',
            'ruta_img' => BASE_URL . 'views/layout/' . DEFAULT_WEB . '/images/',
            'ruta_js' => BASE_URL . 'views/layout/' . DEFAULT_WEB . '/js/',
            'js'=>$js
        );
        
        $rutaView = ROOT . 'views' . DS . $this->_controlador . DS . $vista . '.php';
        
        if(is_readable($rutaView)){
            include_once ROOT . 'views'. DS . 'layout' . DS . DEFAULT_WEB . DS . 'header.php';
            include_once $rutaView;
            include_once ROOT . 'views'. DS . 'layout' . DS . DEFAULT_WEB . DS . 'footer.php';
        } 
        else {
            throw new Exception('Error de vista');
        }
    }
    
    public function setJs(array $js)
    {
        if(is_array($js) && count($js)){
            for($i=0; $i < count($js); $i++){
                $this->_js[] = BASE_URL . 'views/' . $this->_controlador . '/js/' . $js[$i] . '.js';
            }
        } else {
            throw new Exception('Error de js');
        }
    }
}

?>
