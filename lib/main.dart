import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.copyWith(
              bodyMedium: const TextStyle(
                color: Colors.white,
              ),
              labelMedium: const TextStyle(
                color: Colors.white,
              ),
            ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            splashFactory: NoSplash.splashFactory,
          ),
        ),
      ),
    );
  }
}
