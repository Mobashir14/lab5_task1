import 'package:flutter/material.dart';

class MyAnimatedText extends StatefulWidget {
  const MyAnimatedText({super.key});

  @override
  _myAnimatedTextState createState() => _myAnimatedTextState();
}

class _myAnimatedTextState extends State<MyAnimatedText> {
  bool _isVisible = true;

  void changeVisibility () {
    setState(() {
    _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AnimatedOpacity(opacity: _isVisible ? 1 : 0, duration: const Duration(seconds: 2), child: const Text('this is text to toggle'),),
        ElevatedButton(onPressed: changeVisibility, child: const Text('toggle'))
      ],
    );
  }
}