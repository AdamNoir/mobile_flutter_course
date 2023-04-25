import 'package:flutter/material.dart';

///Colocamos una lista de colores y un color personalizado.
const Color _customColor = Color(0xFF49149F);
const List<Color> _colorsTheme = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];
  

class AppTheme{
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
  /**
   * *Aqui hacemos uso de las aserciones, que son reglas para que el desarrollo se cumpla
   * *como debe ser. Si no se cumple, falla, mostrando el mensaje de error en la pantalla roja y nos posiciona
   * *donde se produce el error. Asi podemos proteger aun mas nuestras aplicaciones.
   */
    : assert(selectedColor >= 0 && selectedColor <= _colorsTheme.length - 1,
      'Colors must be between 0 and ${_colorsTheme.length - 1}');

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      /**
       * *Establecemos el color o la semilla de color principal basada en el numero
       * *de indice de la lista de colores. Esta la recivimos desde el main, en la propiedad theme.
       */
      colorSchemeSeed: _colorsTheme[selectedColor]
    );
  }
}