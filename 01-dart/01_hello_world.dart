/**Lo recomendado es colocar el 
 * tipo de retorno a Main para evitar los
 * dynamic lo mas posible.*/
void main(){
  
  /**Usar var viene bien, pero lo menor es ser 
   * espesifico en el tipo de dato.
   * */
  //var name = 'Ivan';
  //late final name;
  //String name = 'Ivan';
  const name = 'Ivan';
  
  // Esto se le llama interpolacion.
  print('Hola $name');
  // Esto se le llama expresion
  /**Todo uso de metodo, o algo que no sea
   * solo un strin o algo a mostrar como strig,
   * se coloca entre llaves {}.*/
  print('Hola ${name.toUpperCase()}');
  print('Hola ${1+1}');
}