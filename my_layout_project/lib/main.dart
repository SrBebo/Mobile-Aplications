import 'package:flutter/material.dart';
//import 'package:my_layout_project/my_container.dart';
//import 'package:my_layout_project/my_widget_row.dart';

void main() {
  runApp(MyWidgetCol());
}

/*
class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi primera aplicación'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Mi primer Widget'),
          Text('Mi segundo Widget'),
          FlutterLogo()
        ],
    )); 
  }
}*/



/*
class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi segunda aplicación",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyWidgetRow(),
    );
  }
}
*/
//primera parte de la clase

/*class MainWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title: 'Mi segunda aplicación',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.amber,
            width: 100,
            height: 100,
          ),
        ),  
      ),
    );
  }
}*/

//Segunda parte de clase
/*
class MainWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi Segunda Aplicacion",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkF9f6gBDsZnyWq0Sn8wP223NIQKvrlZAusjk23KgHlltyiZqf5n9Y_OhANkddKSy_U3Q&usqp=CAU'),
              ),
              border: Border.symmetric(
                  horizontal: BorderSide(width: 1),
                  vertical: BorderSide(width: 4)),
            ),
            // color: Colors.amber,
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}*/
/*
class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi Segunda Aplicacion",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    'data:image/jpeg;base64,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'),
              ),
              border: const Border.symmetric(
                  horizontal: BorderSide(width: 4),
                  vertical: BorderSide(width: 4)),
              borderRadius: BorderRadius.circular(12),
            ),
            // color: Colors.amber,
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}*/