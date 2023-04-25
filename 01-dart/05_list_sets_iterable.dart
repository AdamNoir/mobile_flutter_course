void main(){
  /**Las listas son colecciones ordenadas de elementos. []
   * Los sets coleccianes NO ordenadas de elementos que no se repiten {}
   * iterables son colecciones inmutables (). No tienen tantos metodos pero tiene algunos
   * para dar pie a otras colecciones como mapas o listas. Las listas, por ejemplo,
   * son un tipo espesifico del iterable.
   */
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,9,10];
  
  print('List Original $numbers');
  // Eliminar Duplicados y volver a Lista
  print('Lista Sin duplicados ${numbers.toSet().toList()}');
  print('Length ${numbers.length}');
  print('Index 0 ${numbers[0]}');
  print('First ${numbers.first}');
  print('Reversed ${numbers.reversed}');
  
  final reversedNumbers = numbers.reversed;
  print('Iterable $reversedNumbers');
  print('List ${reversedNumbers.toList()}');
  print('Set ${reversedNumbers.toSet()}');
  
  // No es necesario poner int en el where, pero es mejor ser espeficio.
  final numbersGreaterThan5 = numbers.where((int num){
    return num > 5;
  });
  
  print('>5 Iterable $numbersGreaterThan5');
  print('>5 Set ${numbersGreaterThan5.toSet()}');
}