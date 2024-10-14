import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart';

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

@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  CounterState build() {
    return CounterState();
  }

  void increment({int incrementNumber = 1}) {
    state = state.copyWith(count: state.count + incrementNumber);
  }

  void decrement({int decrementNumber = 1}) {
    state = state.copyWith(count: state.count - decrementNumber);
  }
}
