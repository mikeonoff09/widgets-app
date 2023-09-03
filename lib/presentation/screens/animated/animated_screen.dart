import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';

class AnimatedScreen extends StatelessWidget {
  static const String name = AppRoutes.animated;

  const AnimatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Unimplemented
    return Scaffold(
      appBar: AppBar(title: const Text(name)),
    );
  }
}
