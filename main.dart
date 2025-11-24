// lib/main.dart
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'login_screen.dart'; // Importa a tela de Login

void main() {
  // Inicializa formatação de datas para o calendário funcionar em português (pt_BR)
  initializeDateFormatting('pt_BR').then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ACQA Planner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark, // Tema Escuro
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
          brightness: Brightness.dark,
        ).copyWith(
          primary: const Color(0xFFE94560), // Cor principal
          background: const Color(0xFF1A1A2E), // Fundo azul escuro
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
