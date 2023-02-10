<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>El gato tunning</title>
</head>
<body>  
  
<div class="gato">

</div>
<center>
    <form action="registro.php" method="post">
      <div class="formulario" name> <h1> Agendamiento El Gato Tunning...</h1>
      <div class="imagen">
  <img src="gato.jpg" alt="gato" width="100px" height="100px">
</div>
        <div class="name">
        <input id="name" type="text" name="nameC" required placeholder="Nombre Completo"><label>Nombre Completo:</label>
        <input type="text" required placeholder="Placa" name="placa"> <label>Placa:</label> <br>
        <input type="email" required placeholder="Correo" name="correo"> <label>Correo:</label> <br>
      </div>


      <div class="tipo">
      <label> Tipo de vehiculo:</label> <select name="tipoV" id="tipo" >
        <option aria-placeholder="opciones">Tipos de vehiculo</option>
        <option value="Carro">Carro</option><br>
        <option value="Moto">Moto </option>
      </select> 
  <br><br>
      <label> Tipo de servicio:</label> <select name="tipoS" id="tipo" >
        <option aria-placeholder="opciones">Tipos de servicio</option>
        <option value="Limpieza general">Limpieza general - $39,900</option><br>
        <option value="Limpieza tapiceria">Limpieza tapiceria y general - $54,900 </option>
        <option value="Polichada">Polichada - $69,900</option>
      </select> </div>


      <div class="fech"><label>Fecha: </label><input type="date" required name="fecha"><br></div><br>

            <input class="boton" name="registrarse" type="submit" value="Confirmar" >
        </form>
    

</div>
</center>


       

</body>
</html>

