void main() async {
  ContarSegundos(4);
  await ImprimirDatosUsuarios();
}

Future<void> ImprimirDatosUsuarios() async {
  var datos = await ObtenerDatosUsuarios();
  print('Esperando datos de usuario...');
  print(datos);
}

Future<String> ObtenerDatosUsuarios() =>
    Future.delayed(Duration(seconds: 4), (() => 'Success...'));

//funcion para contar segundos
void ContarSegundos(int segundos) {
  for (int i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), (() => print(i)));
  }
}
