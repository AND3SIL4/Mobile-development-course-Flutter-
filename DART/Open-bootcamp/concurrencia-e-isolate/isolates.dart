import 'dart:isolate';

/**
 ** Trabajando con concurrencia e isolates
 */

/**
 * !Funcion main ejecuta dos funciones en diferentes lineas de tiempo, comunicadas mediante mensajes en dos Isolates distintos
 */
void main() async {
  //llamado a funcion contar segundos
  ContarSegundos(4);
  //Llamado a funcion imprimirDatosUsuarios(contiene Isolate)
  await ImprimirDatosUsuarios();
}

Future<void> ImprimirDatosUsuarios() async {
  print('Esperando datos de usuario...');
  try {
    //recepcion de puerto para el mensaje
    final p = ReceivePort();
    //creacion de mensaje para el isolate
    await Isolate.spawn(ObtenerDatosUsuario, p.sendPort);
    //impresion de contenido de isolate 
    print(await p.first);
  } catch (e) {
    print(e.toString());
  }
}

//Funcion isolate, recibe como parametro un envio de puerto
Future<void> ObtenerDatosUsuario(SendPort p) async => Future.delayed(Duration(seconds: 4), (() {
      print('Ya lo he tenido desde la isla aislada'); //funcion asincronica
      Isolate.exit(p, 'Ya lo he tenido desde la isla principal');//cerrar el isolate, enviando un mensaje
    }));

//Funcion de contar segundos
void ContarSegundos(int segundos) {
  for (int i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
