import 'package:flutter/material.dart';

class AppConfig {
  static const String flavor = String.fromEnvironment(
    'FLAVOR',
    defaultValue: 'development',
  );

  // Status bar color for each flavor
  static Color get statusBarColor {
    return flavor == 'development'
        ? Colors.green
        : Colors.white; // Green for development, White for production
  }
}
