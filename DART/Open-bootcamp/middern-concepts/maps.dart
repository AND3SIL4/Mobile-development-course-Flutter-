/*
 * Mapas en Dart
 */

void main() {
  //Creacion de mapa
  var miPrimerMapa = {
    'nombre': 'Andres',
    'apellido': 'Silva',
    'edad': 21,
    'isActive': true
  };

  //Imprimir mapa
  print(miPrimerMapa);

  //Adicion de elemento
  miPrimerMapa['ciudad'] = 'Bogota';
  print(miPrimerMapa);

  //Modificacion de elemento
  miPrimerMapa['isActive'] = false;
  print(miPrimerMapa);
  print(miPrimerMapa.length);

  //Pasar lista a mapa
  var miLista = ['Andres', 'Felipe', 'Silva'];
  var mapaLista = miLista.asMap();
  print(mapaLista);
}
