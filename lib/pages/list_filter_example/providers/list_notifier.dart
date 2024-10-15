import 'package:my_app/pages/list_filter_example/data/films_data.dart';
import 'package:my_app/pages/list_filter_example/models/film.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_notifier.g.dart';

@riverpod
class ListNotifier extends _$ListNotifier {
  @override
  Future<List<Film>> build() async {
    // Your code to fetch and return the list of films goes here
    await Future.delayed(const Duration(seconds: 2));
    return filmsList;
  }

  void toggleFavorite(String id) {
    final currentFilms = state.value;

    state = AsyncValue.data(currentFilms!
        .map(
          (film) => film.id == id ? film.copyWith(favorite: !film.favorite) : film,
        )
        .toList());
  }

  List<Film> filteredItems(FilterOption filter) {
    final currentFilms = state.value;

    if (currentFilms == null) return [];

    switch (filter) {
      case FilterOption.favorite:
        return currentFilms!.where((film) => film.favorite).toList();
      case FilterOption.unfavorite:
        return currentFilms!.where((film) => !film.favorite).toList();
      case FilterOption.all:
      default:
        return currentFilms!;
    }
  }
}

enum FilterOption { all, favorite, unfavorite }

@riverpod
class FilterNotifier extends _$FilterNotifier {
  @override
  FilterOption build() {
    return FilterOption.all;
  }

  void changeFilter(FilterOption newFilter) {
    state = newFilter;
  }
}
