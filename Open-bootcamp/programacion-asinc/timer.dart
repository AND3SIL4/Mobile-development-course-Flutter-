/*
 * Trabajando con TIMER en Dart
 */
// importar libreria asincrona
import 'dart:async';
import 'dart:ffi';

void main() {
  //instacia de objeto tipo Duration
  Duration duracion = Duration(seconds: 3);

  //instancia de tipo Timer
  Timer(duracion,
      (() => print('Me ejecuto cada ${duracion.inSeconds} segundos')));

  //instancia de tipo Timer, pero con periodic (para siempre)
  Timer.periodic(duracion, (timer) {
    print(
        'Siempre me ejecuto cada ${duracion.inSeconds} minutos: ${DateTime.now().minute} segundos: ${DateTime.now().second}');
  });

  int contador = 0;
  //instancia de tipo Timer, con periodic y con condicional
  Timer.periodic(duracion, (timer) {
    contador++;
    if (contador == 10) {
      //cancelar la ejecucion periodica
      timer.cancel();
    } 
    print(contador);
  });
}
