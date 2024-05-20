<?php
$connection_obj = mysqli_connect("localhost", "root", "", "proyecto_aula");
if (!$connection_obj) {
    echo "Error No: " . mysqli_connect_errno();
    echo "Error Description: " . mysqli_connect_error();
    exit;
}

// initialize variables for the insert query
$tipo_documento = $_POST['tipo_documento'];
$numero_identidad = $_POST['numero_identidad'];
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$fecha_nac = $_POST['fecha_nac'];
$genero = $_POST['genero'];
$direccion = $_POST['direccion'];
$telefono = $_POST['telefono'];
$email = $_POST['email'];
$nivel_educativo = $_POST['nivel_educativo'];
$grado_curso = $_POST['grado_curso'];

// prepare the insert query
$query = "INSERT INTO estudiantes(Tipo_Documento, Numero_Identidad, Nombre, Apellido, Fecha_Nac, Genero, Direccion, Telefono, Email, Nivel_Educativo, Grado_Curso)
VALUES ('" . mysqli_real_escape_string($connection_obj, $tipo_documento) . "', '"
          . mysqli_real_escape_string($connection_obj, $numero_identidad) . "', '"
          . mysqli_real_escape_string($connection_obj, $nombre) . "', '"
          . mysqli_real_escape_string($connection_obj, $apellido) . "', '"
          . mysqli_real_escape_string($connection_obj, $fecha_nac) . "', '"
          . mysqli_real_escape_string($connection_obj, $genero) . "', '"
          . mysqli_real_escape_string($connection_obj, $direccion) . "', '"
          . mysqli_real_escape_string($connection_obj, $telefono) . "', '"
          . mysqli_real_escape_string($connection_obj, $email) . "', '"
          . mysqli_real_escape_string($connection_obj, $nivel_educativo) . "', '"
          . mysqli_real_escape_string($connection_obj, $grado_curso) . "')";

// run the insert query
if (mysqli_query($connection_obj, $query)) {
    echo "Registro insertado exitosamente.";
} else {
    echo "Error: " . $query . "<br>" . mysqli_error($connection_obj);
}

// close the db connection
mysqli_close($connection_obj);
?>
