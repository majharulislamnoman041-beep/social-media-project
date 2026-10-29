import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  var mylist = {"tanjim", "foysal", "ashraf", "noman"};

  Test(String s, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("my friend name")),

        body: ListView.builder(
          itemCount: mylist.length,
          itemBuilder: (context, i) {
            return ListTile(
              title: Text(
                "Data is :$mylist ",
                style: TextStyle(fontSize: 40),
              ),
              subtitle: Text("frind name "),
              textColor: Colors.amberAccent,
            );
          },
        ),
      ),
    );
  }
}
