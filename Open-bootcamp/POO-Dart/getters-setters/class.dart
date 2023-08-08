/*
 * Trabajando con getters y setters 
 */

class Personas {
  //variables publicas
  String? name;
  int? fechaNacimiento;
  double? altura;
  bool? isActive;
  //variables privadas
  int? _phoneNumber;

  Personas.alturaOpcional(this.name, this.fechaNacimiento, this._phoneNumber,
      {this.altura});
  //setter de numero telefonico
  set setPhoneNumber(int phoneNumber) {
    _phoneNumber = phoneNumber;
  }

  //getter de numero telefonico
  get getPhoneNumber => _phoneNumber ?? 'No tiene número';

  int calcularEdad() {
    DateTime now = DateTime.now();
    if (fechaNacimiento == null) {
      print('Fecha de nacimiento no coincide');
      return 0;
    } else {
      final edad = now.year - fechaNacimiento!;
      return edad;
    }
  }

  //getter de estado activo
  bool? get getIsActive => this.isActive;
  //setters de estado activo
  set setIsActive(bool? isActive) => this.isActive = isActive;

  //metodo que retorna bool para saber si esta activo o no
  bool isActiveM() {
    if (calcularEdad() > 20) {
      isActive = true;
      return true;
    } else {
      return false;
    }
  }
}
