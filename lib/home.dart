import 'package:flutter/material.dart';

import 'hello_animation.dart';
import 'hello_animation_properties.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  static const animationContainerSize = 200.0;
  static const duration = 3100;

  AnimationController _animController;

  @override
  void initState() {
    _animController = AnimationController(duration: const Duration(milliseconds: duration), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Hello Animation'),
      ),
      body: Center(
        child: Container(
          color: Colors.pink,
          height: animationContainerSize,
          width: animationContainerSize,
          child: HelloAnimation(
            animController: _animController,
            animProperties: HelloAnimationProperties(controller: _animController),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startAnimation,
        child: Icon(Icons.refresh),
      ),
    );
  }

  void _startAnimation() {
    _animController.reset();
    _animController.forward();
  }
}
