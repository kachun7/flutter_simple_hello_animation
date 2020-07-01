import 'dart:core';

import 'package:flutter/material.dart';

class HelloAnimationProperties {
  static const kStartY = -30.0;
  static const kStarSize = 50.0;
  static const kCasinoSize = 50.0;
  static const kLibrarySize = 50.0;
  static const kVideoSize = 50.0;
  static const kBatterySize = 40.0;
  static const kPhoneSize = 30.0;

  HelloAnimationProperties({@required this.controller});

  final AnimationController controller;

  Animation<double> get homeProgress => Tween(
        begin: 0.0,
        end: 1.0,
      ).animate(
        CurvedAnimation(parent: controller, curve: const Interval(0.1, 0.4, curve: Curves.elasticOut)),
      );

  Animation<double> get homeSize => Tween(
        begin: 10.0,
        end: 110.0,
      ).animate(
        CurvedAnimation(parent: controller, curve: const Interval(0.1, 0.4, curve: Curves.elasticOut)),
      );

  Animation<double> get starSize => Tween(
        begin: 0.0,
        end: kStarSize,
      ).animate(
        CurvedAnimation(parent: controller, curve: const Interval(0.2, 0.6, curve: Curves.elasticOut)),
      );

  Animation<Offset> get starOffset => Tween(
        begin: const Offset(0.0, kStartY),
        end: const Offset(-45.0, -75.0),
      ).animate(
        CurvedAnimation(parent: controller, curve: const Interval(0.2, 0.6, curve: Curves.elasticOut)),
      );

  Animation<double> get casinoSize => Tween(
        begin: 0.0,
        end: kCasinoSize,
      ).animate(
        CurvedAnimation(parent: controller, curve: const Interval(0.2, 0.6, curve: Curves.elasticOut)),
      );

  Animation<Offset> get casinoOffset => Tween(
        begin: const Offset(0.0, kStartY),
        end: const Offset(0.0, -90.0),
      ).animate(
        CurvedAnimation(parent: controller, curve: const Interval(0.2, 0.6, curve: Curves.elasticOut)),
      );

  Animation<double> get librarySize => Tween(begin: 0.0, end: kLibrarySize).animate(
        CurvedAnimation(parent: controller, curve: const Interval(0.2, 0.6, curve: Curves.elasticOut)),
      );

  Animation<Offset> get libraryOffset => Tween(
        begin: const Offset(0.0, kStartY),
        end: const Offset(65.0, -60.0),
      ).animate(
        CurvedAnimation(parent: controller, curve: const Interval(0.2, 0.6, curve: Curves.elasticOut)),
      );

  Animation<double> get videoSize => Tween(
        begin: 0.0,
        end: kVideoSize,
      ).animate(
        CurvedAnimation(parent: controller, curve: const Interval(0.2, 0.6, curve: Curves.elasticOut)),
      );

  Animation<Offset> get videoOffset => Tween(
        begin: const Offset(0.0, kStartY),
        end: const Offset(-65.0, -110.0),
      ).animate(
        CurvedAnimation(parent: controller, curve: const Interval(0.2, 0.6, curve: Curves.elasticOut)),
      );

  Animation<double> get batterySize => Tween(
        begin: 0.0,
        end: kBatterySize,
      ).animate(
        CurvedAnimation(parent: controller, curve: const Interval(0.2, 0.6, curve: Curves.elasticOut)),
      );

  Animation<Offset> get batteryOffset => Tween(
        begin: const Offset(0.0, kStartY),
        end: const Offset(0.0, -140.0),
      ).animate(
        CurvedAnimation(parent: controller, curve: const Interval(0.2, 0.6, curve: Curves.elasticOut)),
      );

  Animation<double> get phoneSize => Tween(
        begin: 0.0,
        end: kPhoneSize,
      ).animate(
        CurvedAnimation(parent: controller, curve: const Interval(0.2, 0.6, curve: Curves.elasticOut)),
      );

  Animation<Offset> get phoneOffset => Tween(
        begin: const Offset(0.0, kStartY),
        end: const Offset(55.0, -120.0),
      ).animate(
        CurvedAnimation(parent: controller, curve: const Interval(0.2, 0.6, curve: Curves.elasticOut)),
      );
}
