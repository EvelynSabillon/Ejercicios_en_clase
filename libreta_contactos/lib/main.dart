import 'package:flutter/material.dart';
import 'package:libreta_contactos/my_routes.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.lightGreen,
      ),
      initialRoute: Routes.contacts.name,
      routes: MyRoutes.routes,
    );
  }
}