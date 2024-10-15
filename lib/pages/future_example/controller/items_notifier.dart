import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'items_notifier.g.dart';



// Why are we not using notifier? instead we use simple function with decorator to make it a provider
// The reasoning is simple because in this scenario and only this scenario, we are not using
// the state, we are just making a simulated "API" call to retrieve data to display.
// we are not modifying it, shuffling it etc.

// Simulating an API call to get a list of items
@riverpod
Future<List<String>> items(ItemsRef ref) async {
  await Future.delayed(const Duration(seconds: 2));
  return ['Item 1', 'Item 2', 'Item 3'];
}

// Simulating an API call to fetch details for a clicked item
// Why are we watching previous provider? to get its items
@riverpod
Future<List<String>> itemDetail(ItemDetailRef ref, String selectedItem) async {
  final items = ref.watch(itemsProvider.future);
  await Future.delayed(const Duration(seconds: 1));
  return items;
}