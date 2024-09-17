import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});

  @override
  State<AnimatedPositionedExample> createState() => _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  bool _isMoved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Animated Positioned'),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 400,
            height: 400,
            child: Stack(
              children: [
                AnimatedPositioned(
                  top: _isMoved ? 50.0 : 200.0,
                  left: _isMoved ? 50.0 : 200.0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.pinkAccent,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isMoved = !_isMoved;
              });
            },
            child: const Text('Move Block'),
          ),
        ],
      ),
    );
  }
}
