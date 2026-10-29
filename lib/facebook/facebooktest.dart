import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/facebook/profileTest.dart';
import 'package:flutter_application_1/facebook/searchTest.dart';

class homepage1 extends StatefulWidget {
  const homepage1({super.key});

  @override
  State<homepage1> createState() => _homepage1State();
}

class _homepage1State extends State<homepage1> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 243, 94, 65),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Profile")),
              PopupMenuItem(child: Text("Settings")),
              PopupMenuItem(child: Text("Logout")),
            ],
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => searchpage1()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.notification_add),
            onPressed: () {},
          ),
        ],
      ),

      // ✅ body fix
      body: [
        Center(child: Text("Home")),
        Center(child: Text("person")),
        Center(child: Text("video update")),
        Center(child: Text("group")),
      ][currentIndex],

      // ✅ bottom bar
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.person),
          TabItem(icon: Icons.ondemand_video),
          TabItem(icon: Icons.group),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text("majharul Islam Noman"),
                accountEmail: Text("noman12gmail.com"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}