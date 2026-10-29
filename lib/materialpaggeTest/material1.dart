import 'package:flutter/material.dart';

class materipage extends StatefulWidget {
  const materipage({super.key});

  @override
  State<materipage> createState() => _materipageState();
}

class _materipageState extends State<materipage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is 1st page  "),),
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: ListView(
          children: [
            Text("go to next.."),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(
                //   context,
                // ).push(
                //   MaterialPageRoute(
                //   builder: (context) => materipage()))
                Navigator.pushNamed(context, "nuha",arguments: "Holle guys..")
                  .then((val){
                SnackBar sn = SnackBar(content: Text("Data:$val"));
               ScaffoldMessenger.of(context).showSnackBar(sn);
                  });

                  
              },
              
              child: Text("Goto next"),
            ),
          ],
        ),
      ),
    );
  }
}
