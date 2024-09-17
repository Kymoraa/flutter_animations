import 'package:flutter/material.dart';
import 'package:flutter_animations/animated_Opacity.dart';
import 'package:flutter_animations/animated_container.dart';
import 'package:flutter_animations/animated_positioned.dart';
import 'package:flutter_animations/explicit_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Flutter Animations',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AnimatedContainerExample()),
                );
              },
              child: const Text('Animated Container'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AnimatedPositionedExample()),
                );
              },
              child: const Text('Animated Positioned'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AnimatedOpacityExample()),
                );
              },
              child: const Text('Animated Opacity'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExplicitAnimationsExample()),
                );
              },
              child: const Text('Explicit Animations'),
            ),
          ],
        ),
      ),
    );
  }
}
