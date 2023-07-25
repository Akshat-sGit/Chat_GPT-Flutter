import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const uniColor = Color(0xFFFFFFFF);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  final TextEditingController _controller = TextEditingController();

  Widget _buildTextComposer() {
    return Row(
      children: [
         Expanded(child: TextField(
          controller: _controller,
          decoration:const InputDecoration.collapsed(hintText: 'Send a message'),
        )),
        IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'Chat GPT',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
            )),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                reverse: true,
                itemBuilder: (_, int index) => const Text('Message'),
              ),
            ),
            const Divider(height: 1.0),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
              ),
              child: _buildTextComposer(),
            ),
          ]
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey[900],
        child: const Center(
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
