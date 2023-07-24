import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          '0',
          style: TextStyle(fontSize: 36.0),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            heroTag: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 5.0),
          FloatingActionButton(
            onPressed: () {},
            heroTag: 'Decrement',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
