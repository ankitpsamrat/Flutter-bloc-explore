import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignIn Home'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center
            children: [
              Text(
                'error',
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {},
                child: Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
