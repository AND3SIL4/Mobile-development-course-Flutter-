void main() {
  String? nombre;

  //try and catch simple
  try {
    String nombreMayus = nombre!.toUpperCase();
  } catch (e) {
    print('Error en el toUpperCase: $e');
  }

  //try and catch para un error en especifico
  int a = 20;
  int b = 0;

  try {
    var res = a ~/ b;
  } on UnsupportedError {
    print("No se puede dividir por cero");
  } catch (e) {
    print(e.toString());
  }

  //try and catch con finally

  try {
    var res = a ~/ b;
  } on UnsupportedError {
    print("No se puede dividir por cero con finally");
  } catch (e) {
    print(e.toString());
  } finally {
    print('Siempre se hace esto');
  }

  //try and catch con throw
  int division(int a, int b) {
    if (b <= 0) {
      throw FormatException('Error en FormatException');
    }

    return a ~/ b;
  }

  try {
    var res = division(a, b);
  } on UnsupportedError {
    print('Error en UnsupportedError');
  } on FormatException {
    print('Error en FormatException');
  } catch (e) {
    print(e.toString());
  }

  //Excepciones personalizadas
  
}
