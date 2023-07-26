import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:chat_gpt/Pallete.dart';
// import 'package:velocity_x/velocity_x.dart';

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
          title: const Text("ChatGPT"), 
          leading: const Icon(Icons.menu),
          centerTitle: true,
          ),
          body: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 120, 
                      width: 120,
                      margin: const EdgeInsets.only(top: 20), 
                      decoration:const BoxDecoration(
                        color: Pallete.assistantCircleColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Container(
                    height: 123,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle, 
                      image: DecorationImage(image: AssetImage('assets/images/virtualAssistant.png'))
                    ),
                  )
                ],
              )
            ]
          ),
      );
  }
}