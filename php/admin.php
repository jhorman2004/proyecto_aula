<?php

$user = $_POST['username'];
$pass = $_POST['password'];
$code = $_POST['code'];

if ($user === 'admin' && $pass === 'root' && $code === '432') {
    header('Location: vista_admin.html');
} else {
    echo "Usuario, contraseña o código incorrecto";
}

mysqli_close($connection_obj);
?>
