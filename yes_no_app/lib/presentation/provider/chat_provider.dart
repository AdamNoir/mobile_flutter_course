import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_maybe_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

///!Estado
///*El estado es la informacion que ocupa la aplicacion para construir su interfaz y
///*responder a las interaccione del usuario.
///!MANEJADORES DE ESTADO
///*Son tecnicas o herramientas que se usan para manejar los cambios en la aplicacion.
///*Permitiendo que la aplicacio actulize la interfaz en respuesta a eventos o cambios.
///*La forma mas sencilla es setState():
///*Provider y Bloc son mas avanzados y permiten separar la logica de la interfaz.

///!PROVIDER
///*Se encarga de almacenar un valor y notificar al los widgets que lo usan cuando cambia ese valor.
///*Los widgets que lo usan no almacenan un valor, sino que solo escuchan los cambios y actulizan la interfaz.

class ChatProvider extends ChangeNotifier{
  //chatScrollController para controlar el Scroll de la pantalla de los mensajes
  final ScrollController chatScrollController = ScrollController();
  
  //Nuestro modelo de repuestas.
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  //Lista de los mensajes. Aqui se iran almacenando.
  List<Message> messageList= [
    Message(text: 'Hola', fromWho: FromWho.me),
    Message(text: 'Ya comiste?', fromWho: FromWho.me)
  ]; 

  ///Resive un texto y lo agrega a la lista.
  ///Si el mensaje tiene un ? manda a llamar el metodo herReply
  Future<void> sendMessage (String text) async{
    if(text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    if(text.endsWith('?')){
      herReply();
    }
    
    //Es el equivalente al SetState del Provider
    //Aqui se acutaliza el estado, es decir, dibuja el mensje y mueve el scrrol hacia abajo.
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> herReply() async{
    //Llamamos al api y contruimos un mensaje. 
    final herMessage = await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    ///Usa una animacion suave para mover el scrool hacia abajo.
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      //Indica que buscamos que se mueva hasta el fondo.
      chatScrollController.position.maxScrollExtent, 
      // Indica la duracion de la animacion.
      duration: const Duration(milliseconds: 300),
      //Es la animacion que vamos a usar. 
      curve: Curves.easeOut
    );
  }

}