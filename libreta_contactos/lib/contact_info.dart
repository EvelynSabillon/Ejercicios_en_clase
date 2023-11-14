import 'package:flutter/material.dart';


class ContactInfo extends StatelessWidget {
  const ContactInfo({
    super.key, 
    required this.nombre, 
    required this.telefono, 
    required this.correo, 
    required this.avatarColor
  });

  final String nombre;
  final String telefono;
  final String correo;
  final Color avatarColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Widget para el avatar o foto de contacto
              CircleAvatar(
                backgroundColor: avatarColor,
                radius: 50,
                child: Text(
                  nombre.isNotEmpty ? nombre[0].toUpperCase() : '',
                  style: const TextStyle(
                    fontSize: 50, 
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              
              //Text del nombre del contacto
              Text(
                nombre,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400
                  ),
              ),
              const SizedBox(height: 20),
              
              //Barra de Herramientas de contacto
              Column(
                children: [
                  
                  //Linea de division
                  Container(
                    height: 1, 
                    width: double.infinity, 
                    color: Colors.grey[350], 
                  ),
                  const SizedBox(height: 10),

                  //Fila de botones de Contacto
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Boton de llamada
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.call_outlined, 
                              size: 28,
                              color: Color.fromARGB(255, 100, 107, 132),
                            ),
                          ),
                          const Text(
                            'Llamar',
                            style: TextStyle(
                              color: Color.fromARGB(255, 100, 107, 132),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),

                      //Boton de Mensaje
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.message_outlined,
                              size: 28,
                              color: Color.fromARGB(255, 100, 107, 132),
                            ),
                          ),
                          const Text(
                            'Mensaje de texto',
                            style: TextStyle(
                              color: Color.fromARGB(255, 100, 107, 132),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),

                      //Boton de Videollamada
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.videocam_outlined, 
                              size: 33,
                              color: Color.fromARGB(255, 100, 107, 132),
                            ),
                          ),
                          const Text(
                            'Video',
                            style: TextStyle(
                              color: Color.fromARGB(255, 100, 107, 132),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  
                  //Linea de division
                  Container(
                    height: 1, 
                    width: double.infinity, 
                    color: Colors.grey[350], 
                  ),
                ],
              ),
              const SizedBox(height: 20),
              
              Card(
                elevation: 0,
                color: const Color.fromARGB(255, 246, 240, 248),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Información de contacto',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 15),

                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: const Icon(
                          Icons.call_outlined,
                          size: 28,
                        ),
                        title: Text(telefono),
                        subtitle: const Text('Celular'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.message_outlined,
                                size: 28,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.videocam_outlined,
                                size: 33,
                              ),
                            ),
                          ],
                        ),
                      ),

                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Row(
                          children: [                           
                            IconButton(
                              onPressed: () {},
                              highlightColor: Colors.transparent,
                              icon: Image.asset(
                                'assets/icons/whatsapp_icon.png',
                                height: 27,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text('Enviar mensaje a +$telefono',), 
                          ],
                        ),
                      ),
                      

                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Row(
                          children: [                           
                            IconButton(
                              onPressed: () {},
                              highlightColor: Colors.transparent,
                              icon: Image.asset(
                                'assets/icons/whatsapp_icon.png',
                                height: 27,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text('Llamar a +$telefono',) 
                          ],
                        ),
                      ),

                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Row(
                          children: [                           
                            IconButton(
                              onPressed: () {},
                              highlightColor: Colors.transparent,
                              icon: Image.asset(
                                'assets/icons/whatsapp_icon.png',
                                height: 27,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text('Videollamar a +$telefono',), 
                          ],
                        ),
                      ),

                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Row(
                          children: [                           
                            IconButton(
                              onPressed: () {},
                              highlightColor: Colors.transparent,
                              icon: Image.asset(
                                'assets/icons/telegram_icon.png',
                                height: 27,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text('Mensaje al +$telefono',), 
                          ],
                        ),
                      ),

                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Row(
                          children: [                           
                            IconButton(
                              onPressed: () {},
                              highlightColor: Colors.transparent,
                              icon: Image.asset(
                                'assets/icons/telegram_icon.png',
                                height: 27,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text('Llamada de voz al +$telefono',) 
                          ],
                        ),
                      ),

                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Row(
                          children: [                           
                            IconButton(
                              onPressed: () {},
                              highlightColor: Colors.transparent,
                              icon: Image.asset(
                                'assets/icons/telegram_icon.png',
                                height: 27,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text('Videollamada al +$telefono',) 
                          ],
                        ),
                      ),

                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Row(
                          children: [                           
                            IconButton(
                              onPressed: () {},
                              highlightColor: Colors.transparent,
                              icon: const Icon(
                                Icons.mail
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text('Enviar correo a $correo',) 
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(height:50),
            ],
          ),
        ),
      ),
    );
  }
}