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
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              //Widget para el avatar o foto de contacto
              const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 239, 45, 107),
                radius: 50,
                child: Text(
                  "P",
                  style: TextStyle(
                    fontSize: 50, 
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              
              //Text del nombre del contacto
              const Text(
                "Pascualillo",
                style: TextStyle(
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
                        title: const Text('+504 9902-9311'),
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
                            const Text('Enviar mensaje a +504 9902-9311',), 
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
                            const Text('Llamar a +504 9902-9311',) 
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
                            const Text('Videollamar a +504 9902-9311',), 
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
                            const Text('Mensaje al +50499029311',), 
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
                            const Text('Llamada de voz al +50499029311',) 
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
                            const Text('Videollamada al +50499029311',) 
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
