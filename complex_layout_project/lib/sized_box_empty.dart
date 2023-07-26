import 'package:flutter/material.dart';

class SizeBoxEmpty extends StatelessWidget {
const SizeBoxEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ElevatedButton(
        onPressed: ()=>print("pressed"), 
        child: const Text('Boton 1')
      ),
      const SizedBox(//agrega un espacio entre los botones de 20 pixeles 
        height: 20,
      ),
      OutlinedButton(
        onPressed: ()=>print("pressed"), 
        child: const Text('Boton 2')
      ),
    ],);
  }
}