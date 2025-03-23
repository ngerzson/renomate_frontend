import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Világos háttér, vagy módosítható sötétre
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Image.asset(
                'assets/logo.png', // Helyezd el az ikonodat az assets mappába
                height: 120, 
              ),
              SizedBox(height: 30),

              // Email mező
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email or Username',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20),

              // Jelszó mező
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 20),

              // Bejelentkezés gomb
              ElevatedButton(
                onPressed: () {
                  // Bejelentkezési logika
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Narancssárga szín a logóhoz illően
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: Text('LOGIN', style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
              SizedBox(height: 10),

              // Regisztráció és elfelejtett jelszó linkek
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {}, 
                    child: Text('Forgot Password?')
                  ),
                  Text(" | "),
                  TextButton(
                    onPressed: () {}, 
                    child: Text('Sign Up')
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}