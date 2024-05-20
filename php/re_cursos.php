<?php
// Establecer la conexión con la base de datos
$connection_obj = mysqli_connect("localhost", "root", "", "proyecto_aula");

if (!$connection_obj) {
    die("Error No: " . mysqli_connect_errno() . " - Error Description: " . mysqli_connect_error());
}

// Capturar los datos del formulario
$nombre = $_POST['nombre'];
$descripcion = $_POST['descripcion'];
$nivel_educativo = $_POST['nivel_educativo'];

// Preparar la consulta de inserción
$query = "INSERT INTO curso (Nombre, Descripcion, Nivel_Educativo)
          VALUES ('$nombre', '$descripcion', '$nivel_educativo')";

// Ejecutar la consulta de inserción
if (mysqli_query($connection_obj, $query)) {
    echo "Registro insertado exitosamente.";
} else {
    echo "Error: " . $query . "<br>" . mysqli_error($connection_obj);
}

// Cerrar la conexión con la base de datos
mysqli_close($connection_obj);
?>
