import 'dart:collection';
/*
 * Conversion de variables
 */

void main() {
  //Intancia de un objeto tipo cola
  Queue miCola = new Queue();

  //Adicion de informacion a la cola
  miCola.add(10);
  miCola.add(20);
  miCola.add(30);

  print(miCola);

  //Muestra ultimo elemento de la cola
  print(miCola.last);

  miCola.add(40);
  print(miCola);

  miCola.addFirst(0);

  print(miCola);

  //Remeve el ultimo elemento de la cola
  miCola.removeLast();
  print(miCola);
}
