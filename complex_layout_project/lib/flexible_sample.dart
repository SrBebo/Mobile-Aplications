import 'package:flutter/material.dart';

class FlexsibleSample extends StatelessWidget {
  const FlexsibleSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 1,//cuando usamos flex estamos creando una proporcion y sumamos todos los flex
          //depues cada flex en cada contenedor será una porcion de la proporcion total
          //en este caso tenemos 1+5+1=7 es la proporcion
          //en el primer contenedor tenemos 1/7 de la proporcion
          fit: FlexFit.tight,
          child: Container(
            color: Colors.red,
            height: 20,
          ),
        ),
        Flexible(
          flex: 5,
          child: Container(
            color: Colors.green,
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}