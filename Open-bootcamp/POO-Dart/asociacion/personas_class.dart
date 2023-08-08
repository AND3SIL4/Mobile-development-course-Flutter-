//asiciacion con la clase direccion
import 'direccion_class.dart';

class Persona {
  String? _nombre;
  int? edad;
  int? telefono;
  Direccion? direccion;

  get nombre => this._nombre;

  set nombre(value) => this._nombre = value;

  Persona(this._nombre, this.edad, this.telefono, this.direccion);
}
