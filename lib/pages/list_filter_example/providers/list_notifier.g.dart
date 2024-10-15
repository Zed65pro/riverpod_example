// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listNotifierHash() => r'f420d37336a1f5634363da0072cfdc4ae2db64d4';

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
