import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_maybe_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/provider/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_messges_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://cdn.vox-cdn.com/thumbor/SPrO9m2e-prxTbTeHM81yofmXvw=/0x0:1440x960/1400x788/filters:focal(720x480:721x481)/cdn.vox-cdn.com/uploads/chorus_asset/file/22739510/doctor_who_season_13.jpg'),
          ),
        ),
        title: const Text('13th Doctor'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Creamos la instancia al Provider que usamos. Watch para esuchar y actualizar los camboos ocupados.
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                //El scroll de la lista se basa en el del metodo del provider.
                controller: chatProvider.chatScrollController,
                //La cantidad de items se basa en la que tiene la lista del provider.
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index){
                  final message = chatProvider.messageList[index];
                  return (message.fromWho == FromWho.hers)
                    ? HerMessagesBubble(message: message,)
                    : MyMessageBubble(message: message,);
                }
              )
            ),
            MessageFieldBox(onValue: 
            (value) => chatProvider.sendMessage(value),
            //chatProvider.sendMessage
            )
          ],
        ),
      ),
    );
  }
}