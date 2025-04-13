import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/main_category_screen.dart';


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
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/main': (context) => const MainCategoryScreen(),
        // Fontos: SubcategoryScreen itt nem lehet direkt hívható,
        // mert `mainCategoryId` paraméter kell neki!
        // Ehelyett `Navigator.push`-szal kell átadni paraméterrel!
      },
    );
  }
}