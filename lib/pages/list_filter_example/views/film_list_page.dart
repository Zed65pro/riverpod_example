import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/film.dart';
import '../providers/list_notifier.dart';

class FilmListPage extends StatelessWidget {
  const FilmListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Film List'),
        actions: const [FilterDropdown()],
      ),
      body: const FilmListView(),
    );
  }
}

class FilterDropdown extends ConsumerWidget {
  const FilterDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterOption = ref.watch(filterNotifierProvider);
    return DropdownButton<FilterOption>(
      value: filterOption,
      onChanged: (newValue) {
        if (newValue != null) {
          ref.read(filterNotifierProvider.notifier).changeFilter(newValue);
        }
      },
      items: FilterOption.values.map((filter) {
        return DropdownMenuItem(
          value: filter,
          child: Text(filter.toString().split('.').last),
        );
      }).toList(),
    );
  }
}

class FilmListView extends ConsumerWidget {
  const FilmListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filmItems = ref.watch(listNotifierProvider);
    final filter = ref.watch(filterNotifierProvider);

    return filmItems.when(
      data: (films) {
        final filteredFilms = ref.read(listNotifierProvider.notifier).filteredItems(filter);
        return ListView.builder(
          itemCount: filteredFilms.length,
          itemBuilder: (context, index) {
            final film = filteredFilms[index];
            return FilmListTile(
              film: film,
              ref: ref,
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(child: Text('Error: $error')),
    );
  }
}

class FilmListTile extends StatelessWidget {
  final Film film;
  final WidgetRef ref;

  const FilmListTile({super.key, required this.film, required this.ref});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(film.title),
      subtitle: Text('Favorite: ${film.favorite}'),
      trailing: IconButton(
        icon: Icon(film.favorite ? Icons.favorite : Icons.favorite_border),
        onPressed: () => ref.read(listNotifierProvider.notifier).toggleFavorite(film.id),
      ),
    );
  }
}
