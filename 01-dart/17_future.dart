void main(){
  print('Inico del Programa');
  httpGet('https://google.com')
    .then((value){
      print(value);
    })
    .catchError((error){
      print('Error $error');
    });
   print('Fin del Programa');
}

Future<String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 1), (){
    throw 'Error en HTTP';
    //return 'Respuesta HTTP';
  });
}