/*
 * Trabajando con getters y setters 
 * SET -> darle un valor a un atributo o cambiarselo
 * GET -> recupera la informacion del SET
 */

import 'class.dart';

void main() {
  print("Hello, world welcome to my class using Dart!");
  //instancia de clase
  Personas user = Personas.alturaOpcional('Andres', 2006, 222222, altura: 1.82);
  int calcularEdad = user.calcularEdad();
  print('El nombre del usuario es ${user.name} y la edad es $calcularEdad');
  print('El numero de telefono es ${user.getPhoneNumber}');
  bool isActive = user.isActiveM();
  isActive ? print('Esta activo') : print('No esta activo');
}
