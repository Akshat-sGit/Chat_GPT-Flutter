import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'chat_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SoundGPT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true).copyWith(
        useMaterial3: true,
      ),
      home: const ChatScreen(),
    );
  }
}