import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/items_notifier.dart';

class ItemsView extends ConsumerWidget {
  const ItemsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the ItemsNotifier provider to get the list of items
    final itemsAsync = ref.watch(itemsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Async Items List'),
      ),
      body: itemsAsync.when(
        data: (items) {
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];

              return ListTile(
                title: Text(item),
                onTap: () {
                  // Show item details when clicked
                  _showItemDetail(context, ref, item);
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }

  void _showItemDetail(BuildContext context, WidgetRef ref, String item) {
    // Fetch the item detail using ItemDetailNotifier when an item is clicked

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(item),
          content: Consumer(builder: (context, ref, child) {
            final itemDetailAsync = ref.watch(itemDetailProvider(item));
            return itemDetailAsync.when(
              data: (detail) => Text(detail.join(' ')),
              loading: () => const CircularProgressIndicator(),
              error: (err, stack) => Text('Error: $err'),
            );
          }),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
