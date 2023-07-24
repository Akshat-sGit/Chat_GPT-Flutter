import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const uniColor =  Color(0xFFFFFFFF);

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
      title:Text(
        'Chat GPT',
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    ),
    // Write the code for an input box which will be placed at the end of the screen.
    body: Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.blueGrey[900],
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey[900],
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ],
        ),
      ],
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
