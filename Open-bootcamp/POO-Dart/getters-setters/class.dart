/*
 * Trabajando con getters y setters 
 */

class Personas {
  //variables publicas
  String? name;
  int? fechaNacimiento;
  double? altura;
  //variables privadas
  int? _phoneNumber;

  Personas.alturaOpcional(this.name, this.fechaNacimiento, this._phoneNumber,
      {this.altura});
  //setter de numero telefonico
  set setPhoneNumber(int phoneNumber) {
    _phoneNumber = phoneNumber; 
  }

  //getter de numero telefonico
  get getPhoneNumber => _phoneNumber?? 'No tiene número';

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
}
