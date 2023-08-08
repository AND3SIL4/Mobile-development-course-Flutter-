/*
 *Trabajando con iterables
 */

void main() {
  List<int> lista = [1, 2, 3];

  Iterable<int> iterable = [1, 2, 3];

  //Impresion de elemento tipo lista
  print(lista[1]);
  //impresion de elemento tipo iterable
  print(iterable.elementAt(1));

  //iterale tipo String
  Iterable<String> alimentos = ['carne', 'lechuga', 'pollo'];
  //ciclo para recorrer cada elemento de 'alimentos'
  for (String alimento in alimentos) {
    print('El alimento es: $alimento');
  }
  //acceder al primer elemento de la lista
  print('El primer elemento de la lista es ${lista[0]}');
  //acceder al ultimo elemento de la lista
  print('el ultimo elemento de la lista es ${lista[lista.length - 1]}');
  //acceder al primer elemento de elemento iterable
  print('El primer elemento del iterable es ${alimentos.first}');
  //acceder al segundo elemento de elemento iterable
  print('El ultimo elemento del iterable es ${alimentos.last}');

  //filtrar por iterable funcion anonima
  var elementoAlimento =
      alimentos.firstWhere((element) => element.contains('c'));
  print(elementoAlimento);

  //filtrar por iterabe funcion y return
  var elementoAlimento2 = alimentos.firstWhere((element) {
    return element.contains('c');
  });
  print(elementoAlimento2);

  //filtrar por iterabe usando palabra reservada orElse
  var elementoAlimento3 = alimentos.firstWhere(
      (element) => element.contains('w'),
      orElse: () => 'No se encuentra...');

  print(elementoAlimento3);

  //filtro con singleWere
  var elementoSingle = alimentos.singleWhere(
      (element) => element.contains('g') && element.startsWith('l'),
      orElse: () => 'No hay ningun elemento con esas carateristicas...');

  print(elementoSingle);

  //filtrar mediante palabra reservadad [every] --> devuelve un bool todos los elementos cumplen con la condicion
  var elementEvery = alimentos.every((element) => element.length > 10);
  elementEvery ? print('Es verdadero') : print('Es falso');

  //filtrar por palabra reservada [any] --> almenos un elemento cumple
  var elementAny = alimentos.any((element) => element.length > 6);
  elementAny ? print('El any cumple') : print('El any no cumple');

  //Ejercicio de uso iterable con una clase
  Iterable<Persona> personas = [(Persona('Andres', 21)), (Persona('Aly', 12))];

  var mayores = personas.every((persona) => persona.age! > 20);
  mayores
      ? print('Se cumple el ejercicio')
      : print('No se cumple el ejercicio');

  //lista de numeros iterables
  Iterable<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  //acceder a los numeros inpares
  var inpares = numeros.where((element) => element.isOdd);
  List numerosPares = [];
  //recorrer los numeros impares y agregarlos a la lista
  for (var inpar in inpares) {
    numerosPares.add(inpar);
  }
  print(numerosPares);

  //filtrar por numeros pares y positivos
  //lista de numeros
  Iterable<int> numbers = [1, 23, -5, -6, 7, -94, -2, 2];
  //filtro de numeros pares
  var numbersPares = numbers.where((element) => element.isEven);
  if (numbersPares.any((elemento) => elemento.isNegative)) {
    print('Hay algun numero negativo');
  }

  Iterable<int> otro = [1, 23, -1, 6, 8, 76, 4, 2];

  //imprimir hasta que sea un rango [takeWhile]
  var hasta22 = otro.takeWhile((vale) => vale != 22);
  print('Numeros hasta 22 $hasta22');

  //imprimir desde que sea un rango [skipWhile]
  var desde22 = otro.skipWhile((value) => value != 22);
  print('Numeros desde 22 $desde22');

  //map en un iterable
  Iterable resultado = otro.map((numero) => numero * 2);
  print(resultado);

  //usar map para iterar en las personas
  Iterable personasMap = personas.map((user) {
    String nombre = user.name.toString();
    String edad = user.age.toString();
    return '$nombre tiene $edad';
  });
  print(personasMap);
}

class Persona {
  String? name;
  int? age;

  Persona(this.name, this.age);
}
