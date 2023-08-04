// import 'package:hola_mundo/hola_mundo.dart' as hola_mundo;

void main(List<String> arguments) {
  // Variable de tipo String
  var nombre = 'Andres Felipe Silva'.toLowerCase();
  // Variable de tipo entero
  var edad = 21;

  // Variable que acepta datos null
  double? altura;

  altura = 4.4;

  /*
  Imprimir en consola
  Varibale nombre
  Varibale edad
  Funciones con strings
  */
  print(
      'Hello $nombre ${nombre.runtimeType} ${nombre.contains('Andres')} ${nombre.split('felipe')} ${nombre.startsWith('a')} ${nombre.indexOf('f')}');
  print('Hello $edad ${edad.runtimeType} $altura ${nombre.substring(1, 5)}');

  // Variables de tipo bool
  bool? isActive = false;

  // Comparaciones de tipo bool
  isActive = 2 == 2;


  print('$isActive = ${isActive.runtimeType}');
}
