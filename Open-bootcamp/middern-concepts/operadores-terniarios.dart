// ignore_for_file: dead_code

/*
 * Operadores terniarios en Dart
 */

void main() {
  //condicion ? Verdadero : Falso
  //condicion ?? Null (re-asigna un nuevo valor)

  //Operador ternario, true or false
  bool soyAndres = true;
  soyAndres ? print('Autorizado') : print('No autorizado');

  var a = 10;
  a >= 10 ? print('Es mayor o igual') : print('No es mayor ni igual');

  //Segundo operador terniario, es null
  var b = [a, null, 2];
  b[1] ?? print('Es nulo');
}
