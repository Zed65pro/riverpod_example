import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterState {
  CounterState({this.count = 0});

  int count = 0;

  // Manual copyWith method
  CounterState copyWith({int? count}) {
    return CounterState(
      count: count ?? this.count, // If the new count is null, use the existing one
    );
  }
}

class CounterNotifier extends Notifier<CounterState> {
  @override
  build() {
    return CounterState();
  }

  void increment({int incrementNumber = 1}) {
    state = state.copyWith(count: state.count + incrementNumber);
  }

  void decrement({int decrementNumber = 1}) {
    state = state.copyWith(count: state.count - decrementNumber);
  }
}

final counterNotifierProvider = NotifierProvider<CounterNotifier, CounterState>(() {
  return CounterNotifier();
});
