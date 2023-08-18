import '../asociacion/direccion_class.dart';
import '../asociacion/personas_class.dart';

class Trabajador extends Persona {
  double salario;

  Trabajador(String nombre, int edad, int telefono, Direccion direccion,this.salario) : super(nombre, edad, telefono, direccion);
}
