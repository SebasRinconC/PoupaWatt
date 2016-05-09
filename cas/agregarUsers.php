<?php
//***** agregar users

//variables de prueba
		
//		$username = "xxxxyxxx";
//		$password = "123";
//		$nombre = "Juan";
//		$apellido = "Lopez";
//		$documento = "3";
//		$direccion = "cll";
//		$telefono = "44444";
//		$estrato = "4";
		

//asignar los valores que llegan en variables 
		$username = $_POST['username'];
		$password = $_POST['password'];
		$nombre = $_POST['nombre'];
		$apellido = $_POST['apellido'];
		$documento = $_POST['documento'];
		$direccion =$_POST['direccion'];
		$telefono =$_POST['telefono'];
		$estrato =$_POST['estrato'];

// esta clase es para conectarse ala base de datos
		include 'config.php';

// coneccion ala base de datos
		$db = conexiona();

		//estas son validaciones

	
		//si user existe
		$consul_user = mysqli_query($db,"SELECT username FROM users WHERE username = '$username'");
		$verif_user = mysqli_fetch_array($consul_user); // en esta parte cuenta los reglones 

		echo($verif_user);

		
//******************************************************************************
// si existe el usario	
		// si el numero de renglones es diferente de nulo significa que hay un usuario con el mismo nombre
	if ($verif_user != null) {

		$response["success"] =0;
		$response["message"] = "Usuario existente";

	    	// echoing JSON response
	    echo json_encode($response);

	    $db = cerrar();
	
	}else 	{
			$result = mysqli_query($db,"INSERT INTO users(username, password, nombre, apellido, documento,direccion,telefono,estrato)
									VALUES ('$username', '$password','$nombre', '$apellido', '$documento','$direccion','$telefono','$estrato')");

			if ($result) {
				# code...
				$response["success"] = 1;
				$response["message"] = "Datos Registrados";

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