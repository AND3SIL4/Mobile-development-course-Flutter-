/*
 *Trabajando con asociacion en Dart
 */

import '../herencia/trabajador_class.dart';
import 'direccion_class.dart';
import 'personas_class.dart';

void main() {
  Direccion direccionLuis = Direccion(1, 'CALLE SANFACON', 'Bogota');

  Persona luis = Persona('Luis', 21, 32222222, direccionLuis);
  print(luis.direccion!.ciudad);

  //Herencia

  Direccion direccionPedro = Direccion(1, 'Hola que hace', 'Barranquilla');

  Trabajador pedro = Trabajador('Pedro', 21, 321, direccionPedro, 12212);
  print('El nombre del trabajador es: ${pedro.nombre}');
  print('El salario del trabajador es: ${pedro.salario}');

  // Sobre carga de metodos
  // llamado de metodos de persona
  print(luis.hablar('Hola'));
  print(pedro.hablarTrabajador('Hola'));

  //interfaz
  pedro.caminar();
}
