import 'package:flutter/material.dart';

class mytest extends StatefulWidget {
  const mytest({super.key});

  @override
  State<mytest> createState() => _mytestState();
}

class _mytestState extends State<mytest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello.....!"),
      ),
    );
  }
}