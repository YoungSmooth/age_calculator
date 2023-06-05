import 'package:flutter/material.dart';

class AgeCounterAnimation extends StatefulWidget {
  const AgeCounterAnimation({super.key});

  @override
  State<AgeCounterAnimation> createState() => _AgeCounterAnimationState();
}

class _AgeCounterAnimationState extends State<AgeCounterAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    animation = CurvedAnimation(parent: _controller, curve: Curves.easeInSine);
    _controller.addListener(() {
      this.setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
