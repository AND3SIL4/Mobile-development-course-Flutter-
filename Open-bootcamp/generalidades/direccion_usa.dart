import 'direccion.dart';

class DireccionUsa extends Direccion {
  int? codPostal;
  String? estado;

  DireccionUsa(int numeroVia, String nombreCalle, String ciudad, this.codPostal,
      this.estado)
      : super(numeroVia, nombreCalle, ciudad);
}
