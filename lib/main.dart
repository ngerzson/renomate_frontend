import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/main_category_screen.dart'; // Új screen importálása

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RenoMate',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // Kezdőképernyő: bejelentkezés
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/main': (context) => MainCategoryScreen(),
        // Ide jön majd a subcategory screen is: '/subcategory': (context) => SubcategoryScreen()
      },
    );
  }
}
