/*
 *Trabajando con asociacion en Dart
 */

import 'direccion_class.dart';
import 'personas_class.dart';

void main() {
  Direccion direccionLuis = Direccion(1, 'CALLE SANFACON', 'Bogota');

  Persona luis = Persona('Luis', 21, 32222222, direccionLuis);
  print(luis.direccion!.ciudad);
}
