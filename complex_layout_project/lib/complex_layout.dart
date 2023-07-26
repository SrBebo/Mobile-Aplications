import 'package:flutter/material.dart';

class ComplexLayout extends StatelessWidget {
  const ComplexLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(//Cuando no sabemos la proporcion de pixeles de la pantalla usamos SingleChildScrollView
        appBar: AppBar(
          title: Text("Mi primera aplicación"),
        ),
        body: Column(children: <Widget>[
          Container(
            color: Colors.red,
            height: 110,
            //height: 810,//el alto de la pantalla es 810 y se divide en 7 partes iguales 810/7=115 por lo tanto cada contenedor tiene 115 de alto y este valor 
            //sobrapasa el alto de la pantalla por lo tanto se crea un scroll
            //genera un error porque el alto de la pantalla es 810 y la suma de los contenedores es 805
          ),
          Container(
            color: Colors.green,
            height: 110,
          ),
          Container(
            color: Colors.blue,
            height: 110,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  height: 110,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                  height: 110,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.cyanAccent,
                  height: 110,
                ),
              ),
            ],
          ),
        ]));
  }
}
