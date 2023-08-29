import 'dart:math';

import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0.0'},
  // {'elevation': 1.0, 'label': 'Elevation 1.0'},
  {'elevation': 2.0, 'label': 'Elevation 2.0'},
  // {'elevation': 3.0, 'label': 'Elevation 3.0'},
  // {'elevation': 4.0, 'label': 'Elevation 4.0'},
  {'elevation': 5.0, 'label': 'Elevation 5.0'},
];

class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cards Screen'),
        ),
        body: const _CardsView(),
      ),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            (card) => _CardType1(
              label: card['label'],
              elevation: card['elevation'],
            ),
          ),
          ...cards.map(
            (card) => _CardType2(
              label: card['label'],
              elevation: card['elevation'],
            ),
          ),
          const _CardType3(),
          ...cards.map(
            (card) => _CardType4(
              label: card['label'],
              elevation: card['elevation'],
            ),
          ),
          // space
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final double elevation;

  final String label;

  const _CardType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(
                    Icons.more_vert_outlined,
                  ),
                  onPressed: () {},
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(label),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  final double elevation;

  final String label;

  const _CardType2({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: colors.primary)),
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(
                    Icons.more_vert_outlined,
                  ),
                  onPressed: () {},
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(label),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CardType3 extends StatelessWidget {
  const _CardType3();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    // all the colors available in the theme
    final colorsFromTheme = <String, Color>{
      'primary': colors.primary,
      'secondary': colors.secondary,
      'tertiary': colors.tertiary,
      'error': colors.error,
      'onError1': colors.errorContainer,
      'outline': colors.outline,
      'surface': colors.surface,
      'surfaceVariant': colors.surfaceVariant,
      'background': colors.background,
      'inversePrimary': colors.inversePrimary,
      'scrim': colors.scrim,
      // the colors have a container variant
      'primaryContainer': colors.primaryContainer,
      'secondaryContainer': colors.secondaryContainer,
      'tertiaryContainer': colors.tertiaryContainer,
      // the colors have a `on` variant used to contrast with the color
      'onPrimary': colors.onPrimary,
      'onSecondary': colors.onSecondary,
      'onSurface': colors.onSurface,
      'onBackground': colors.onBackground,
      'onError': colors.onError,
    };

    return Column(
      children: [
        ...colorsFromTheme.entries.map(
          (entry) => Card(
            color: entry.value, // Fills the background with a color
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: colors.primary),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: const Icon(
                          Icons.more_vert_outlined,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        entry.key,
                        style: TextStyle(
                          color: entry.value == colors.primary
                              ? colors.onPrimary
                              : entry.value == colors.secondary
                                  ? colors.onSecondary
                                  : Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _CardType4 extends StatelessWidget {
  final double elevation;

  final String label;

  const _CardType4({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    // variable with a random number between 0 and 1000
    // final random = Random().nextInt(1000);
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: colors.surfaceVariant),
      ),
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${Random().nextInt(1000)}/500/250/',
            fit: BoxFit.cover,
            height: 250,
            errorBuilder: (context, error, stackTrace) => const SizedBox(
              height: 250,
              child: Center(
                child: Text('Error al cargar la imagen'),
              ),
            ),
            loadingBuilder: (context, child, loadingProgress) =>
                loadingProgress == null
                    ? child
                    : const SizedBox(
                        height: 250,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
            // frameBuilder: (context, child, frame, wasSynchronouslyLoaded) => child,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
              ),
              // color: Colors.white.withOpacity(0.5), // Not when decoration is provided
              child: IconButton(
                icon: const Icon(
                  Icons.more_vert_outlined,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
