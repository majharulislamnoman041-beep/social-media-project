import 'package:flutter/material.dart';
import 'package:flutter_application_1/facebook/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  var txt1 = TextEditingController();
  var txt2 = TextEditingController();
  String u = "nomankhan", p = "123#asdf";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
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
                  padding: EdgeInsets.all(20),

                  child: SingleChildScrollView(
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
                                color: Color.fromARGB(250, 247, 169, 44),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              TextField(
                                controller: txt1,
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  border: InputBorder.none,
                                ),
                              ),
                              Divider(),
                              TextField(
                                controller: txt2,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  border: InputBorder.none,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // textbotton
                        SizedBox(height: 30),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text("Forgot Password?"),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),

                        ElevatedButton(
                          onPressed: () {
                            var x = txt1.text.toString();
                            var y = txt2.text.toString();
                            if (x.isEmpty && y.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Enter User & Password"),
                                ),
                              );
                            } else if (x.length <= 6 && y.length <= 6) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Input must 7 carrector"),
                                ),
                              );
                            } else if (u == x && p == y) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => homepage(),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Wrong Input")),
                              );
                            }
                          },

                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 80,
                              vertical: 15,
                            ),
                          ),
                          child: Text("Login"),
                        ),

                        SizedBox(height: 30),

                        ElevatedButton(onPressed: () {}, child: Text("Signup")),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(width: 30),
            Text(
              "continue with social media",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(height: 20),

            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 19, 140, 239),
                    ),
                    child: Center(
                      child: Text(
                        "fecebook",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 30),
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 6, 6, 6),
                    ),
                    child: Center(
                      child: Text(
                        "Google",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
