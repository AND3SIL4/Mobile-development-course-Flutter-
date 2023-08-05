/*
 * Mapas en Dart
 */

//Diferentes estados de un contexto
enum EstadosUsuarios {
  notlogged,
  logged,
  loggin,
  registering,
}

void main() {
  //Inicializar una variable que contenga un estado antes definido
  var estadoActual = EstadosUsuarios.notlogged;

  print(estadoActual);

  estadoActual = EstadosUsuarios.logged;


}
