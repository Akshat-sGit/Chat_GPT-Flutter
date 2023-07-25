import 'package:flutter/material.dart';
import 'package:chat_gpt/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color.fromARGB(0, 255, 255, 255),
            secondary: const Color(0xFF91FCDC)),
        scaffoldBackgroundColor: uniColor,
      ),
      home: const InputPage(),
    );
  }
}