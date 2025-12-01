import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyAssignmentApp());
}

class MyAssignmentApp extends StatelessWidget {
  const MyAssignmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment Two UI',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
