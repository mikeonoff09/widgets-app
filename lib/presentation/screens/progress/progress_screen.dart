import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';

class ProgressScreen extends StatelessWidget {
  static const String name = AppRoutes.progress;

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Screen'),
      ),
      body: const _ProgressPageView(),
    );
  }
}

class _ProgressPageView extends StatelessWidget {
  const _ProgressPageView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text('Circular Progress Indicator'),
          const SizedBox(height: 20),
          CircularProgressIndicator(
            backgroundColor: Colors.black26,
            color: colors.primary,
            strokeWidth: 5, // defaults to 4
          ),
          const SizedBox(height: 20),
          const _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return StreamBuilder<Object>(
      stream: Stream.periodic(
        const Duration(milliseconds: 100),
        (count) => (count * 2) / 100,
      ).takeWhile((value) => value <= 1),
      builder: (context, snapshot) {
        final value = snapshot.data ?? 0.0;
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Controled Progress Indicators: $value'),
              const SizedBox(height: 20),
              CircularProgressIndicator(
                value: value as double,
                color: colors.primary,
              ),
              const SizedBox(height: 20),
              LinearProgressIndicator(
                value: value,
              ),
            ],
          ),
        );
      },
    );
  }
}
