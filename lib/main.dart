import 'package:flutter/material.dart';
import 'package:musica/welcome/welcome.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      title: 'Huastek',
      initialRoute: 'home',
      routes: {
        'home' : (context) => const WelcomePage(),
      },
    );
  }
}