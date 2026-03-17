import 'package:bloc_package/internet_check/bloc/internet_bloc.dart';
import 'package:bloc_package/internet_check/screens/internet_screen.dart';
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
      title: 'Bloc Explore',
      home: MultiBlocProvider(
        providers: [
          // BlocProvider(create: (context) => CounterBloc()), // normal method
          // BlocProvider(create: (context) => CounterBloc()), // equatable method
          // BlocProvider(create: (context) => SwitchBloc()),
          // BlocProvider(create: (context) => ImgPickerBloc()),
          // BlocProvider(create: (context) => SignInBloc()),
          // BlocProvider(create: (context) => NameBloc()),
          BlocProvider(create: (context) => InternetBloc()),
        ],
        // child: const CounterDemo(),
        // child: const EquatableDemo(),
        // child: const SwitchHomeScreen(),
        // child: const ImgPickerHome(),
        // child: SignInScreen(),
        // child: ChangeName(),
        child: const InternetScreen(),
      ),
    );
  }
}
