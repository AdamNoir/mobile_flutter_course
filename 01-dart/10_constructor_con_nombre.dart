void main(){
  //Constructores con nombre
  /**Forma de tener varios constructores
   * que crearan instancias varias en base a 
   * los argumentos o numero de argumentos que tiene.*/
  
  //Objeto Json
  /**Este seria un objeto Json que pudieramos 
   * recibir de alguna peticion. Asi pudieramos tener un 
   * constructor especializado para transformarlo a objeto*/
  final Map<String, dynamic> rawJson = {
    'name': 'Spiderman',
    'power': 'Trepar',
    'isAlive': true
  };
  
  final spiderMan = Hero.fromJson(rawJson);
  print(spiderMan);
  
  final ironMan = Hero(
    isAlive: false,
    power: 'Money',
    name: 'Tony Stark'
  );
  print(ironMan);
}

class Hero{
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  //Constructor con nombre
  /**Este constructor se encarga de mapear el Json recibido, de 
   * este modo nos aseguramos de tener siempre valores validos.*/
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
  
        @override
  String toString(){
    return '$name, $power ${isAlive ? 'yes' : 'no'}';
  }
}