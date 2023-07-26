import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:chat_gpt/Pallete.dart';

import 'package:chat_gpt/feature_box.dart';
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
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20, 
                  vertical: 5, 
                ),
                margin:const EdgeInsets.symmetric(
                  horizontal: 40, 
                  vertical: 30, 
                ).copyWith(
                  top: 30,  
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Pallete.borderColor, 
                    width: 2,
                  ),
                  color: Pallete.borderColor, 
                  borderRadius: BorderRadius.circular(20).copyWith(
                    topLeft:const Radius.circular(0),
                  ),
                ),
                child: const Text('Hello, What can I help you with today?',
                style: TextStyle(
                  color: Pallete.mainFontColor, 
                  fontSize: 16,
                ),
                ),
              ) ,
              Container(
                padding:const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                  top: 10, 
                  left: 22,
                ),
                child:const Text('Here are a few features',
                  style: TextStyle(
                    color: Pallete.mainFontColor, 
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ), 
              const Column(
                children: [
                  FeatureBox(
                    color: Pallete.firstSuggestionBoxColor, 
                    headerText: 'Chat GPT', 
                    descriptionText: 'A smarter to stay organized and informed with ChatGPT',
                  ),
                  FeatureBox(
                    color: Pallete.secondSuggestionBoxColor, 
                    headerText: 'Dall-E', 
                    descriptionText: 'Get inspired and stay creative with your personal assistant powered by Dall-E',
                  ),
                  FeatureBox(
                    color: Pallete.thirdSuggestionBoxColor, 
                    headerText: 'Smart Voice Assistant', 
                    descriptionText: 'Get the best of both worlds with our voice assistant powered by Dall-E and ChatGPT',
                  ),
                ],
              ),
            ]
          ),
      );
  }
}