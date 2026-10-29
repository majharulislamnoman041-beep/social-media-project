import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage2 extends StatefulWidget {
  const loginpage2({super.key});

  @override
  State<loginpage2> createState() => _loginpage2State();
}

class _loginpage2State extends State<loginpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter, // fixed
            colors: [
              Color.fromARGB(255, 6, 96, 231),
              Color.fromARGB(255, 35, 138, 240),
              Color.fromARGB(255, 96, 175, 239),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Login Here",
                    style: GoogleFonts.aladin(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Welcome Back",
                    style: GoogleFonts.majorMonoDisplay(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(55),
                    topLeft: Radius.circular(55),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20), // fixed
                  child: Column(
                    children: [
                      SizedBox(height: 45),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(250, 247, 169, 44),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: const Color.fromARGB(
                                      255,
                                      29,
                                      20,
                                      18,
                                    ),
                                  ),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Email or Phone Numbr",
                                  hintStyle: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      206,
                                      206,
                                      205,
                                    ),
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
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
