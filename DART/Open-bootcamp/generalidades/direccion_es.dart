import 'direccion.dart';

class DireccionEs extends Direccion {
  int? codPostal;

  DireccionEs(this.codPostal, int numeroVia, String nombreCalle, String ciudad) : super(numeroVia, nombreCalle, ciudad);
}
