import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/shared/app_header.dart';
import './pages/home.dart';
import './utils/configs/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: const Scaffold(
        appBar: AppHeader(
          title: 'Quiz App',
        ),
        body: HomePage(),
      ),
    );
  }
}
