import 'package:flutter/material.dart';
import 'pages/home_page.dart';

import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo Flutter App",
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/login",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }

  void someMethod({required String Something}) => print("object: ");
}
