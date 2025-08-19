import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name = "Almira Nathania";
  final String email = "almiraNathania@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50)),
          SizedBox(height: 10),
          Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(email, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
