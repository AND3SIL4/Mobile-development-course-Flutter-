/*
 * Programacion orientada a objetos en dart
 * clases
 */

import 'class.dart';

void main() {
  //instancia de un nuevo objeto tipo galleta
  Galleta galleta = Galleta('Tom', 21);
  //atributos
  var name = galleta.name;
  var edad = galleta.edad;
  print('El nombre de la galleta es $name y su edad es $edad');
  //metodo de la clase
  galleta.nacer();

  //otro objeto de tipo galleta
  Galleta mary = Galleta.avanzado(
    'Mary',
    19,
    tipoGalleta: 'Con azucar',
    saberAndar: true,
  );
  print('${mary.name} - ${mary.edad} - ${mary.tipoGalleta} - ${mary.saberAndar}');
  //uso aperadores terniarios
  bool? andar = mary.saberAndar;
  andar! ? print('Es toda un atleta') : print('No sabe');
}
