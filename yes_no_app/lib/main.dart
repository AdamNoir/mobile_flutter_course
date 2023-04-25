import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentation/provider/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';
import 'config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Podemos usar varios providers en nuestra aplicacion.
    return MultiProvider(
      providers: [
        //Iran todos nuestros providers que ocupemos.
        ChangeNotifierProvider(create: (_) => ChatProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // *Podemos modificar el color del tema desde aqui mismo.
        theme: AppTheme(selectedColor: 1).theme(),
        title: 'Yes - No App',
        home: const ChatScreen()
      ),
    );
  }
}