import 'package:flutter/material.dart';

class SizeBoxSample extends StatelessWidget {
const SizeBoxSample({super.key});

  @override
  /*Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ()=>print("Hola"), 
      child: const Text('Press me'),
      );
  }*/

  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 100,
      child: ElevatedButton(
        onPressed: ()=>print("Hola"), 
        child: const Text('Press me'),
      ),
    );
  }
}