<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CONSULTAR ASIGNATURAS</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
    <h1>Listado de asignaturas</h1>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Id Asignatura</th>
                            <th>Nombre</th>
                            <th>Descripción</th>
                            <th>Nivel Educativo</th>
                            <th>Profesor ID</th>
                            <th>Horas Semanales</th>
                            <th>Créditos</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                        $connection_obj = mysqli_connect("localhost", "root", "", "proyecto_aula");
                        if (!$connection_obj) {
                            echo "Error No: " . mysqli_connect_errno();
                            echo "Error Description: " . mysqli_connect_error();
                            exit;
                        }
                       
                        $query = "SELECT * FROM asignaturas";
                        
                        $result = mysqli_query($connection_obj, $query) or die(mysqli_error($connection_obj));
                    
                        while ($row = mysqli_fetch_array($result, MYSQLI_BOTH)) {
                            echo '<tr class="table-primary">
                                    <td>' . $row['ID'] . '</td>
                                    <td>' . $row['Nombre'] . '</td>
                                    <td>' . $row['Descripcion'] . '</td>
                                    <td>' . $row['Nivel_Educativo'] . '</td>
                                    <td>' . $row['Profesor_ID'] . '</td>
                                    <td>' . $row['Horas_Semanales'] . '</td>
                                    <td>' . $row['Creditos'] . '</td>
                                </tr>';
                        }
                       
                        mysqli_close($connection_obj);
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
