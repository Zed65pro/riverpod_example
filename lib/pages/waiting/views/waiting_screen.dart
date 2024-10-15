import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../counter/provider/counter_provider.dart';

class WaitingScreen extends ConsumerWidget {
  const WaitingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterNotifierProvider);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.grey.shade300,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 26),
              const Text(
                'Test screen to check counter state in another scope',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text('Current count: ${counter.count}'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.read(counterNotifierProvider.notifier).increment();
                },
                child: const Text('Increment'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.read(counterNotifierProvider.notifier).decrement();
                },
                child: const Text('Decrement'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Pop'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
