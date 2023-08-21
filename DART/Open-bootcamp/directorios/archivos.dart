import 'dart:convert';
import 'dart:io';

/**
 * *Trabajando con archivos locales desde Dart
 */

void main() async {
  //lectura de un archivo
  final file = File(
      'C:/Users/and3f/Desktop/MOBILE-DEVELOPMENT/DART/Open-bootcamp/directorios/ejemplo.txt');
  String? lineaParaEscribir;

  Stream<String> lines =
      file.openRead().transform(utf8.decoder).transform(LineSplitter());

  List lista = [];

  try {
    await for (var line in lines) {
      print('${line} ${line.length}');
      lista.add(line);
    }
  } catch (e) {
    print(e.toString());
  }

  //creacion y escritura en archivos
  String path =
      'C:/Users/and3f/Desktop/MOBILE-DEVELOPMENT/DART/Open-bootcamp/directorios/ejemplo2.txt';

  try {
    var archivEscribir =
        await File(path).writeAsString(lista.toString().toUpperCase());
    print('Trabajo realizado correctamente...');
    //eliminar el archivo
    //archivEscribir.delete();
  } catch (e) {
    print(e.toString());
  }

  String path2 =
      'C:/Users/and3f/Desktop/MOBILE-DEVELOPMENT/DART/Open-bootcamp/directorios/ejemplo3.txt';

  var fileEscribir2 = File(path2);
  var openWrite = fileEscribir2.openWrite();
  openWrite.write(lista);
  openWrite.close();

  //borrar archivo
  fileEscribir2.delete();
}
