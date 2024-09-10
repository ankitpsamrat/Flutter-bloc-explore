import 'package:bloc_package/switch_example/screens/switch_home_screen.dart';
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
      title: 'Bloc Explore',

      // for example 1
      // initialRoute: 'home',
      // routes: {
      //   'home': (context) => const HomePage(),
      //   'signIn': (context) => const SignInScreen(),
      // },

      // for example 2
      // home: BlocProvider<CounterBloc>(
      //   create: (context) => CounterBloc(),
      //   child: const CounterDemo(),
      // ),

      // // for equatable example
      // home: BlocProvider(
      //   create: (context) => CounterBloc(),
      //   child: const EquatableDemo(),
      // ),

      // for multi state example
      // home: BlocProvider(
      //   create: (context) => CounterBloc(),
      //   child: const EquatableDemo(),
      // ),
      home: SwitchHomeScreen(),
    );
  }
}
