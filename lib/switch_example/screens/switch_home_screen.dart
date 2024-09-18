import 'package:bloc_package/switch_example/bloc/switch_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                BlocBuilder<SwitchBloc, SwitchState>(
                  builder: (context, state) {
                    return Switch(
                      value: state.isSwitch,
                      onChanged: (value) {
                        context.read<SwitchBloc>().add(EnableOrDisableEvent());
                      },
                    );
                  },
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
