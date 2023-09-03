import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = AppRoutes.snackbars;

  const SnackbarScreen({super.key});


  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Hello from SnackBar'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Screen'),
      ),
      body: const _SnackbarPageView(),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.remove_red_eye_rounded),
        label: const Text('Show Snackbar'),
        onPressed: () => _showSnackbar(context),
      ),
    );
  }

}

class _SnackbarPageView extends StatelessWidget {
  const _SnackbarPageView();

  @override
  Widget build(BuildContext context) {
    return const Text('Snackbar Page View');
  }
}
