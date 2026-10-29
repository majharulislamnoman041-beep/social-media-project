import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_application_1/facebook/profileTest.dart';
import 'package:flutter_application_1/facebook/search2.dart';

// 1. হোমপেজ স্ক্রীন / মেইন স্ক্যাফোল্ড
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

// 2. হোমপেজ স্টেট - UI এবং লজিক
class _homepageState extends State<homepage> {
  int currentIndex = 0; // কোন ট্যাব অ্যাকটিভ আছে সেটি ট্র্যাক করে

  // 3. ট্যাবের কন্টেন্ট লিস্ট
  final m = [
    HomePageContent(),
    friendPage(),
    Center(child: Text("media meneger")),
    Center(child: Text("Groups....!")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 4. অ্যাপবার (উপরের বার) + সার্চ + অ্যাকশন
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 122, 56), // কাস্টম কালার
        // 4a. সার্চ বার
        title: Column(children: [Center(child: Text("FaceBook"))]),

        // 4b. অ্যাপবার অ্যাকশন
        actions: [
          IconButton(
            icon: Icon(Icons.message), // মেসেজ আইকন
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => mytest(),
                ), // মেসেজ পেজে নেভিগেট
              );
            },
          ),
          PopupMenuButton(
            // ড্রপডাউন মেনু
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Profile")),
              PopupMenuItem(child: Text("Settings")),
              PopupMenuItem(child: Text("Logout")),
            ],
          ),
        ],
      ),

      // 5. বডি কন্টেন্ট (একটিভ ট্যাব অনুযায়ী)
      body: m[currentIndex],

      // 6. বটম নেভিগেশন বার
      bottomNavigationBar: ConvexAppBar(
        height: 35,
        items: [
          TabItem(icon: Icons.home), // হোম ট্যাব
          TabItem(icon: Icons.person), // ফ্রেন্ডস ট্যাব
          TabItem(icon: Icons.ondemand_video), // মিডিয়া ট্যাব
          TabItem(icon: Icons.group), // গ্রুপস ট্যাব
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index; // ট্যাব পরিবর্তন
          });
        },
        backgroundColor: Color(0xff1877F2),
        activeColor: Colors.white,
        color: Colors.white70,
      ),

      // 7. ড্রয়ার মেনু
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("majharul Islam Noman"), // ইউজারের নাম
              accountEmail: Text("noman12gmail.com"), // ইউজারের ইমেইল
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                // for off the drawer when back to home page
                Navigator.of(context).pop();

                //go to another page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ), // প্রোফাইল পেজে নেভিগেট
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// 8. হোমপেজ কন্টেন্ট (পোস্ট লিস্ট)
class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: CircleAvatar(child: Image.asset("images/noman.png")),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: const Color.fromARGB(255, 87, 75, 88),
                    content: Row(
                      children: [
                        Text("Searching..."),
                        Icon(Icons.search_rounded),
                      ],
                    ),
                  ),
                );
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => searchpage1(),
                //   ), // সার্চ পেজে নেভিগেট
                // );
              },
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color.fromARGB(255, 237, 117, 80),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                // child: Padding(
                //   padding: const EdgeInsets.all(5),
                //   child: TextField(
                    
                //   ),
                // ),
                child: Row(
                  children: [
                    SizedBox(width: 8),
                    Icon(Icons.search, color: Colors.grey), // সার্চ আইকন
                    SizedBox(width: 8),
                    Text(
                      "Search Facebook", // প্লেসহোল্ডার টেক্সট
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Friend page

class friendPage extends StatelessWidget {
  const friendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      children: [
        // 8a. পোস্ট কার্ড ১
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("N"), // প্রোফাইল ইনিশিয়াল
            ),
            title: Text("Majharul Islam Noman"), // ইউজারের নাম
            subtitle: Text("Hello, this is my first post!"), // পোস্ট কনটেন্ট
          ),
        ),
        // 8b. পোস্ট কার্ড ২
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Text("A"), // প্রোফাইল ইনিশিয়াল
            ),
            title: Text("Another User"),
            subtitle: Text("Flutter is awesome!"),
          ),
        ),
      ],
    );
  }
}
