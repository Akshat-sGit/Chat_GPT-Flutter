import 'package:flutter/material.dart';


const uniColor =  Color(0xFF0A0E21);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.blueGrey[900],
      title: const Text(
        'Chat GPT',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    drawer:Drawer(
      backgroundColor: Colors.blueGrey[900],
      child:const Center(
        child: Text(
          'Drawer',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    );
  }
}
