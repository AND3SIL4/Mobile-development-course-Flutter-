/**
 * Trabajando con funciones asincronas Future
 */
void main() {
  //llamado de funcion tipo future
  ObtenerDatosUsuario();
  print('Cargando...');
  print('Cargando por dos...');
}

/**
 * * Funcion de Future (asincrona)
 */
//se debe conventir en tipo void
Future<void> ObtenerDatosUsuario() =>
    Future.delayed(Duration(seconds: 2), (() => print('Ya lo tengo!')));


/*
  ! Esta funcion no se debe usar
 */
//funcion para obtener los datos de funcion Future
/*String crearLlamado() {
  var datos = ObtenerDatosUsuario();
  print('Datos en crear llamado: $datos');
  return datos.toString();
}*/
