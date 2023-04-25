void main(){
  //LO MEJOR ES SIEMPRE ESPESIFICAR EL TIPO
  /**Mapa Dynamic Dynamic
  final pokemon = {
    
  };*/
  
  /**Set de Ints
   final pokemon = {
    1,2,3
  };*/
  
  /**Sino colocara el tipo de dato, seria String, Object,
   * porque en Dart todo es un objeto.*/
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {
      1: 'ditto/front.png',
      2: 'ditto/back.png'
    }
  };
  
  print(pokemon);
  print(pokemon['name']);
  print(pokemon['sprites'][2]);
  print(pokemon['sprites'][1]);
}