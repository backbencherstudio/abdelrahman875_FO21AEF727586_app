import 'package:flutter/material.dart';

class BottomNavBarTheme {
  static BottomNavigationBarThemeData light = BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.deepPurple,
    unselectedItemColor: Colors.grey,
    selectedIconTheme: const IconThemeData(size: 28),
    unselectedIconTheme: const IconThemeData(size: 24),
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
  );

  static BottomNavigationBarThemeData dark = BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.tealAccent,
    unselectedItemColor: Colors.grey.shade600,
    selectedIconTheme: const IconThemeData(size: 28),
    unselectedIconTheme: const IconThemeData(size: 24),
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
  );
}
