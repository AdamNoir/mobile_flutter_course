Future<void> main() async {
  print('Inico del Programa');
  
  try{
    final value = await httpGet('https://google.com');
    print('Exito, todo bien!! $value');
    /**Campuramos una expecion personalizada, de tipo excpetion.
     * Podemos tenemos varias en base a los posibles errores que esperamos,
     * asi podemos hacer varias cosas en base a lo que ocurre
     */
  }on Exception catch(err){
   print('Tenemos una Exception $err'); 
   //Aqui caeran las expectiones generias, o las inesperadas
  }catch(err){
    print(err);
  }finally{//Siempre se va a ejecutar falle o no.
    print('Fin del try-catch');
  }
  
  print('Fin del Programa');
}


Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('No hay parametros en el URL');
  //throw 'Error en HTTP';
  //return 'Tenemos HTTP';
}