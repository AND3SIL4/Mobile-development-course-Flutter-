import 'dart:io';

void main() async {
  Directory dir = Directory(
      'C:/Users/and3f/Desktop/MOBILE-DEVELOPMENT/DART/Open-bootcamp/directorios');

  //verificar si el directorio existe
  var existe = await dir.exists();
  print(existe ? 'Si existe' : 'no existe');

  //listar todos los elementos de un directorio temporal
  var tempDir = Directory.systemTemp;

  await for (var directory
      in tempDir.list(recursive: false, followLinks: false)) {
    print(directory);
  }

  //listar todos los elementos de cualquier directorio
  var directorioAListar = Directory('/PROGRAMACION');

  List<FileSystemEntity> listaArchivos =
      await directorioAListar.list().toList();
  listaArchivos.forEach((element) => print('Archivo: ${element}'));

  //crear una carpeta

  var carpetaACrear = Directory(
          'C:/Users/and3f/Desktop/MOBILE-DEVELOPMENT/DART/Open-bootcamp/directorios/Prueba-creacion-carpeta')
      .create();

  //eliminar una carpeta

  var eliminarCarpeta = Directory(
          'C:/Users/and3f/Desktop/MOBILE-DEVELOPMENT/DART/Open-bootcamp/directorios/Prueba-creacion-carpeta')
      .delete();
  
}
