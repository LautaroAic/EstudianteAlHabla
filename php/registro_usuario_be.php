<?php

    include 'conexion_be.php';


    $nombre_completo = $_POST['nombre_competo'];
    $correo = $_POST['correo'];
    $usuario = $_POST['usuario'];
    $contrasena = $_POST['contrasena'];

    $query =  "INSERT INTO usuarios(nombre_competo, correo, usuario, contrasena) 
                VALUES('$nombre_completo','$correo','$usuario','$contrasena')" ;

    //Verificar que no se repita el correo en la Base de datos
    $verificar_correo = mysqli_query($conexion,"SELECT * FROM usuarios WHERE correo='$correo'");
    
    if(mysqli_num_rows($verificar_correo) > 0){
        echo '
            <script>
                alert("Este correo ya esta en uso");
                window.location = "../Inicio_Sesion.php";
            </script>
        ';
    }
    
    $ejecutar = mysqli_query($conexion, $query);

    if($ejecutar){
        echo '
            <script>
                alert("usuario registrado exitosamente");
                window.location = "../Inicio_Sesion.php";
                </script>
        ';
    }else{
         echo '
            <script>
                alert("Intentelo de nuevo, usuario no almacenado");
                window.location = "../Inicio_Sesion.php";
                </script>
        ';
    }

mysqli_close($conexion);

?>