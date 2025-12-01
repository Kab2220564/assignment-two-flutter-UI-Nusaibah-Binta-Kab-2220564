import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page4.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() => currentIndex = index);
        },
        children: const [
          PageOne(),
          PageTwo(),
          PageFour(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Page 1"),
          BottomNavigationBarItem(icon: Icon(Icons.layers), label: "Page 2"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Page 4"),
        ],
      ),
    );
  }
}
