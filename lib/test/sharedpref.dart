import 'package:flutter/material.dart';

class Sharedpref extends StatefulWidget {
  const Sharedpref({super.key});

  @override
  State<Sharedpref> createState() => _SharedprefState();
}

class _SharedprefState extends State<Sharedpref> {
  var txt1 = TextEditingController();
  void adddata()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("local storage"), centerTitle: true),
      body: Center(
        child: Container(
          height: 580,
          width: 450,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(),
        ),
      ),
    );
  }
}
