import 'dart:math';
void main() {
  var list = [3, 41, 12, 73, 2, 20];

  //calcular el valor maximo
  var maximo = 0;
  for (var numero in list) {
    if (maximo < numero) {
      maximo = numero;
    }
    print('Ciclo: $maximo $numero');
  }
  print('El maximo es: $maximo');

  //calcular el minimo
  var minimo;
  for (var numero in list) {
    if (minimo == null || minimo > numero) {
      minimo = numero;
    }
    print('Ciclo: $minimo $numero');
  }
  print('El minimo es: $minimo');

  //uso de libreria matematica de dart para simplificar codigo
  print(list.reduce(min));
  print(list.reduce(max));

}
