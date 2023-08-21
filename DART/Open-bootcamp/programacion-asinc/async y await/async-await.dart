/**
 * Trabajando con ASYNC y AWAIT
 */

//funcion main
Future<void> main() async {
  print('Obteniendo datos de usuario...');
  print(await CrearLlamado());
} 

//funcion para tener los datos de ObtenerDatosUsuarios
Future<String> CrearLlamado() {
  var datos = ObtenerDatosUsuarios();
  return datos;
}

//funcion para obtener datos de usuarios
Future<String> ObtenerDatosUsuarios() =>
    Future.delayed(Duration(seconds: 2), (() => 'Success...'));
