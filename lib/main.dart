import 'package:bloc_package/using_equatable/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      // for example 1
      // initialRoute: 'home',
      // routes: {
      //   'home': (context) => const HomePage(),
      //   'signIn': (context) => const SignInScreen(),
      // },

      // for counter
      // home: BlocProvider<CounterBloc>(
      //   create: (context) => CounterBloc(),
      //   child: const HomeScreen(),
      // ),

      // example 3
      home: EquatableDemo(),
    );
  }
}
