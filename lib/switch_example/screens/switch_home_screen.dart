import 'package:flutter/material.dart';

class SwitchHomeScreen extends StatelessWidget {
  const SwitchHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Switch Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Notifications'),
                Switch(
                  value: true,
                  onChanged: (value) {},
                ),
              ],
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.symmetric(vertical: 30),
              color: Colors.red.withOpacity(0.2),
            ),
            Slider(
              value: 0.4,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
