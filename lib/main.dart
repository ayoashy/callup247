import 'package:callup247/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CallUp247',
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.lightBlue[200],
        scaffoldBackgroundColor: Colors.lightBlueAccent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
