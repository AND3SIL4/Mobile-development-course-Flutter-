/*
 * Concatenacion e interpolacion
 */

void main() {
  String nombre = 'Andres';
  String apellido = 'Silva';
  int edad = 21;

  // Concatenacion
  print('Mi nombre es' + ' ' +  '$nombre' + ' ' + 'y mi apellido es' + ' ' +'$apellido' + ' ' +'y mi edad es $edad');

  // Interpolacion
  print('Mi nombre es $nombre y mi apellido es $apellido y mi edad es $edad');
}
