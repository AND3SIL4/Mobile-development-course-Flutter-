void main(){
  /*
   * Tipos de datos fuertemente tipados
   */
  
  int edad = 20;
  double precio = 24.3;
	String name = 'Andres';
  bool esCliente = false;
  
  /*
   * Tipos de datos debilmente tipados
   */
  
  dynamic punto = '2000';
  punto = 2000;
  
  var puntos2 = 2;
  puntos2 = 2;
  
  final puntos3 = [2,3,4,5];
  puntos3.add(2);
  print(puntos3);
  
  const PUNTOS4 = [2000];
}	