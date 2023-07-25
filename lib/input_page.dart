import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chat_gpt/chatmessage.dart'; 

const uniColor = Color(0xFFFFFFFF);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController _controller = TextEditingController();
  final List<ChatMessage> _messages = [];

  Widget _buildTextComposer() {
    return Row(
      children: [
        Expanded(
            child: TextField(
          controller: _controller,
          decoration:
              const InputDecoration.collapsed(hintText: 'Send a message'),
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
        child: Column(children: [
          Flexible(
              child: ListView.builder(
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    // return Container(
                    //   height: MediaQuery.of(context).size.height * 16,
                    //   color: Colors.red,
                    //   margin:const EdgeInsets.all(16.0),
                    // );
                    return _messages[index];
                  })),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _buildTextComposer(),
          ),
        ]),
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
