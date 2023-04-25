void main(){
  print(greetPerson(name: 'Ivan'));
}

///Funciones con parametros por nombres.
///Aqui no importa el orden.
///required indica que es requerido, pues estando entre {} ya es opcional.
///? porque puede ser nullo y seteamos valor por defecto.
String greetPerson({required String name, String? message = 'hi'}){
  //message = message ?? 'Adios'; //por si es null
  return '$message $name';
}