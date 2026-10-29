import 'package:flutter_application_1/facebook/login_signup.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  loginpage();

  // ApiData();
}

// Future<void> ApiData() async {
//   var data;
//   var mylink = Uri.parse("http://localhost/api/apiTest.php");
//   var respond = await http.get(mylink);
//   data = jsonDecode(respond.body);
//   print(respond.body);
// }
