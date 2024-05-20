<?php
// Establecer la conexión con la base de datos
$connection_obj = mysqli_connect("localhost", "root", "", "proyecto_aula");

if (!$connection_obj) {
    die("Error No: " . mysqli_connect_errno() . " - Error Description: " . mysqli_connect_error());
}
$nombre = $_POST['nombre'];
$correo = $_POST['correo'];
$mensaje = $_POST['mensaje'];

// Validar y procesar los datos (puede ir aquí)

// Conectar a la base de datos (suponiendo que ya tienes la conexión)

// Insertar los datos en la tabla 'mensajes'
$query = "INSERT INTO mensajes (nombre, correo, mensaje, fecha_envio) VALUES ('$nombre', '$correo', '$mensaje', NOW())";

// Ejecutar la consulta
if (mysqli_query($connection_obj, $query)) {
    echo "Mensaje enviado correctamente";
} else {
    echo "Error al enviar el mensaje: " . mysqli_error($connection_obj);
}

// Cerrar la conexión a la base de datos (si es necesario)
mysqli_close($connection_obj);
?>









