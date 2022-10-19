import 'package:flutter/material.dart';

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
                Navigator.pushNamed(context, 'signIn');
              },
              child: Text('Singin with email id'),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              child: Text('Singin with google'),
            ),
          ],
        ),
      ),
    );
  }
}
