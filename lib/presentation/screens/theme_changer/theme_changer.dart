import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChanger extends ConsumerWidget {
  static const String name = AppRoutes.themeChanger;
  const ThemeChanger({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer Screen'),
        actions: [
          IconButton(
            icon: Icon(
              isDarkMode ? Icons.sunny : Icons.dark_mode,
            ),
            onPressed: () {
              ref
                  .read(isDarkModeProvider.notifier)
                  .update((state) => state = !state);
            },
          )
        ],
      ),
      body: const _ColorsView(),
    );
  }
}

class _ColorsView extends ConsumerWidget {
  const _ColorsView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedColor = ref.watch(selectedColorIndex);
    return ListView.builder(
      itemCount: Colors.primaries.length,
      itemBuilder: (context, index) {
        final color = Colors.primaries[index];
        return RadioListTile(
          title: Text(
            color.toString(),
            style: TextStyle(color: color),
          ),
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            ref.read(selectedColorIndex.notifier).update((state) => index);
          },
        );
      },
    );
  }
}
