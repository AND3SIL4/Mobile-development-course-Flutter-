import 'dart:io';

void main() {
  print('Do you want to play a game? (Write "yes" to continue)');

  var quiereJugar = stdin.readLineSync()?.toLowerCase();

  if (quiereJugar != 'yes') {
    exit(0);
  }
  print("Let's play");
  var puntuacion = 0;

  print('Do you know what color the sky is?');
  var anwser = stdin.readLineSync()?.toLowerCase();

  if(anwser == 'blue'){
    print('correct...');
    puntuacion++;
  }else{
    print('Incorrecto...');
  }
  
  print('Has obtenido $puntuacion respuestas correctas');

  var porcentaje = (puntuacion.toDouble()/4)*100;

  print('Tu puntuacion en porcentaje es de $porcentaje %');

}

