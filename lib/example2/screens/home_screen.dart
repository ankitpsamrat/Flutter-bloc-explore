import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter app'),
      ),
      body: const Center(
        child: Text('1'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {},
          ),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
