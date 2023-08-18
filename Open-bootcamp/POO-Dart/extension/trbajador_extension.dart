import '../herencia/trabajador_class.dart';

extension TrabajadorExtension on Trabajador {
  double convertirADolares(double salario) {
    return salario * 4100;
  }
}
