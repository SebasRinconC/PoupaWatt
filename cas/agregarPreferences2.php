<?php
//***** agregar users

//variables de prueba
		

//	$programa = "Milo";
//	$electrodomesticos = "als";
//	$horainicio = "70";
//	$horafinal = "80";

//asignar los valores que llegan en variables 
		$programa = $_POST['programa'];
		$electrodomesticos = $_POST['electrodomesticos'];
		$horainicio = $_POST['horainicio'];
		$horafinal = $_POST['horafinal'];
		$reduccion = $_POST['reduccion'];
		$valor = $_POST['valor'];

		

// esta clase es para conectarse ala base de datos
		include 'configPreferences.php';

// coneccion ala base de datos
		$db = conexiona();

		//estas son validaciones

	
		//si user existe
		$consul_prefer = mysqli_query($db,"SELECT programa FROM preferences WHERE programa = '$programa'");
		$verif_prefer = mysqli_fetch_array($consul_prefer); // en esta parte cuenta los reglones 

		echo($verif_prefer);

		
//******************************************************************************
// si existe el usario	
		// si el numero de renglones es diferente de nulo significa que hay un usuario con el mismo nombre
	if ($verif_prefer != null) {

		$response["success"] =0;
		$response["message"] = "Ya hace parte de este programa";

	    	// echoing JSON response
	    echo json_encode($response);

	    $db = cerrar();
	
	}else 	{
			$result = mysqli_query($db,"INSERT INTO preferences(programa, electrodomesticos, horainicio, horafinal, reduccion, valor)
									VALUES ('$programa', '$electrodomesticos','$horainicio','$horafinal','$reduccion','$valor')");

			if ($result) {
				# code...
				$response["success"] = 1;
				$response["message"] = "Devices Wired Agregado";

				echo json_encode($response);

				$db = cerrar();

			} else {
				$response["success"] =0;
				$response["message"] = "Oopss! ocurrio una error";

				echo json_encode($response);

				$db = cerrar();

		}	

	}
?>