import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() {
    const seedColor = Color.fromRGBO(140, 0, 221, 1);
    const iconColor = Color.fromRGBO(255, 160, 0, 1);

    return ThemeData(
      useMaterial3: true,
      // primarySwatch: Colors.amber,
      colorSchemeSeed: seedColor,
      listTileTheme: const ListTileThemeData(iconColor: iconColor),
    );
  }
}
