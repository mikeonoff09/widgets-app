import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/router/app_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = AppRoutes.buttons;
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      floatingActionButton: const _FloatingActionButtons(),
      body: const _ButtonsView(),
    );
  }
}

class _FloatingActionButtons extends StatelessWidget {
  const _FloatingActionButtons();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton.large(
          heroTag: '1',
          onPressed: () {},
          child: const Icon(Icons.arrow_back_ios),
        ),
        const SizedBox(height: 20),
        FloatingActionButton.extended(
          heroTag: '2',
          onPressed: () {},
          label: const Icon(Icons.arrow_back_ios),
        ),
        const SizedBox(height: 20),
        const FloatingActionButton.small(
          heroTag: '3',
          onPressed: null,
          child: Icon(Icons.arrow_back_ios),
        ),
        const SizedBox(height: 20),
        FloatingActionButton.extended(
          heroTag: '4',
          onPressed: () {},
          icon: const Icon(Icons.thumb_up),
          label: const Text(' Approve'),
        ),
      ],
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated Button Disabled'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarms_rounded),
              label: const Text('ElevatedButton.icon'),
            ),
            BackButton(
              onPressed: () => context.pop(),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('FilledButton'),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.thumb_up_alt),
              label: const Text('Filledbutton.icon'),
            ),
            FilledButton.tonal(
              onPressed: () {},
              child: const Text('FilledButton.tonal'),
            ),
            FilledButton.tonalIcon(
              onPressed: () {},
              icon: const Text('FilledButton.tonal'),
              label: const Text('FilledButton.tonalIcon'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('OutlinedButton'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('TextButton'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.thumb_up_alt_outlined),
              label: const Text('textbutton.icon'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration),
              style: ButtonStyle(
                iconColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStatePropertyAll(primaryColor),
              ),
            ),
            const CustomButton()
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: Colors.blue,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10,
            ),
            child: Text(
              'Hola Mundo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
