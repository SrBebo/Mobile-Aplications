import 'package:flutter/material.dart';

class BodyCard extends StatelessWidget {
  const BodyCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //padding: const EdgeInsets.symmetric(horizontal: 100),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    child: const Text(
                      'Llano Grande',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    child: const Text(
                      '+593 984 041 106',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/2111/2111463.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              //
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/5616/5616461.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/3296/3296467.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/455/455705.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
