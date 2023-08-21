import '../asociacion/direccion_class.dart';
import '../asociacion/personas_class.dart';
import '../mixin/profesion_class.dart';

class Usuario extends Persona with Profesion{
  String userName;
  String password;

  Usuario(String nombre, int edad, int telefono, Direccion direccion, this.userName, this.password) : super(nombre, edad, telefono, direccion);
}
