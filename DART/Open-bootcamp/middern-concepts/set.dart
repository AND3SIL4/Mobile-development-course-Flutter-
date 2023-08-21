/*
 * Tipo de dato SET: conjunto desordenando de datos
 * Tienen un mismo tipo de dato
 */
void main() {
  //Creacion del set con la palabra reservadad <Tipo de dato>
  var miPrimerSet = <String>{'Andres', 'Felipe', 'Silva'};

  //Anadir un dato
  miPrimerSet.add('Monica');

  //Imprimir el set
  print(miPrimerSet);
  //Acceder a elementos del set
  print(miPrimerSet.elementAt(2));
  print(miPrimerSet.length);

  //Remover elementos del set
  miPrimerSet.remove('Monica');

  //Limpiar el set totalmente
  miPrimerSet.clear();
  print(miPrimerSet);
}
