import 'package:flutter/material.dart';


class MyListWidget extends StatelessWidget {
  //const MyListWidget({super.key});//Forma 1

  //Forma 2
  MyListWidget({super.key});

  var availabeStudents =[
    {'name': 'Estudiante 1', 'grade': '7'},
    {'name': 'Estudiante 2', 'grade': '8'},
    {'name': 'Estudiante 3', 'grade': '4'},
    {'name': 'Estudiante 4', 'grade': '9'},
    {'name': 'Estudiante 1', 'grade': '8'},
    {'name': 'Estudiante 2', 'grade': '5'},
    {'name': 'Estudiante 3', 'grade': '6'},
    {'name': 'Estudiante 4', 'grade': '4'},
    {'name': 'Estudiante 1', 'grade': '9'},
    {'name': 'Estudiante 2', 'grade': '6'},
    {'name': 'Estudiante 3', 'grade': '6'},
    {'name': 'Estudiante 4', 'grade': '8'},
    {'name': 'Estudiante 1', 'grade': '3'},
    {'name': 'Estudiante 2', 'grade': '9'},
    {'name': 'Estudiante 3', 'grade': '10'},
    {'name': 'Estudiante 4', 'grade': '9'},
  ];
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index){
      //forma 4
       return Padding(
         padding: const EdgeInsets.only(
          top: 8,
          bottom: 5,
          left: 10,
          right: 5,
         ),
         child: Card(
            elevation: 10,
            child: ListTile(
              leading: const Icon(Icons.people),
              title: Text(availabeStudents[index]['name']!.toString()),
              subtitle: Text('Grade: ${availabeStudents[index]['grade']!}'),
            ),
          ),
       );
      //forma 4

        //forma 3
        /*return Card(
          elevation: 10,
          child: ListTile(
            leading: const Icon(Icons.people),
            title: Text(availabeStudents[index]['name']!),
            subtitle: Text(availabeStudents[index]['grade']!),
          ),
        );*/
        //forma 3
        //Forma 2
        /*return ListTile(
          leading: const Icon(Icons.people),
          title: Text(availabeStudents[index]['name']!),
          subtitle: Text(availabeStudents[index]['grade']!),
        );*/
        //Forma 2
      },
      itemCount: availabeStudents.length,
    );
  //Forma 2

  //Forma 1
    /*return ListView(
      children: const[
        ListTile(
          leading: Icon(Icons.car_rental),
          title: Text('Car'),
          subtitle: Text('Rentals'),
          trailing: Icon(Icons.more_vert),
        ),
        ListTile(
          leading: Icon(Icons.flight),
          title: Text('Flight'),
          subtitle: Text('Rentals'),
          trailing: Icon(Icons.more_vert),
        ),
      ],  
    );*/
  //Forma 1
  }
}