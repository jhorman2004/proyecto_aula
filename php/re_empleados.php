<?php
// Establecer la conexión con la base de datos
$connection_obj = mysqli_connect("localhost", "root", "", "proyecto_aula");

if (!$connection_obj) {
    die("Error No: " . mysqli_connect_errno() . " - Error Description: " . mysqli_connect_error());
}

// Capturar los datos del formulario
$tipo_documento = $_POST['tipo_documento'];
$numero_identidad = $_POST['numero_identidad'];
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$fecha_nac = $_POST['fecha_nac'];
$genero = $_POST['genero'];
$direccion = $_POST['direccion'];
$telefono = $_POST['telefono'];
$email = $_POST['email'];
$puesto = $_POST['puesto'];
$departamento = $_POST['departamento'];
$fecha_contratacion = $_POST['fecha_contratacion'];
$salario = $_POST['salario'];

// Preparar la consulta de inserción
$query = "INSERT INTO empleados (Tipo_Documento, Numero_Identidad, Nombre, Apellido, Fecha_Nac, Genero, Direccion, Telefono, Email, Puesto, Departamento, Fecha_Contratacion, Salario)
          VALUES ('$tipo_documento', '$numero_identidad', '$nombre', '$apellido', '$fecha_nac', '$genero', '$direccion', '$telefono', '$email', '$puesto', '$departamento', '$fecha_contratacion', '$salario')";

// Ejecutar la consulta de inserción
if (mysqli_query($connection_obj, $query)) {
    echo "Registro insertado exitosamente.";
} else {
    echo "Error: " . $query . "<br>" . mysqli_error($connection_obj);
}

// Cerrar la conexión con la base de datos
mysqli_close($connection_obj);
?>
