import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home Page ..!"),),
      backgroundColor: Colors.lime,
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.pink,
         borderRadius: BorderRadius.circular(20) ),
         child: Column(mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Text("this is Home "),
          ElevatedButton(onPressed: (){

          }, child: Text("Goto next page."))
         ],
         ),

        ),
      ),
    );
  }
}