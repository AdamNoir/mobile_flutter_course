void main(){
  final mySquare = Square(side: -10);
  
  print('area ${mySquare.getArea}');
}

class Square{
  double _side; // side * side
  
  /**Sirven para establecer reglas de negocio, es decir,
   * para asegurarnos que se cumplan los requistos a la
   * hora de crear algun objeto.
   */
  Square({required double side})
    : assert(side >= 0, 'Debe ser mayor a 0 el side'),
      _side = side;
  
  double get getArea{
    return _side * _side;
  }
  
  set setSide(double value){
    print('setting new value $value...');
    if(value < 0) throw 'Debe ser mayor a cero';
    _side = value;
  }
  
  double calculateArea(){
    return _side * _side;
  }
}