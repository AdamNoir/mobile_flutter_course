import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {


  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clicksCounter = 0;
  //String clicksString = 'Clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clicksCounter', style: const TextStyle(fontSize: 160.0, fontWeight: FontWeight.w200),),
             //FORMA PARA SOLUCIONAR EL PLURAR DE CLICKS
            Text('Click${clicksCounter == 1 ? '' : 's'}', style: const TextStyle(fontSize: 25.0),)
            //FORMA PARA SOLUCIONAR EL PLURAR DE CLICKS
            //Text(clicksCounter == 1 ? 'Click' : 'Clicks', style: const TextStyle(fontSize: 25.0),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clicksCounter += 1;
            //FORMA PARA SOLUCIONAR EL PLURAR DE CLICKS
            //clicksCounter == 1 ? clicksString = 'Click' : clicksString = 'Clicks';
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}