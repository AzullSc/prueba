<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php if(isset($this->titulo)) echo $this->titulo;?></title>
<link href="<?php echo $_layoutWeb['ruta_css'];?>style.css" rel="stylesheet" type="text/css" />
<!--[if IE 5]>
<style type="text/css"> 

#sidebar1 {width:258px}
</style>
<![endif]--><!--[if IE]>
<style type="text/css"> 

#mainContent {zoom:1}

</style>
<![endif]--></head>

<body>
<!-- #container -->
<div id="container">
<!-- #header -->
	<div id="header">
		<h1>Tour Max</h1>
                <img src="<?php echo $_layoutWeb['ruta_img'];?>logo.jpg" height="50" width="50" hspace="20" class="img">
		<p>by <a href="#">AnshZuPa</a></p>
	</div>
<!-- / #header -->
	<div id="allContent">
		<div id="navcontainer">
			<ul id="navlist">
				<li><a href="index" id="current">Inicio</a></li>
				<li><a href="quienessomos">¿Quienes somos?</a></li>
				<li><a href="contacto">Contactenos</a></li>
			</ul>
		</div><div class="inner_copy"></div>
	<!-- #sidebar1 -->
		<div id="sidebar">