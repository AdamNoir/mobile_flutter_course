void main(){
  //async* SIEMPRE DEVUELVE UN STREAM
  emitNumbers()
    .listen((value){
      print('Stream Value $value');
    });
}

Stream<int> emitNumbers() async* {
  final valuesToEmit = [1,2,3,4,5];
  
  for(int i in valuesToEmit){
    await Future.delayed(const Duration(seconds: 1));
    //Seder un valor
    //Ten un valor ahora, ahora ten este...
    yield i;
  }
}