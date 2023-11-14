import 'package:flutter/material.dart';
import 'package:libreta_contactos/contact_info.dart';
import 'package:libreta_contactos/contact_page.dart';



enum Routes { contacts, details }

class MyRoutes {
  static final routes = {
    Routes.contacts.name: (BuildContext context) => ContactPage(),
    Routes.details.name: (BuildContext context) => ContactInfo(),
  };
}