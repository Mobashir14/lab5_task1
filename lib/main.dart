import 'package:flutter/material.dart';
import 'package:lab5_task1/widgets/animated_container.dart';
import 'package:lab5_task1/widgets/animated_text.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyAnimatedContainer(),
              MyAnimatedText()
            ],
          )
        ),
      ),
    );
  }
}
