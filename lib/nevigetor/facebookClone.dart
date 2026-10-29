import 'package:flutter/material.dart';

class facebookClone extends StatefulWidget {
  const facebookClone({super.key});

  @override
  State<facebookClone> createState() => _facebookCloneState();
}

class _facebookCloneState extends State<facebookClone> {
  void mySnackbar(msg, context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg), duration: Duration(seconds: 1)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   onPressed: () {
          //     mySnackbar("i'm menu", context);
          //   },
          //   icon: Icon(Icons.menu),
          // ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.person)),
              Tab(icon: Icon(Icons.ondemand_video)),
              Tab(icon: Icon(Icons.group)),
              Tab(icon: Icon(Icons.notification_add)),
            ],
          ),
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          elevation: 10,

          actions: [
            IconButton(
              onPressed: () {
                mySnackbar("i'm add box", context);
              },
              icon: Icon(Icons.add_box),
            ),
            IconButton(
              onPressed: () {
                mySnackbar("i'm search", context);
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                mySnackbar("i'm logout", context);
              },
              icon: Icon(Icons.logout),
            ),
          ],
          actionsPadding: EdgeInsets.only(right: 20),
        ),
        body: TabBarView(children: []),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(child: Text("tu")),
                  currentAccountPictureSize: Size(50, 50),
                  accountName: Text("Tanjim uchiha"),
                  accountEmail: Text("choto_cele_tanjim@gmail.com"),
                ),
              ),
              ListTile(
                title: Text("Settings", style: TextStyle(fontSize: 20)),
                leading: Icon(Icons.settings),
              ),
              ListTile(
                title: Text("Profile", style: TextStyle(fontSize: 20)),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Home", style: TextStyle(fontSize: 20)),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("Login", style: TextStyle(fontSize: 20)),
                leading: Icon(Icons.login),
              ),
              ListTile(
                title: Text("Logout", style: TextStyle(fontSize: 20)),
                leading: Icon(Icons.logout),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
