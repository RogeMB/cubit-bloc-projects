import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppTheme().getTheme().primaryColor,
        elevation: 10,
        title: Text(
          'Home',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppTheme().getTheme().secondaryHeaderColor),
        ),
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
