// ignore_for_file: unused_local_variable

import 'dart:math';
import 'dart:io';

void main() {
  print('Introdume un numero maximo:');
  var valor_max = stdin.readLineSync();
  var valor_ma_int;

  if (valor_max == null) {
    print('Error... intentalo de nuevo');
    exit(0);
  }

  if (int.tryParse(valor_max) != null) {
    valor_ma_int = int.parse(valor_max);
    if (valor_ma_int <= 0) {
      print('Introduce un numero mayo que 0 la proxima vez');
      exit(0);
    }
  } else {
    print("Introduce un numero la proxima vez");
    exit(0);
  }

  Random random = Random();
  var numeroAleatorio = random.nextInt(valor_ma_int);
  var numeroIntentos;

  while (true) {
    numeroIntentos++;
    var numeroIntroducido = stdin.readLineSync();

    if (numeroIntroducido != null) {
      valor_ma_int = int.parse(numeroIntroducido);
      exit(0);
    }
  }
} 
