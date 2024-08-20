import 'package:flutter/material.dart';

class EquatableDemo extends StatelessWidget {
  const EquatableDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equatable Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '1',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: const Text('Add'),
                onPressed: () {},
              ),
              ElevatedButton(
                child: const Text('Remove'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
