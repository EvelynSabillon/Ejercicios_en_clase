import 'dart:math';
import 'package:flutter/material.dart';
import 'package:libreta_contactos/my_routes.dart';


class ContactPage extends StatelessWidget {
  ContactPage({super.key});

  final List<Map<String, dynamic>> contactos = [
    {'nombre': 'Crear contacto nuevo'},
    {'nombre': 'A Besi', 'telefono': '504 9643-8574', 'correo': 'besi@gmail.com'},
    {'nombre': 'Abby', 'telefono': '504 9743-9576', 'correo': 'abby@gmail.com'},
    {'nombre': 'Abg. Alejandro Redondo Credimovil tgu', 'telefono': '504 8543-8888', 'correo': 'alejandro@gmail.com'},
    {'nombre': 'Abg. Diógenes', 'telefono': '504 3335-8574', 'correo': 'diogenes@gmail.com'},
    {'nombre': 'Abg. Juan Reyes', 'telefono': '504 9888-4774', 'correo': 'juan@gmail.com'},
    {'nombre': 'Abigail Amador', 'telefono': '504 3333-3333', 'correo': 'abi@gmail.com'},
    {'nombre': 'Abner', 'telefono': '504 9999-8888', 'correo': 'abner@gmail.com'},
    {'nombre': 'Abog. Mary Puerto', 'telefono': '504 5556-1234', 'correo': 'mary@gmail.com'},
    {'nombre': 'Abogada Zuniga UNAH', 'telefono': '504 9222-7964', 'correo': 'zuniga@gmail.com'},
    {'nombre': 'Adelaida', 'telefono': '504 9111-7777', 'correo': 'adelaida@gmail.com'},
    {'nombre': 'Alamitos', 'telefono': '504 4477-9666', 'correo': 'alamitos@gmail.com'},
    {'nombre': 'Alcaldia', 'telefono': '504 2222-1111', 'correo': 'alcaldia@gmail.com'},
    {'nombre': 'Bomberos', 'telefono': '504 8888-9999', 'correo': 'bomberos@gmail.com'},
    {'nombre': 'Belkis', 'telefono': '504 3689-7415', 'correo': 'belkis@gmail.com'},
    {'nombre': 'Britney', 'telefono': '504 8974-2643', 'correo': 'bri@gmail.com'},
    {'nombre': 'Carla Perez', 'telefono': '504 5555-2222', 'correo': 'carla@gmail.com'},
  ];

  final List<Color> colores = [
    const Color.fromARGB(255, 245, 196, 20),
    const Color.fromARGB(255, 251, 148, 35),
    const Color.fromARGB(255, 101, 67, 188),
    const Color.fromARGB(255, 41, 207, 233),
    const Color.fromARGB(255, 241, 75, 128),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: contactos.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return ListTile(
                      title: Text(
                        contactos[index]['nombre'],
                        style: const TextStyle(
                          color:  Color.fromARGB(255, 43, 118, 156)
                        ),
                      ),
                      leading: const Icon(
                        Icons.person_add_alt_1_outlined,
                        color:  Color.fromARGB(255, 43, 118, 156),
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          Routes.add
                        );
                      },
                      contentPadding: const EdgeInsets.only(left: 26.0),
                    );
                  } 
                  else 
                  {
                    String nombre = contactos[index]['nombre'];
                    String telefono = contactos[index]['telefono'] ?? '';
                    String correo = contactos[index]['correo'] ?? '';
                    String inicial = nombre[0].toUpperCase();
                    final Color avatarColor = colores[Random().nextInt(colores.length)];
                    return ListTile(
                      title: Text(nombre),
                      leading: CircleAvatar(
                        backgroundColor: avatarColor,
                        radius: 20,
                        child: Text(
                          inicial,
                          style: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          Routes.details,
                          arguments: {
                            'nombre': nombre,
                            'telefono': telefono,
                            'correo': correo,
                            'avatarColor': avatarColor,
                          },
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 43, 118, 156),
          onPressed: () {},
          child: const Icon(
            color: Colors.white,
            Icons.dialpad
          ),
        ),
      ),
    );
  }
}
