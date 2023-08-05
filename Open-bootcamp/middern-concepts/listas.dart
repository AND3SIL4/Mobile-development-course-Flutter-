/*
 * Listas
 */

void main() {
  //Creacion de listas basicas
  var miPrimeraLista = [10, 14];
  var miSegundaLista = ['Andres', 'Felipe'];

  //Lista compuesta
  var listaListas = [
    [10, 24, 54],
    miSegundaLista,
    ['Ejemplo', 'Lista']
  ];

  //Accediendo a los atributos de la lista
  var miNombre = miSegundaLista[0];
  var length = listaListas.length;
  print('$miNombre $length');

  //Accediendo a los atributos de la lista compuesta
  var accediendo = listaListas[1][0];
  print(accediendo);

  //Lista fija
  var listaFija = List.filled(2, '', growable: true);
  listaFija[0] = 'Andres';
  listaFija[1] = miSegundaLista[0];
  print(listaFija.length);

  //Add elementos a la lista fija mediante 'growable: true'
  listaFija.add('Silva');

  print('$listaFija ${listaFija.length}');

  print(listaFija.last);
  
  print(miPrimeraLista.isEmpty);
}
