import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_package/switch_example/bloc/switch_bloc.dart';
import 'switch_example/screens/switch_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

      // for switch example
      home: BlocProvider(
        create: (context) => SwitchBloc(),
        child: const SwitchHomeScreen(),
      ),

      // for switch example
      // home: BlocProvider(
      //   create: (context) => SwitchBloc(),
      //   child: const ImgPickerHome(),
      // ),
    );
  }
}
