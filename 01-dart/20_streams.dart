///En dart los streams pueden ser cualquier cosa.
///Son una secuencia de eventos que se generan con el tiempo.
///Son utiles cuando se trabaja con datos que llegan en tiempo real.
///En lugar de esperar a que llegue todo, se procesa lo que va llegando
void main(){
  /**Aunque en la funcion del stream coloquemos un 
   * print, no se vera. Debemos usar metodos para
   * poder esucharlo, o hacer distintas cosas con el
   * Stream.*/
  emitsNumbers().listen((value){
    print(value);
  });
}

///De vuelve un Srteam
///Debe espeficiar que tipo de Strea devuelve
Stream<int> emitsNumbers(){
  //Sera un flujo periodo, es decir contante de 1 en 1
  return Stream.periodic(const Duration(seconds: 1),(value){
    return value;
  }).take(5); //Indicamos que solo tome 5, sino seria infito
}