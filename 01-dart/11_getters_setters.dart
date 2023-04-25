void main(){
  final mySquare = Square(side: 10);
  
  mySquare.setSide = 5;
  
  print('area ${mySquare.getArea}');
}

class Square{
  // el guion bajo indica que es privada la propiedad
  double _side; // side * side
  
  Square({required double side})
  //Propiedad sera igual al valor recibido como argumento
    : _side = side;
  
  /**Indicamos el tipo de retorno, 
   * tambien colocamos get para indicar que es un Getter
   * Lo nombramos y no lleva parentesis.
   */
  double get getArea{    
    return _side * _side;
  }
  
  /**Indicamos que es un set con la palabra reservada set
   * damos nombre y recibimos los argumentos.
   */
  set setSide(double value){
    print('setting new value $value...');
    if(value < 0) throw 'Debe ser mayor a cero';
    _side = value;
  }
  
  double calculateArea(){
    return _side * _side;
  }
}