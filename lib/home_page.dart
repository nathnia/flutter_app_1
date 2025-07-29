import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home"),),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                 Navigator.pop(context);
                },
                child: Text("back"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
