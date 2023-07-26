import 'package:flutter/material.dart';
import 'package:chat_gpt/pallete.dart'; 

class FeatureBox extends StatelessWidget {
  const FeatureBox({super.key, required this.color, required this.headerText});

  final Color color;
  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          Text(
            headerText,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Pallete.mainFontColor,
            ),
          )
        ],
      ),
    );
  }
}
