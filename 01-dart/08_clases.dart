void main(){
  final wolverine = Hero('Logan', 'Regeneracion');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero{
  String name;
  String power;
  
  // La forma tipica de inicializar los atributos en flutter
  Hero(this.name, this.power);
  
  ///Aqui ya es muy tarde la inicializacion, por eso
  ///marcara error
  
  //Hero(String pName, String pPower){
  //  name = pName,
  //  power = pPower
  //}

  ///Esta es una forma de usar el constructor
  
  //Hero(String pName, String pPower)
  //  : name = pName,
  //    power = pPower;
}