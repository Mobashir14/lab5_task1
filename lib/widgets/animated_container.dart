import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

 @override 
 _MyAnimatedContainerState createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  bool _isExpanded = true;

  void toggleIsExpanded () {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleIsExpanded,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
      width: _isExpanded ? 200 : 150,
      height: _isExpanded ? 200 : 150,
      color: _isExpanded ? Colors.amber : Colors.blue,
      child: Center(child: Text(_isExpanded ? 'Tap me to SHRINK' : 'Tap me to EXPAND'),),
    ),
    );
  }
}
