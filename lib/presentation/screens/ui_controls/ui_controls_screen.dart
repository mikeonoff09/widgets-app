import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = AppRoutes.uiControls;

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Unimplemented
    return Scaffold(
      appBar: AppBar(title: const Text(name)),
    );
  }
}
