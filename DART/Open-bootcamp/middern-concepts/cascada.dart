/*
 *procedimientos en cascada
 */

void main() {
  List<int> lista = [
    2,
    3,
    4,
  ];
  print('Lista base de numeros: $lista');
  cuadrado(lista);
  //opcion 2 del ejercicio
  List cc = cuadrado2(lista);
  print("Solucion mas optima: $cc");
  list();
}

void list() {
  //procedimiento SIN cascada
  var listaUno = [];
  listaUno.add(1);
  listaUno.add(2);
  listaUno.add(3);

  print('Lista sin cascada');
  listaUno.forEach(print);

  var listaDos = [];
  //Utilizacion de .. para adicionar en cascada
  listaDos
    ..add(4)
    ..add(5)
    ..add(6);

  print('Lista con cascada');
  listaDos.forEach(print);
}

//cuadrados de una lista primera solucion
void cuadrado(List numerosLista) {
  print('Cuadrados de la lista');
  numerosLista.forEach((element) {
    print(element * 2);
  });
}

//cuadrados de una lista segunda solucion
List cuadrado2(List lista2) {
  List nuevaLista = [];
  for (int numero in lista2) {
    nuevaLista.add(numero * 2);
  }
  return nuevaLista;
}
