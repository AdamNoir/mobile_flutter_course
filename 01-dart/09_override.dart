void main(){
  final wolverine = Hero(name: 'Logan');
  /**Al imprimir un objeto en automatico llama al
   * toString, no es necesario indicarlo.*/
  //print(wolverine.toString());
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero{
  String name;
  String power;
  
  Hero({
    required this.name, 
    //power es opcional y tiene valor por defecto.
    this.power = 'Sin Poder'
  });
  
  @override
  String toString(){
    return '$name - $power';
  }
}