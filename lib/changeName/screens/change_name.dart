import 'package:bloc_package/changeName/bloc/name_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeName extends StatelessWidget {
  ChangeName({Key? key}) : super(key: key);

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Name'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BlocBuilder<NameBloc, NameState>(
            builder: (context, state) {
              return Text(
                state.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: _textController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter new name',
              ),
            ),
          ),
          ElevatedButton(
            child: const Text('Change name'),
            onPressed: () {
              final newName = _textController.text.trim();
              if (newName.isNotEmpty) {
                context.read<NameBloc>().add(ChangeNameEvent(newName));

                _textController.clear();
              }
            },
          ),
        ],
      ),
    );
  }
}
