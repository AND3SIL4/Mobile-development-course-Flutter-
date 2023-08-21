import 'dart:io';
import 'package:english_words/english_words.dart';
import 'package:csv/csv.dart';

void main() async {
  nouns.take(50).forEach(print);

  print(syllables('beautiful'));

  generateWordPairs().take(5).forEach(print);

  List<List<dynamic>> listaEjemplo = [];

  for (var i = 0; i < 10; i++) {
    listaEjemplo.add([]);
    for (var n = 0; n < 10; n++) {
      if (i == 0) {
        listaEjemplo[i].add('Columna ${n.toString()}');
      } else {
        listaEjemplo[i].add(n);
      }
    }
  }
  String csv = const ListToCsvConverter().convert(listaEjemplo);

  Directory directory = Directory(
      'C:/Users/and3f/Desktop/MOBILE-DEVELOPMENT/DART/Open-bootcamp/librerias');

  final path = '${directory.path}/miCSV.csv';
  File file = File(path);
  file.writeAsString(csv);
}
