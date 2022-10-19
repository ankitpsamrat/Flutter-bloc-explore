import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/authentication/signin/bloc/signin_bloc.dart';
import '/authentication/signin/screens/signin_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form validation using bloc'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (context) => SignInBloc(),
                      child: SignInScreen(),
                    ),
                  ),
                );
                // Navigator.pushNamed(context, 'singIn', arguments: {
                //   BlocProvider(
                //     create: (context) => SignInBloc(),
                //   ),
                // });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
              ),
              child: Text('Singin with email id'),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
              ),
              child: Text('Singin with google'),
            ),
          ],
        ),
      ),
    );
  }
}
