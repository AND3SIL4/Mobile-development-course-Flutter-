import '../asociacion/direccion_class.dart';
import '../asociacion/personas_class.dart';
import '../interfaz/interfaz.dart';

class Trabajador extends Persona implements Interfaz {
  double salario;

  Trabajador(
      String nombre, int edad, int telefono, Direccion direccion, this.salario)
      : super(nombre, edad, telefono, direccion);

  String hablarTrabajador(String texto) {
    return super.hablar(texto) + 'soy trabajador';
  }

  @override
  void caminar() {
    print('caminando...');
  }
}
