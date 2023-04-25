import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override

  ///Aqui se crea el estado. Este es el estado que me permitira cambair el widget
  ///durante su ejecucion en base a como se interacue con el.
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  ///Este widget extiende el estado anteriormenete creado. Todo lo visual va aqui adentro.
  ///De igual forma las variable y funciones van aqui.

  int clicksCounter = 0;
  //String clicksString = 'Clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /**En un appBar se le pueden colocar botones.
       * Puede ser un leading que ira la izquierda (solo es uno, por general un menu de hamburgesa),
       * Los actions seran una serie de opciones que iran a la derecha. Estos pueden ser muchos.
       */
        appBar: AppBar(
          title: const Text('Counter Functions'),
          /*leading: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.refresh_rounded),
        ),*/
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  clicksCounter = 0;
                });
              },
              icon: const Icon(Icons.refresh_rounded),
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clicksCounter',
                style: const TextStyle(
                    fontSize: 160.0, fontWeight: FontWeight.w200),
              ),
              Text(
                'Click${clicksCounter == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 25.0),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  clicksCounter = 0;
                });
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() {
                  if (clicksCounter == 0) return;
                  clicksCounter -= 1;
                });
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clicksCounter += 1;
                });
              },
            ),
          ],
        ));
  }
}

/// Este es un widget personalizado.
/// Este widget se extrajo de otro ya creado.
/// SI TENEMOS PROBLEMAS AL EXTRAER, puede ser principalmente porque ya tiene una
/// funcion o tiene de una dependienca a una variable. Lo mejor es borrarla y agregarla
/// en la creacion del nuevo widget.
class CustomButton extends StatelessWidget {
  final IconData icon;
  //Los onPress son tipo VoidCallback, pues no retornan nada.
  final VoidCallback? onPressed;
  const CustomButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
