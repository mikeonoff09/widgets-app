import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = AppRoutes.counter;

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tapCounter = ref.watch(counterProvider);
    // final isDarkMode = ref.watch(isDarkModeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Counter'),
        actions: [
          IconButton(
            icon: Icon(
              ref.read(isDarkModeProvider.notifier).state
                  ? Icons.sunny
                  : Icons.dark_mode,
            ),
            onPressed: () {
              ref
                  .read(isDarkModeProvider.notifier)
                  .update((state) => state = !state);
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { 
          // updating looks better
          // ref.read(counterProvider.notifier).update((state) => state++);
          ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          'Valor: $tapCounter',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
