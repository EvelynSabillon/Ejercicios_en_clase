import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Widget para el avatar o foto de contacto
              const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 244, 54, 133),
                radius: 50,
                child: Text(
                  "P",
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ),
              const SizedBox(height: 40),
              
              //Text del nombre del contacto
              const Text(
                "Pascualillo",
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),

              Column(
                children: [
                  
                  Container(
                    height: 1, 
                    width: double.infinity, 
                    color: Colors.grey[300], 
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.call, color: Color.fromARGB(255, 150, 142, 142)),
                          ),
                          const Text('Llamar'),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.message),
                          ),
                          const Text('Mensaje de Texto'),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.videocam),
                          ),
                          const Text('Video'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
