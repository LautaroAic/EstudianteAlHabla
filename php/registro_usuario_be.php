<?php

    include 'conexion_be.php';


    $nombre_completo = $_POST['nombre_competo'];
    $correo = $_POST['correo'];
    $usuario = $_POST['usuario'];
    $contrasena = $_POST['contrasena'];

    $query =  "INSERT INTO usuarios(nombre_competo, Correo, usuario, contrasena) 
                VALUES('$nombre_completo','$correo','$usuario','$contrasena')" ;

    $ejecutar = mysqli_query($conexion, $query);

    if($ejecutar){
        echo '
            <script>
                alert("usuario registrado exitosamente");
                window.location = "../Inicio_Sesion.php";
                </script>
        ';
    }
?>