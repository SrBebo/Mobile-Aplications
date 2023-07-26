import 'package:flutter/material.dart';

class TextExample extends StatelessWidget{
  const TextExample({super.key});

  @override
  Widget build(BuildContext context){
    return const Text(
      
        'Simple text demo',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 32.0,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
      ),

    );
  }
}