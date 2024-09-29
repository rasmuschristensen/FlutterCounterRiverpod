import 'package:flutter/material.dart';
import 'package:flutter_counter_riverpod/providers/counter_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifierProvider = ref.watch(counterNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('It Counts'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(notifierProvider.toString()),
            ElevatedButton(
                onPressed: () =>
                    ref.read(counterNotifierProvider.notifier).increment(),
                child: const Text('UP!')),
            ElevatedButton(
                onPressed: () =>
                    ref.read(counterNotifierProvider.notifier).decrement(),
                child: const Text('DOWN!'))
          ],
        ),
      ),
    );
  }
}
