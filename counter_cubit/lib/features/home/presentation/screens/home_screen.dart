import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 10,
        title: const Text('Home'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.apps_rounded),
            title: const Text('Counter Cubit'),
            onTap: () => context.push('/counter-cubit'),
          )
        ],
      ),
    );
  }
}
