import 'package:flutter/material.dart';

class ExplicitAnimationsExample extends StatefulWidget {
  const ExplicitAnimationsExample({super.key});

  @override
  State<ExplicitAnimationsExample> createState() => _ExplicitAnimationsExampleState();
}

class _ExplicitAnimationsExampleState extends State<ExplicitAnimationsExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 50.0, end: 200.0).animate(_controller);

    _controller.forward();
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[100],
      appBar: AppBar(
        title: const Text('Explicit Animations'),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Container(
              width: _animation.value,
              height: _animation.value,
              color: Colors.green,
            );
          },
        ),
      ),
    );
  }
}
