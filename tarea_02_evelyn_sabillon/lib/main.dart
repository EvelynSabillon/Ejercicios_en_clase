import 'package:flutter/material.dart';
import 'package:tarea_02_evelyn_sabillon/contact_info.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contactos',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.green,
      ),
      initialRoute: '/contactInfo',
      routes: {
        '/contactInfo':(context) => const ContactInfo()
      },
    );
  }
}