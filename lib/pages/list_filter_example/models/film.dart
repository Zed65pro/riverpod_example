import 'package:uuid/uuid.dart';

class Film {
  final String id;
  final int number;
  final String title;
  final String description;
  final bool favorite;

  Film({
    required this.number,
    required this.title,
    required this.description,
    this.favorite = false,
  }) : id = const Uuid().v4();


  Film copyWith({bool? favorite}) {
    return Film(
      number: number,
      title: title,
      description: description,
      favorite: favorite ?? this.favorite, // Use the provided favorite or the current one
    );
  }
}
