import 'package:bloc_package/authentication/signin/screens/signin_screen.dart';
import 'package:bloc_package/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'signIn': (context) => SignInScreen(),
      },
    );
  }
}
