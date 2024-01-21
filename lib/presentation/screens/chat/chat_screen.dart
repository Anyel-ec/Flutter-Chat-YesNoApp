import 'package:chat_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://picsum.photos/200'),
          ),
        ),
        title: const Text('Chat'),
        centerTitle: true,
      ),
      body:  _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return const MyMessageBubble();
              },
            ),),
            const Text('Hola'),
          ],
        ),
      ),
    );
  }
}