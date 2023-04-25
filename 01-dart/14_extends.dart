void main(){  
  final windPlant = WindPlant(initialEnergy: 100);
  print(windPlant);
  
  print('wind: ${chargePhone(windPlant)}');
}


// Este metodo funciona con cualquier tipo de planta
double chargePhone(EnergyPlant plant){
  if(plant.energyLeft < 10){
    throw Exception('Sin energia suficiente');
  }
  return plant.energyLeft - 10;
}


enum PlantType {nuclear, wind, water}

abstract class EnergyPlant{
  double energyLeft;
  PlantType type;
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy(double amount);
}

//Extends o Implements
//Extender aplica la herencia.
class WindPlant extends EnergyPlant{
  WindPlant({required double initialEnergy})
    //Llamamos al constructor padre.
    : super(energyLeft: initialEnergy, type: PlantType.wind);
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
}