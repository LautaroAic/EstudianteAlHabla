<?php

    include 'conexion_be.php';


    $nombre_completo = $_POST['nombre_competo'];
    $correo = $_POST['correo'];
    $usuario = $_POST['usuarios'];
    $contrasena = $_POST['contrasena'];

    $query =  "INSERT INTO usuario(nombre_competo, correo, usuarios, contrasena) 
                VALUES('$nombre_completo','$correo','$usuario','$contrasena')" ;

    //Verificar que no se repita el correo en la Base de datos
    $verificar_correo = mysqli_query($conexion,"SELECT * FROM usuario WHERE correo='$correo'");
    
    if(mysqli_num_rows($verificar_correo) > 0){
        echo '
            <script>
                alert("Este correo ya esta en uso");
                window.location = "../Inicio_Sesion.php";
            </script>
        ';
        exit();
    }
    
//Verificar que no se repita el nombre de usuario en la Base de datos
$verificar_usuario = mysqli_query($conexion,"SELECT * FROM usuario WHERE usuarios='$usuario'");
    
if(mysqli_num_rows($verificar_correo) > 0){
    echo '
        <script>
            alert("Este usuario  ya esta en uso");
            window.location = "../Inicio_Sesion.php";
        </script>
    ';
    exit();
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
        exit();
    }

mysqli_close($conexion);

?>