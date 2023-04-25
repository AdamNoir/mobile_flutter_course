//Podemos colocar Future<void>
//Aunque puidiera ser solo Void
Future<void> main() async {
  print('Inico del Programa');
  //Con try catch podemos controlar las exceptions
  try{
    final value = await httpGet('https://google.com');
    print(value);
  }catch(err){
    print(err);
  }
  print('Fin del Programa');
}


///Una funcion async siempre retorna un future
Future<String> httpGet(String url) async {
  //En pocas palabras await trasnforma los 
  //Futre en codigo sincrono
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error en HTTP';
  //return 'Tenemos HTTP';
}