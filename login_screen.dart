// lib/login_screen.dart
import 'package:flutter/material.dart';
import 'calendar_screen.dart'; // Importa o calendário

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ACQA Planner Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const TextField(
                decoration: InputDecoration(labelText: 'Usuário (admin)'),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Senha (123)'),
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  // Vai para a tela do calendário
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CalendarScreen(),
                    ),
                  );
                },
                child: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
