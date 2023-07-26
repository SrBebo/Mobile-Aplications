import 'package:flutter/material.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            width: 100,
            height: 100,
            child: Center(
              child: ClipOval(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxFz6mPKLhWjTSSYQm2FKkAvIowmyZ5Xx5WA&usqp=CAU'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: 80, //tamaño de la imagen
                  height: 80,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            //flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fabricio Xavier Simbaña Oviedo',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '7mo Semestre',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
