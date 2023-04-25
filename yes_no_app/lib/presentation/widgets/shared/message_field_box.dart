import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40.0)
    );

    final inputDecoration = InputDecoration(
        hintText: 'End your message with "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          // *Cuando presiono el Icono del campo de texto
          onPressed: (){
            final textValue = textController.value.text;
            textController.clear();
            //print(textValue);
            onValue(textValue);
          },
          icon: const Icon(Icons.send_outlined),
        ) 
      );
    
    return TextFormField(
      // *Cuando presione fuera quitara el foco del widget de texto
      onTapOutside: (event){
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      //Cuando presiono enter en el teclado
      onFieldSubmitted: (value){
        //print('sumbit value:: $value');
        textController.clear();
        focusNode.requestFocus();
        onValue(value);
      },
      /*onChanged: (value){
        print('change $value');
      },*/
    );
  }
}