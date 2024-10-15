import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'items_notifier.g.dart';

// Simulating an API call to get a list of items
@riverpod
class ItemsNotifier extends _$ItemsNotifier {
  @override
  Future<List<String>> build() {
    return Future.delayed(const Duration(seconds: 2), () {
      return ['Item 1', 'Item 2', 'Item 3'];
    });
  }
}


// Simulating an API call to fetch details for a clicked item
@riverpod
class ItemDetailNotifier extends _$ItemDetailNotifier {
  @override
  Future<String> build(String selectedItem) {
    return Future.delayed(const Duration(seconds: 1), () {
      return 'Details of $selectedItem';
    });
  }
}