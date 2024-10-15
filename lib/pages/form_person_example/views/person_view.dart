import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/person_notifier.dart';
import '../widgets/person_dialog.dart';

class PersonListView extends ConsumerWidget {
  const PersonListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncPeople = ref.watch(personListNotifierProvider);
    final personNotifier = ref.read(personListNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Person List')),
      body: asyncPeople.when(
        data: (people) {
          return ListView.builder(
            itemCount: people.length,
            itemBuilder: (context, index) {
              final person = people[index];
              return ListTile(
                title: Text(person.name),
                subtitle: Text('Age: ${person.age}'),
                onTap: () => showPersonDialog(context, ref, person, index),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: personNotifier.isDeleting
                      ? null // Disable delete button while deleting
                      : () => personNotifier.deletePerson(index),
                ),
                // Show personalized loading indicator for deletion
                leading: personNotifier.isDeleting ? const CircularProgressIndicator() : null,
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
      ),
      // Update the floating action button on the PersonListView
      floatingActionButton: personNotifier.isAdding
          ? const CircularProgressIndicator()
          : FloatingActionButton(
              onPressed: () => showPersonDialog(context, ref, null, -1),
              child: const Icon(Icons.add),
            ),
    );
  }
}
