/*
 * Sintaxis de funciones
 * TipoFuncion nombreFuncion (argunmentosFuncion){zona de accion - retorno}
 */

void main() {
  saludar('Andres');
  int edadReal = edad(2002);
  print('Tu edad acual es: $edadReal');
  gratitud();
  String men = despedida('bye...');
  int sumarN = sumar(2, 3);
  print('La suma de los numeros son: $sumarN - $men');

  //acceder a los datos optionales por posicion
  datos('Andres', 'Silva', 21);
  //acceder a los datos opcionales por nombre
  datos2('Felipe', 'OtroApellido', edad: 21, fechaNacimiento: 2002);
  //funcion recursiva
  var fac = factorial(5);
  print(fac);

  //llamado de funcion anonima for each
  lista();

  //Funcion con sitaxis corta
  String na = otroNombre('Otro nombre');
  print(na);
}

//funcion simple, tipo vacio
void saludar(String name) {
  print('Hello $name...');
}

//funcion que retorna un 'int' con argumento
int edad(int anioNacimiento) {
  DateTime now = DateTime.now();
  int anioActual = now.year;
  int edadAcutal = anioActual - anioNacimiento;
  return edadAcutal;
}

//funcion simple, tipo vacio
void gratitud() {
  print("Gracias por usar mi programa");
}

//funcion anonima con argumento sin tipo de funcion
var despedida = (String message) => message;

//funcion anonima con argumento y tipo de funcion
int Function(int, int) sumar = (int a, int b) => a + b;

//funcion con parametros opcionales por posicion [tipo parametrOpcional, ...]
void datos(String name, String lastName, [var edad]) {
  if (edad == null) {
    print('El nombre es $name y su apellido es $lastName');
  } else {
    print(
        'El nombre es $name su apellido es $lastName tiene una edad de $edad años.');
  }
}

//funcion con parametros opciones por nombre
void datos2(String name, String lastName, {var edad, var fechaNacimiento}) {
  if (edad == null && fechaNacimiento == null) {
    print('El nombre es $name y su apellido es $lastName');
  } else if (edad == null) {
    print('El nombre es $name su apellido es $lastName');
  } else {
    print(
        'El nombre es $name su apellido es $lastName tiene una edad de $edad años y nacio en $fechaNacimiento.');
  }
}

//funciones recursivas
int factorial(int n) {
  if (n == 1) {
    return 1;
  } else {
    //Se llama a la funcion nuevamente
    return n * factorial(n - 1);
  }
}

//funciones anonimas
void lista() {
  var nombres = ['Andres', 'Felipe', 'Silva'];

  //usando funcion anonima forEach
  nombres.forEach((element) {
    print(element);
  });
}

//otro ejemplo de funcion anonima
var calcularEdad = () => DateTime.now().year - 1985;

//funciones con sintaxis corta =>
String otroNombre(String name) => 'Tu nombre es $name';
