import 'package:flutter/material.dart';

class ScrollViewSample extends StatelessWidget {
  const ScrollViewSample({super.key});

  @override
  /*Widget build(BuildContext context) {
    return Column(children: <Widget>[
      //aqui generamos un error de overflow xq hemos sobrepasado la capacidad
      for(int i=0;i<10;i++)
        Container(
          margin: const EdgeInsets.all(10),
          color: Colors.red,
          height: 100,
        )
      //para solucionar el error de overflow usamos SingleChildScrollView
      //la solucion esta en el codigo comentado abajo, a partir de la linea 23
    ],
    );
  }*/


    Widget build(BuildContext context) {
        return SingleChildScrollView(//lo que nos genera el SingleChildScrollView es un scroll vertical
          child: Column(
            children: [
          //aqui generamos un error de overflow xq hemos sobrepasado la capacidad
          for(int i=0;i<10;i++)
            Container(
              margin: const EdgeInsets.all(10),
              color: Colors.red,
              height: 100,
            )
          //para solucionar el error de overflow usamos SingleChildScrollView
          ],
          ),

        );
    }

}


