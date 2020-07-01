import 'package:flutter/material.dart';

import 'package:simple_hello_animation/hello_animation_properties.dart';

class HelloAnimation extends StatelessWidget {
  const HelloAnimation({Key key, @required this.animController, @required this.animProperties}) : super(key: key);

  final AnimationController animController;
  final HelloAnimationProperties animProperties;

  @override
  Widget build(BuildContext context) => AnimatedBuilder(animation: animController, builder: (_, child) => _buildAnimation());

  Widget _buildAnimation() => Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(left: 0, right: 0, bottom: 0, child: _video()),
          Positioned(left: 0, right: 0, bottom: 0, child: _battery()),
          Positioned(left: 0, right: 0, bottom: 0, child: _phone()),
          Positioned(left: 0, right: 0, bottom: 0, child: _star()),
          Positioned(left: 0, right: 0, bottom: 0, child: _casino()),
          Positioned(left: 0, right: 0, bottom: 0, child: _library()),
          Positioned(left: 0, right: 0, bottom: 0, child: _home()),
        ],
      );

  Widget _home() => Center(
        child: AnimatedIcon(
          size: animProperties.homeSize.value,
          icon: AnimatedIcons.menu_home,
          progress: animProperties.homeProgress,
        ),
      );

  Widget _star() => Transform.translate(
        offset: animProperties.starOffset.value,
        child: Icon(Icons.star, size: animProperties.starSize.value),
      );

  Widget _casino() => Transform.translate(
        offset: animProperties.casinoOffset.value,
        child: Icon(Icons.casino, size: animProperties.casinoSize.value),
      );

  Widget _library() => Transform.translate(
        offset: animProperties.libraryOffset.value,
        child: Icon(Icons.photo_library, size: animProperties.librarySize.value),
      );

  Widget _video() => Transform.translate(
        offset: animProperties.videoOffset.value,
        child: Icon(Icons.videocam, size: animProperties.videoSize.value),
      );

  Widget _battery() => Transform.translate(
        offset: animProperties.batteryOffset.value,
        child: Icon(Icons.battery_alert, size: animProperties.batterySize.value),
      );

  Widget _phone() => Transform.translate(
        offset: animProperties.phoneOffset.value,
        child: Icon(Icons.phone, size: animProperties.phoneSize.value),
      );
}
