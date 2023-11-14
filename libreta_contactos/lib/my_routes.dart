import 'package:flutter/material.dart';
import 'package:libreta_contactos/add_contact.dart';

import 'package:libreta_contactos/contact_info.dart';
import 'package:libreta_contactos/contact_page.dart';
import 'package:libreta_contactos/unknown_page.dart';


class Routes {
  static const  String contacts = 'contacts';
  static const String details = 'details';
  static const String add = 'add';
}

class MyRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.contacts:
        return MaterialPageRoute(builder: (_) => ContactPage());
      case Routes.details:
        if (settings.arguments != null) {
          Map<String, dynamic> args = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (_) => ContactInfo(
              nombre: args['nombre'] ?? '',
              telefono: args['telefono'] ?? '',
              correo: args['correo'] ?? '',
              avatarColor: args['avatarColor'] ?? Colors.blue,
            ),
          );
        }
        return MaterialPageRoute(builder: (_) => const ContactInfo(nombre: '', correo: '', telefono: '', avatarColor:Colors.black,));
      case Routes.add:
        return MaterialPageRoute(builder: (_) => const AddContact());
      default:
        return MaterialPageRoute(builder: (_) => const UnknownPage());
    }
  }
}
