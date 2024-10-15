// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listNotifierHash() => r'bc81bea2a80c9755dddd1f5a97e5fc46aa1dca92';

/// See also [ListNotifier].
@ProviderFor(ListNotifier)
final listNotifierProvider =
    AutoDisposeAsyncNotifierProvider<ListNotifier, List<Film>>.internal(
  ListNotifier.new,
  name: r'listNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$listNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ListNotifier = AutoDisposeAsyncNotifier<List<Film>>;
String _$filterNotifierHash() => r'c02e8a5dfcfff5f184273175f92113c9a51b5bf7';

/// See also [FilterNotifier].
@ProviderFor(FilterNotifier)
final filterNotifierProvider =
    AutoDisposeNotifierProvider<FilterNotifier, FilterOption>.internal(
  FilterNotifier.new,
  name: r'filterNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filterNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FilterNotifier = AutoDisposeNotifier<FilterOption>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
