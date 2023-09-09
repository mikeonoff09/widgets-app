import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';

class CounterScreen extends StatelessWidget {
  static const String name = AppRoutes.counter;

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Riverpod Counter')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          'Valor: 10',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
