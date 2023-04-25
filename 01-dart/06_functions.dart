void main(){
  print(greetEveryone());
  print(greetEveryone2());
  
  /**Los parametros son posicionales. 
   * Es decir, deben ir en el orden en el cual 
   * se declararon.
   */
  print(addTwoNumbers(10, 90));
  print(addTwoNumbers2(20, 20));
  
  print(addTwoNumbersOptional(20));
  print(addTwoNumbersOptional(20, 1));
  
  print(addTwoNumbersOptional2(80));
  print(addTwoNumbersOptional2(80, 1));
}

///Lo mejor es espesificar siempre el tipo de retorno.
///O dar siempre va a inferir por nosotros, siento casi
///siempre dynamic.
///Esto es una buena practica para tener type Safety,
///seguridad de tipado o de tipos.
String greetEveryone(){
  return 'Hello everyone!';
}

String greetEveryone2() => 'Hello Everyone 2';

int addTwoNumbers(int a, int b){
  return a + b;
}

int addTwoNumbers2(int a, int b) => a + b;

///conlos [] indicamos que b es un parametro opcional
///Como es opcional, puede ser null y romper todo.
///Usando ? podemos decir a dart que soy consiente de
///ese posible null y me encargare de tratarlo.
int addTwoNumbersOptional(int a, [int? b]){
  // Si b es null, le asigna 0
  b = b ?? 0;
  //b ??= 0; //Forma corta
  return a + b;
}

// Desde los corchetes indicamos el valor por si no lo resivo.
int addTwoNumbersOptional2(int a, [int b = 0]){
  return a + b;
}