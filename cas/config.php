<?php
conexiona();
	function conexiona(){
		$link=mysqli_connect("localhost","root","","users");
		if ($link){

		}
		else{
			echo "no se pudo conectar con el servidor";
		}
		return $link;
	}

	function cerrar(){
		$link=mysqli_connect("localhost","root","","users");
		mysqli_close($link);

	}
?>