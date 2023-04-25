void main(){
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];
  
  /**Dynamic es un tipo de dato especial. Es cun comodin, puede
   * ser cualquier cosa. Se recomienda su uso moderado.
   * Dynamic por defecto es null. Aqui no aplica el ? del null 
   * safety. Por lo que hay que tener cuidado. No se convierte
   * al tipo de dato como el var, sino que siempre sera tipo
   * dynamic.*/
  //dynamic == null
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = () => true;
  errorMessage = null;
  //errorMessage += 1; // ERROR
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
}