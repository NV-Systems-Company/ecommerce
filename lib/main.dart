import 'package:commerce/helpers/helpers.dart';
import 'package:commerce/pages/Login_page.dart';
import 'package:commerce/pages/home_page.dart';
import 'package:commerce/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(Commerce());

class Commerce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Commerce App',
      debugShowCheckedModeBanner: false,
      theme: _theme,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
      },
    );
  }

  ThemeData _theme = ThemeData(
      primaryColor: Helpers.hexToColor("#E60013"),
      primaryColorDark: Helpers.hexToColor("#E60013"),
      accentColor: Helpers.hexToColor("#E60013"),
      fontFamily: 'montserrat',
      textTheme: TextTheme(
        title: TextStyle(
          fontSize: 25.0,
          fontFamily: 'montserrat-medium',
          color: Colors.grey.shade800,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.0
        ),
        body1: TextStyle(
          fontSize: 18.0,
          color: Colors.grey.shade600,
        ),
        body2: TextStyle(
          fontSize: 16.0,
          color: Colors.grey.shade600,
        ),
        display1: TextStyle(
          fontSize: 14.0,
          color: Colors.grey.shade600,
        ),
        display2: TextStyle(
          fontSize: 12.0,
          color: Colors.white,
        ),
        caption: TextStyle(
          fontSize: 15.0,
          color: Colors.grey.shade600,
        ),
        button: TextStyle(
            fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.w400),
      ));


}
