<?php
include 'Conn.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Obtener los valores del formulario
    $L_ID = $_POST['L_ID'];
    $L_Nombre = $_POST['L_Nombre'];
    $L_Correo = $_POST['L_Correo'];
    $L_Direccion = $_POST['L_Direccion'];
    $L_Estrato = $_POST['L_Estrato'];
    $L_Contraseña = $_POST['L_Contraseña'];

    // Conectar a la base de datos
    $conexion = conectarBD();

   // Verificar si ya existe un usuario con el mismo número de documento y correo
   $consulta = "SELECT * FROM datos_formulario WHERE numero_documento='$L_ID' or correo='$L_Correo'";
   $resultado = $conexion->query($consulta);
   if ($resultado->num_rows > 0) {
       // Ya existe un usuario con los mismos datos
       $mensaje = "Ya existe un usuario con el mismo documento o correo.";
       $tipo = "error";
   } else {
       // Preparar la consulta SQL
       $sql = "INSERT INTO datos_formulario (numero_documento, nombre, correo, direccion_residencia, estrato, contrasena) 
               VALUES ('$L_ID', '$L_Nombre', '$L_Correo', '$L_Direccion', '$L_Estrato', '$L_Contraseña')";

       // Ejecutar la consulta y verificar el resultado
       if ($conexion->query($sql) === TRUE) {
           $mensaje = "Registro exitoso!";
           $tipo = "success";
       } else {
           $mensaje = "Error al registrar: " . $conexion->error;
           $tipo = "error";
       }
   }

    // Cerrar la conexión a la base de datos
    $conexion->close();
}

// Redirigir al formulario y mostrar la alerta
header("Location: index.html?mensaje=$mensaje&tipo=$tipo");
?>
