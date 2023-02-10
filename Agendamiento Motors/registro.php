<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
    <link rel="stylesheet" href="css/style2.css">
</head>
<body>
    <center>
    <h1>Registros clientes</h1>
    <br>
    <div class="tabla">
        <table><br>
            <tr>
                <th>Id</th>
                <th>Nombre Completo</th>
                <th>Placa</th>
                <th>Correo</th>
                <th>Tipo vehiculo</th>
                <th>Tipo servicio</th>
                <th>Fecha</th>
            </tr>
            
        <?php
            include("conexion.php");
            $consulta = "SELECT * FROM datos";
            $ejecutarConsulta = mysqli_query($conexion, $consulta);

            while ($valores = mysqli_fetch_array($ejecutarConsulta)) {
                echo '<tr>';
                echo' <td>'.$valores['id'].'</td> ';
                echo' <td>'.$valores['nameC'].'</td> ';
                echo' <td>'.$valores['placa'].'</td> ';
                echo' <td>'.$valores['correo'].'</td> ';
                echo' <td>'.$valores['tipoV'].'</td> ';
                echo' <td>'.$valores['tipoS'].'</td> ';
                echo' <td>'.$valores['fecha'].'</td> ';
                
                echo '</tr>';
            }

            ?>
        </table>
     </div>
     </center>
</body>
</html>

<?php
session_start();

if (isset($_POST['registrarse'])) {
    $id = var_dump($_POST)['id'];
    $nameC = $_POST['nameC'];
    $placa = $_POST['placa'];
    $correo = $_POST['correo'];
    $tipoV = $_POST['tipoV'];
    $tipoS = $_POST['tipoS'];
    $fecha = $_POST['fecha'];

    $insertarDatos = "INSERT INTO datos VALUES('$id','$nameC','$placa','$correo','$tipoV','$tipoS','$fecha')";
    $ejecutarInsertar = mysqli_query($conexion, $insertarDatos) or die('error registro');
    echo 'registro exitoso';

    mysqli_close($conexion);
}
?>

