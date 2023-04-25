void main(){
  // NO se puede instanciar una clase abstracta
  //final plant = EnergyPlant();
}

// Los enemun no llevan punto y coma
enum PlantType {nuclear, wind, water}

///Una clase abstracta es algo asi como las instrucciones
///para crear los moldes con los que se crean los objetos
abstract class EnergyPlant{
  double energyLeft;
  PlantType type;
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy(double amount);
}