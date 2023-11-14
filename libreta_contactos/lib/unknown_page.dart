import 'package:flutter/material.dart';


class UnknownPage extends StatelessWidget {
  const UnknownPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Unknown'),
        ),
        body: const Center(
          child: Text('404 Error'),
        ),
      ),
    );
  }
}