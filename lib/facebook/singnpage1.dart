import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mysign1 extends StatefulWidget {
  const Mysign1({super.key});

  @override
  State<Mysign1> createState() => _Mysign1State();
}

class _Mysign1State extends State<Mysign1> {
  // 2 ta value nici
  var txt1 = TextEditingController();
  var txt2 = TextEditingController();
  var txt3 = TextEditingController();

  Future<void> setName(String userName) async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    await pref.setString("user_name", userName);
  }

  Future<void> setPass(String passWrd) async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    await pref.setString("user_pass", passWrd);
  }

  Future<void> GetData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    // name = pref.getString("user_name") ?? "";
    // passs = pref.getString("user_pass") ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.bottomCenter,
            end: AlignmentGeometry.bottomLeft,
            colors: [
              Color.fromARGB(255, 6, 96, 231),
              Color.fromARGB(255, 35, 138, 240),
              Color.fromARGB(255, 96, 175, 239),
            ],
          ),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  // Padding(padding: EdgeInsets.all(20)),
                  Text(
                    "CREATE ",
                    style: GoogleFonts.aclonica(
                      color: const Color.fromARGB(255, 66, 58, 31),
                      fontSize: 35,
                    ),
                  ),

                  Text(
                    "ACCOUNT ",
                    style: GoogleFonts.aclonica(
                      color: const Color.fromARGB(255, 88, 77, 39),
                      fontSize: 35,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 150, 202, 244),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(45),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(height: 10),

                      // khali gor nici
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 253, 255, 254),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 251, 189, 147),
                              blurRadius: 20,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            TextField(
                              controller: txt1,
                              decoration: InputDecoration(
                                hintText: "Email..",
                                border: InputBorder.none,
                              ),
                            ),
                            Divider(),

                            TextField(
                              controller: txt2,
                              decoration: InputDecoration(
                                hintText: "PASSWROD..",
                                border: InputBorder.none,
                              ),
                            ),
                            Divider(),
                            TextField(
                              controller: txt2,
                              decoration: InputDecoration(
                                hintText: "Confirm Password...",
                                border: InputBorder.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              
                            },
                            child: Text("Login."),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
