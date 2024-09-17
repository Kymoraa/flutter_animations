import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        title: const Text('Animated Opacity'),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 7),
              child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.redAccent,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
            },
            child: const Text('Fade Block'),
          ),
        ],
      ),
    );
  }
}
