import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/pages/counter/provider/counter_provider.dart';

import '../../waiting/views/waiting_screen.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 26),
              const Text(
                'Counter App',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Consumer(builder: (context, ref, child) { // Using consumer is just like using Obx rather than building the entire thing
                final counter = ref.watch(counterNotifierProvider);
                return Text('Current count: ${counter.count}');
              }),
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
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProviderScope(overrides: [counterNotifierProvider], child: const WaitingScreen())),
                  );
                },
                child: const Text('Visit next route'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
