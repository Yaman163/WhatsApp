import 'package:flutter/material.dart';
import 'package:untitled2/screens//home.dart';
import 'package:untitled2/screens/LoginPage.dart';
import 'package:untitled2/screens/chat.dart';
import 'package:untitled2/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/screens/welcomepage.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Color(0xFF075E55),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),

      ),
      routes: {
        "/" :(context) => home(),
        "chat" :(context) => chat(),


      },
    );
  }
}


