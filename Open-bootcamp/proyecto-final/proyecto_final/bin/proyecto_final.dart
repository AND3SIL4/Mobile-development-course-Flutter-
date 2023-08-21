import 'dart:io';

import 'sujeto.dart';

import 'package:csv/csv.dart';

import 'numeros/nums_orden_directo.dart';
import 'numeros/nums_orden_inverso.dart';
import 'numeros/nums_orden_creciente.dart';

void main() async {
  print('''
    *** Test digitos WISC V ***

    En todo momento podras salir del test intoduciendo la letra 'q' y presionando 'enter'

    Cominza el test
''');

  print('introduce el codigo del sujeto: ');
  String? codigo = stdin.readLineSync();
  //para salir del programa
  salirDelprograma(codigo);

  print('Introduce la edad');
  String? edad = stdin.readLineSync();
  //para salir del programa
  salirDelprograma(codigo);
  //valdiacion edad
  int edadInt = esNumero(edad);

  //clase sujeto
  Sujeto sujeto = Sujeto(codigo!, edadInt);

  Map resultadoInverso = testInverso();
  Map resultadoDirecto = testDirecto();

  sujeto.puntuacionDirecta = resultadoDirecto['aciertos'];
  sujeto.puntuacionDirectaSpan = resultadoDirecto['span'];

  //..... uso de libreria de csv .....

  List<List<dynamic>> listaDatos = [
    ['codigo', 'Edad', 'Dd', 'SpanDd'],
    [
      sujeto.codigo,
      sujeto.edad,
      sujeto.puntuacionDirecta,
      sujeto.puntuacionDirectaSpan
    ],
  ];

  String csv = ListToCsvConverter().convert(listaDatos);

  try {
    Directory directory = Directory(
        'C:/Users/and3f/Desktop/MOBILE-DEVELOPMENT/DART/Open-bootcamp/proyecto-final');
    final path = '${directory.path}/${sujeto.codigo}.csv';
    File file = File(path);
    file.writeAsString(csv);
    print('Archivo guardado correctamente...');
    print('Ruta archivo: ${path.toString()}');
  } catch (e) {
    print('Error en: ${e.toString()}');
  }
}

Map testDirecto() {
  print('********************************');
  print('Comineza el test: orden directo');
  print('********************************');

  int aciertos = 0;
  int span = 0;
  int errores = 0;

  for (var fila in numeroOrdenDirecto) {
    errores = 0;
    for (var subFila in fila) {
      print(subFila);
      while (true) {
        print('Sí ha acertado introduce [s], si no ha acertado introduce [n]');
        String? haAcertado = stdin.readLineSync();
        salirDelprograma(haAcertado);
        if (haAcertado != null) {
          haAcertado = haAcertado.toLowerCase();
          if (haAcertado == 's') {
            aciertos++;
            break;
          } else if (haAcertado == 'n') {
            errores++;
            break;
          } else {
            print("Introduce un valor válido");
          }
        }
      }
    }
    if (fila[0].length > 2) {
      span = fila[0].length - 1;
    }
    if (errores == 2) {
      break;
    }
  }
  // print(aciertos);
  // print(span);
  return {
    'aciertos': aciertos,
    'span': span,
  };
}

Map testInverso() {
  print('********************************');
  print('Comineza el test: orden inverso');
  print('********************************');

  int aciertos = 0;
  int span = 0;
  int errores = 0;

  int contEjemplo = 0;

  for (var fila in numeroOrdenInverso) {
    errores = 0;
    for (var subFila in fila) {
      if (contEjemplo == 0) {
        print('Ejemplo: $subFila');
      } else {
        print('$subFila');
        while (true) {
          print(
              'Sí ha acertado introduce [s], si no ha acertado introduce [n]');
          String? haAcertado = stdin.readLineSync();
          salirDelprograma(haAcertado);
          if (haAcertado != null) {
            haAcertado = haAcertado.toLowerCase();
            if (haAcertado == 's') {
              aciertos++;
              break;
            } else if (haAcertado == 'n') {
              errores++;
              break;
            } else {
              print("Introduce un valor válido");
            }
          }
        }
      }
    }
    if (contEjemplo != 0) {
      if (fila[0].length > 2) {
        span = fila[0].length - 1;
      }
      if (errores == 2) {
        break;
      }
    } else {
      contEjemplo++;
    }
  }
  // print(aciertos);
  // print(span);
  return {
    'aciertos': aciertos,
    'span': span,
  };
}

void salirDelprograma(String? entrada) {
  if (entrada == 'q') {
    print('¿Seguro que quieres salir? si[s]no[n]');
    String? respuesta = stdin.readLineSync();
    if (respuesta == 'y') {
      exit(0);
    }
  }
}

int esNumero(String? entrada) {
  if (int.parse(entrada!) == null) {
    print('Edad no validad, no se ha reconocido');
    exit(0);
  } else {
    return int.parse(entrada);
  }
}
