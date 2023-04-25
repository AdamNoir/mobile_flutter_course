import 'package:flutter/material.dart';
import 'package:hello_world_flutter/presentation/screens/counter/counter_function_screen.dart';
// import 'package:hello_world_flutter/presentation/screens/counter/counter_screen.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /**Esta propiedad establece el tema globla de la aplicacion.
       * En las ultimas versiones de flutter podemos habilitar la opcion de usar MaterialDesing3.
       * Con colorSchemeSeed establecemos los colores globles para la app.
       */
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueAccent
        
      ),
      home: const CounterFunctionScreen()
      //home: const CounterScreen() //Tiene soluciones para resolver el singular en el String clicks
    );
  }
}