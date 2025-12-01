import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Page 1"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Welcome to Page 1",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Student Name: Nusaibah Binta Kab",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "IUB ID: 2220564",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
