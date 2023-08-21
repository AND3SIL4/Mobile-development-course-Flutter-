/*
 * Conversion de variables
 */

void main() {
  String cienString = '100';

  //Conversion de String a Integer
  int cien = int.parse(cienString);

  int docientos = 200;

  int suma = docientos + cien;

  //Conversion de Integer a String
  print('La suma es' + suma.toString());
}
