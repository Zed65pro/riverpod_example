import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/person_model.dart';
part 'person_notifier.g.dart';

@riverpod
class PersonListNotifier extends _$PersonListNotifier {
  // Can use local states to update ui accordingly need to be in ref.watch scope tho
  bool isAdding = false;
  bool isUpdating = false;
  bool isDeleting = false;

  // Simulate fetching people from an API
  @override
  Future<List<Person>> build() async {
    await Future.delayed(const Duration(seconds: 2), () {}); // Simulating API delay
    return [
      Person(name: 'John Doe', age: 25),
      Person(name: 'Jane Smith', age: 30),
    ];
  }

  // Simulate adding a person via an API call
  Future<void> addPerson(String name, int age) async {
    isAdding = true;
    state = AsyncValue.data(state.value ?? []); // Show current data

    // Simulate the delay for an API call
    await Future.delayed(const Duration(seconds: 1));

    final currentPeople = state.value ?? [];

    // Create the new person and update the state with the new list
    final newPerson = Person(name: name, age: age);
    state = AsyncValue.data([...currentPeople, newPerson]);

    isAdding = false; // Reset loading state
  }

  // Simulate updating a person via an API call
  Future<void> updatePerson(int index, String name, int age) async {
    // Set the state to loading while waiting for the operation to complete
    isUpdating = true;
    state = AsyncValue.data(state.value ?? []); // Show current data

    // Simulate the delay for an API call
    await Future.delayed(const Duration(seconds: 1));

    // Retrieve the current list from the state if available
    final currentPeople = state.value ?? [];

    // Update the person at the specified index
    final updatedPerson = Person(name: name, age: age);
    state = AsyncValue.data([
      for (int i = 0; i < currentPeople.length; i++)
        if (i == index) updatedPerson else currentPeople[i]
    ]);

    isUpdating = false; // Reset loading state
  }

  // Simulate deleting a person via an API call
  Future<void> deletePerson(int index) async {
    // Set the state to loading while waiting for the operation to complete
    isDeleting = true;
    state = AsyncValue.data(state.value ?? []); // Show current data

    // Simulate the delay for an API call
    await Future.delayed(const Duration(seconds: 1));

    // Retrieve the current list from the state if available
    final currentPeople = state.value ?? [];

    // Remove the person at the specified index and update the state
    state = AsyncValue.data([...currentPeople]..removeAt(index));

    isDeleting = false; // Reset loading state
  }
}
