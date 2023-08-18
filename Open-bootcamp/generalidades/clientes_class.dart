import 'direccion_es.dart';
import 'direccion_usa.dart';
import 'persona.dart';

void main() {
  DireccionEs direccionEs = DireccionEs(22, 333, 'Aveniue', 'Madrid');

  DireccionUsa direccionUsa =
      DireccionUsa(444, 'Calle', 'New York', 222, 'Distrito Capital');

  Persona<DireccionEs> luis = Persona('Andres', 21, direccionEs, 333);

  Persona<DireccionUsa> paul = Persona('Paul', 33, direccionUsa, 444);

  print('${luis.nombre} tiene el codigo postal de ${luis.direccion!.codPostal}');
  
  print('${paul.nombre} tiene el codigo postal de ${paul.direccion!.codPostal}');
}
