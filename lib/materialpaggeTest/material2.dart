import 'package:flutter/material.dart';

class materipage1 extends StatefulWidget {
  const materipage1({super.key});

  @override
  State<materipage1> createState() => _materipage1State();
}

class _materipage1State extends State<materipage1> { 
 String? maag;
  @override
  Widget build(BuildContext context) {
    maag = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text("2nd page"),),
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Container(
          height: 650,
          width: 550,
          decoration: BoxDecoration(
            color: Colors.cyanAccent,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is 2nd page "),
              Text("Data:$maag"),
              ElevatedButton(
                onPressed: ()  {
                  Navigator.of(context).pop("Welcome back to Home");
                },
                child: Text(" Goto Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
