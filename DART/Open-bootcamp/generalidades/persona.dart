import 'direccion.dart';

class Persona<T extends Direccion> {
  String? _nombre;
  int? edad;
  int? telefono;
  T? direccion; //Atributo tipo generico 

  Persona(this._nombre, this.edad, this.direccion, this.telefono);

  get nombre => this._nombre;

  set nombre(value) => this._nombre = value;

  String hablar(String texto) {
    return '$_nombre habla y dice $texto';
  }

  T? getDireccion() {
    return direccion;
  }
}
