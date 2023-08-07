//clase Galleta
class Galleta {
  //atributos pueden ser null able
  String? name;
  int? edad;
  String? tipoGalleta;
  bool? saberAndar;

  //constructor normal
  Galleta(this.name, this.edad);

  //otro tipo de constructor con valor adicional
  Galleta.avanzado(this.name, this.edad, {this.tipoGalleta, this.saberAndar});

  //metodo nacer
  void nacer() {
    print("Galleta Nacida");
  }
}
