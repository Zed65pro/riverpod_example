import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/person_notifier.dart';
import '../models/person_model.dart';

void showPersonDialog(BuildContext context, WidgetRef ref, Person? person, int index) {
  final nameController = TextEditingController(text: person?.name);
  final ageController = TextEditingController(text: person != null ? person.age.toString() : '');

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(person == null ? 'Add Person' : 'Edit Person'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: ageController,
              decoration: const InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              if (person == null) {
                ref.read(personListNotifierProvider.notifier).addPerson(nameController.text, int.parse(ageController.text));
              } else {
                ref.read(personListNotifierProvider.notifier).updatePerson(index, nameController.text, int.parse(ageController.text));
              }
              Navigator.of(context).pop();
            },
            child: Text(person == null ? 'Create' : 'Update'),
          ),
        ],
      );
    },
  );
}
