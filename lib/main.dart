
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
void main() {
  runApp(ProviderScope(child: MyApp()));  // Wrap the app with ProviderScope
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Clean Architecture Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: null,  // Start with UserPage
    );
  }
}
