
<!DOCTYPE html>
<html lang="es">
<html>
<head>
  <title>Inicio</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="../Funcionamiento/estilo.css">
  <style>
    .sidebar {
      width: 10%;
    }
    .bloqueprincipal {
      width: 60%;
      margin: auto;
      border-radius: 30px;
      background-color: #f2f2f2;
      padding: 50px;
      box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
      position: absolute;
      top: 25%;
      left: 50%;
      transform: translate(-50%, -50%)
    }
  </style>
</head>
<body>
  <div class="sidebar" style="width:10%">
      <a href="./Index.php"  style="background-color: #6b9787;color: white;"><i class="fa fa-home"></i> Menu</a>  
        <div class="w3-dropdown-hover">
          <button class="w3-button"><i class="fa fa-cubes"></i> Nueva Venta
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="w3-dropdown-content w3-bar-block">
            <a href="../Venta/An_Venta.php">Nuevo Cliente</a>
            <a href="../Venta/An_Old_Venta.php" >Cliente Antiguo</a>
          </div>
        </div>
        <a href="../Pendientes/Pendientes.php" class="w3copia"><i class="fa fa-clock-o" aria-hidden="true"></i> Pendientes</a>
        <div class="w3-dropdown-hover">
          <button class="w3-button"><i class="fa fa-address-card"></i> Clientes
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="w3-dropdown-content w3-bar-block">
            <a href="../Cliente/Up_cliente.php">Actualizar Cliente</a>
            <a href="../Cliente/Bus_Cliente.php">Buscar Cliente</a>
            <a href="../Cliente/Elim_cliente.php">Eliminar Cliente</a>
            <a href="../Cliente/All_Cliente.php">Clientes</a>
          </div>
      </div> 
        <div class="w3-dropdown-hover">
          <button class="w3-button"><i class="fa fa-cubes"></i> Productos
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="w3-dropdown-content w3-bar-block">
            <a href="../Producto/An_Producto.php" >Añadir Producto</a>
            <a href="../Producto/Up_Producto.php" >Actualizar Producto</a>
            <a href="../Producto/Bus_Producto.php">Buscar Producto</a>
            <a href="../Producto/Elim_Producto.php" >Eliminar Producto</a>
          </div>
        </div> 
        <div class="w3-dropdown-hover">
          <button class="w3-button"><i class="fa fa-bar-chart"></i> Reportes
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="w3-dropdown-content w3-bar-block">
            <a href="../Reporte/Reporte.php" >Reporte</a>
            <a href="../Reporte/registro_ventas.php" >Registro ventas</a>
          </div>
        </div> 
    </div>
    </body>

<div class="bloqueprincipal">
  <div style="margin-left: 5%">
    <div class="w3-container">
      <h1>¡Bienvenido!</h1>
      <h3>Bienvenido a la aplicación de registro web de Outlet A Tu Hogar.</h3>
      <p>En el menú de su izquierda podrá encontrar las acciones disponibles para el manejo del negocio. <br>
      </p>
    </div>
  </div>
</div>
</body>
</html>

