import 'package:bloc_package/example2/counter/bloc/counter_bloc.dart';
import 'package:bloc_package/example2/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // for example 1
      // initialRoute: 'home',
      // routes: {
      //   'home': (context) => const HomePage(),
      //   'signIn': (context) => const SignInScreen(),
      // },

      // for other
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: const HomeScreen(),
      ),
    );
  }
}
