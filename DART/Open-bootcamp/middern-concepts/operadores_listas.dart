/*
 * Mapas en Dart
 */

void main() {
  //Creacion de listas
  List lista = [1, 2, 8, 96, 5, 3, 5, 6];
  print(lista);

  //Limpiar lista
  lista.clear();
  print('Limpiar lista $lista');

  //Inicializar de nuevo la lista
  lista = [1, 2, 8, 96, 5, 3, 5, 6];

  //Obtener el primer valor de la lsita
  print('El primer objeto: ${lista.first}');

  //Obtener el ultimo valor de la lista
  print('El ultimo valor: ${lista.last}');

  //Obtener el tamano de la lista
  print('Tamano de la lista: ${lista.length}');

  //Cambiar el orden de la lista
  print('Orden de la lista: ${lista.reversed}');

  //Cortar un pedazo de la lista
  print('Torzo de la lista ${lista.sublist(3)}');

  //Eliminar el ultimo valor
  print('Remover el ultimo valor: ${lista.removeLast()}');

  //Quitar un elemento mediante su valor
  print('Eliminar elemento lista: ${lista.remove(3)}');

  //Quitar elemento mediante la posicicion
  print('Quitar elemento: ${lista.removeAt(5)}');

  //Obetener el indice del valor
  print('Indice de la lsita ${lista.indexOf(1)}');

  //Comprobar si tiene valor
  print('Si tiene valor ${lista.contains(2)}');

  //Comprobar si la lista esta vacia
  print('Esta vacia la lista ${lista.isEmpty}');

  //Unir todos los valores de la lista
  print('Unir valores de la lista ${lista.join('-')}');

  //Rellenear contenido
  lista.fillRange(2, 4, 10);
  print(lista);

  //Comprobar tipo de dato
  print('Tipo de dato: ${lista.runtimeType}');
}
