import 'package:flutter/material.dart';

class tsetlist extends StatefulWidget {
  const tsetlist({super.key});

  @override
  State<tsetlist> createState() => _tsetlistState();
}

class _tsetlistState extends State<tsetlist> {
  var mylist = ["Help&supot", "Profile", "Settings", "Logout"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text("ListView apps"),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text("noman"),
                accountEmail: Text("noman@gmail.com"),

                currentAccountPictureSize: Size(50, 50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.cyanAccent,
                  child: Image.asset(""),
                ),
              ),
            ),

            ListTile(
              title: Text("Profile"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Help&supot"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.amberAccent,
      body: ListView.builder(
        itemCount: mylist.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text("ID:$index "),
            title: Text(
              "Data is :${mylist[index]}",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text("on Data "),
          );
        },
      ),
    );
  }
}
