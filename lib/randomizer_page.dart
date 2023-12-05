import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tuto/main.dart';

class RandomizerPage extends ConsumerWidget {
  const RandomizerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerRef = ref.watch(appProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Randomizer"),
      ),
      body: Center(
          child: Text(
        '${providerRef.generatedNumber?.toString()}  Max: ${providerRef.max.toString()}',
        style: const TextStyle(
          fontSize: 42,
        ),
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Generate'),
        onPressed: () {
          ref.read(appProvider.notifier).generateRandomNumber();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
