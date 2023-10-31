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
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 244, 54, 133),
                radius: 50,
                child: Text("P",
                    style: TextStyle(fontSize: 50, color: Colors.white)),
              ),
              SizedBox(height: 40),
              Text(
                "Pascualillo",
                style: TextStyle(fontSize: 24),
              ),

              Row(

              ),

            ],
          ),
        ),
      ),
    );
  }
}
