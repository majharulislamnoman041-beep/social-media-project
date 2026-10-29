import 'package:flutter/material.dart';
import 'package:flutter_application_1/test/Test.dart';

class pagenum1 extends StatelessWidget {
  const pagenum1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: SizedBox( height: 200,width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Test("this is secend page"),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,MaterialPageRoute(builder: (context) => pagenum2()),);
                },
                child: Text("Go to Thrid page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
