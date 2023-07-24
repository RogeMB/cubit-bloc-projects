import 'package:counter_cubit/features/home/presentation/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.amber,
        // colorSchemeSeed: Colors.deepPurple,
      ),
      home: const HomeView(),
    );
  }
}
