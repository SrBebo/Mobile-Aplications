import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var counter = 0;
  var flgcall = true;
  @override
  void initState() {
    print("--------¡Inicializando el widger!----");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (flgcall) {
      print("----Aquí se hace el llamado a didChangeDependencies----");
      flgcall = !flgcall;
    }
    super.didChangeDependencies();
  }

  @override
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text('No se ha presionado el boton!!!!'),
              ElevatedButton(
                onPressed: () {
                  print("Se ha presionado el boton!!!!");
                  setState(
                    () {
                      counter++;
                    },
                  );
                },
                child: Text("$counter"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
