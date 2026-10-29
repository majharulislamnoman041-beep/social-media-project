import 'package:flutter/material.dart';

class MyAdd extends StatefulWidget {
  const MyAdd({super.key});

  @override
  State<MyAdd> createState() => _MyAddState();
}

class _MyAddState extends State<MyAdd> {
  var txt1 = TextEditingController();
  var txt2 = TextEditingController();
  int? rs;
  @override
  void initState() {
    rs = 0;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add numbers"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 64, 58, 236),
      ),
      backgroundColor: const Color.fromARGB(255, 244, 223, 223),
      body: Center(
        child: Container(
          width: 500,
          height: 600,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: txt1,
                  decoration: InputDecoration(hintText: "Enter first value: "),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: txt2,
                  decoration: InputDecoration(hintText: "Enter second value: "),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        int x = int.parse(txt1.text.toString());
                        int y = int.parse(txt1.text.toString());
                        setState(() {
                          rs = x + y;
                        });
                      },
                      child: Text("ADD"),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        txt1.text = "";
                        txt2.text = "";
                        setState(() {
                          rs = 0;
                        });
                      },
                      child: Text("Clear"),
                    ),
                  ],
                ),
                Text("Result is : $rs"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
