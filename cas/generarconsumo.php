<?php
//***** agregar users

	$response = array();

//variables de prueba
		
		$tipoconsumo = "Kilo";
		$dia = "20160126";
		$dia2 = "20160128";

		

//asignar los valores que llegan en variables 
//		$tipoconsumo = $_POST['tipoconsumo'];
//		$dia = $_POST['dia'];
//		$dia2 = $_POST['dia2'];
		

// esta clase es para conectarse ala base de datos
		include 'configConsumo.php';

// coneccion ala base de datos
		$db = conexiona();

		//estas son validaciones

	
		//si user existe
			
//******************************************************************************
// si existe el usario	
		// si el numero de renglones es diferente de nulo significa que hay un usuario con el mismo nombre
	if ($tipoconsumo == 'Kilo' ) {

		$result = mysqli_query ($db, "SELECT SUM(kwh) FROM sensor4 WHERE time BETWEEN '$dia' AND '$dia2'");

		if(!empty($result)){

			
		$sum = mysqli_fetch_array($result);	
			

			$response["success"] = $sum;
			$response["message"] = "Funciono";	
			echo json_encode($response);

			$db = cerrar();
		}
	
	}else 	{
			$result = mysqli_query($db,"SELECT SUM(price) FROM sensor4 WHERE time BETWEEN '$dia' AND '$dia2'");

			if(!empty($result)){

			

				$sum = mysqli_fetch_array($result);	
					# code...
				
			

	    	// echoing JSON response
	    	$response["success"] = $sum;
	    	 $response["message"] = "No funciono";
	    	echo json_encode($response);

	    $db = cerrar();
	}

		}	

?> 