  void main(){
    /*
     * Conversion de tipos de datos
     * Solo datos fuertemente tipados
     * .toTipoDeDato();
     */
    // Create a list using dart ?
		// ToInt
    int edad = 22.3.toInt();
    
    // int.parse('dato a pasar')
    int edad1 = int.parse('44');
    
    // double.parse('dato a pasar');
    double precio = double.parse('24.5');
    
    // toString();
    String name = 300.toString();
    
    // No se puede convertir
    bool? esCliente = null;
    
    
    // Concatenacion
    print('Hola' +  ' ' + 'mundo');
    print('Hola' +  ' ' + name);
    
    // Interpolacion
    print('Hola ${name.length}');
    
  }