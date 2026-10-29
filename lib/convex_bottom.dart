import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class Mybottombar extends StatefulWidget {
  const Mybottombar({super.key});

  @override
  State<Mybottombar> createState() => _MybottombarState();
}

class _MybottombarState extends State<Mybottombar> {
  int item = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("convex_Bottom bar ")),
      body: Center(child: Text("Clicked on: $item")),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.settings),
          TabItem(icon: Icons.person),
        ],

        style: TabStyle.react,
      ),
    );
  }
}
