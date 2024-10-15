// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemsNotifierHash() => r'cfa20eb47336a47dcfdc25270003ac25b818d13a';

/// See also [ItemsNotifier].
@ProviderFor(ItemsNotifier)
final itemsNotifierProvider =
    AutoDisposeAsyncNotifierProvider<ItemsNotifier, List<String>>.internal(
  ItemsNotifier.new,
  name: r'itemsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$itemsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ItemsNotifier = AutoDisposeAsyncNotifier<List<String>>;
String _$itemDetailNotifierHash() =>
    r'98489e302ef4b40c1391edea016ad0863ac0faaa';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ItemDetailNotifier
    extends BuildlessAutoDisposeAsyncNotifier<String> {
  late final String selectedItem;

  FutureOr<String> build(
    String selectedItem,
  );
}

/// See also [ItemDetailNotifier].
@ProviderFor(ItemDetailNotifier)
const itemDetailNotifierProvider = ItemDetailNotifierFamily();

/// See also [ItemDetailNotifier].
class ItemDetailNotifierFamily extends Family<AsyncValue<String>> {
  /// See also [ItemDetailNotifier].
  const ItemDetailNotifierFamily();

  /// See also [ItemDetailNotifier].
  ItemDetailNotifierProvider call(
    String selectedItem,
  ) {
    return ItemDetailNotifierProvider(
      selectedItem,
    );
  }

  @override
  ItemDetailNotifierProvider getProviderOverride(
    covariant ItemDetailNotifierProvider provider,
  ) {
    return call(
      provider.selectedItem,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'itemDetailNotifierProvider';
}

/// See also [ItemDetailNotifier].
class ItemDetailNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ItemDetailNotifier, String> {
  /// See also [ItemDetailNotifier].
  ItemDetailNotifierProvider(
    String selectedItem,
  ) : this._internal(
          () => ItemDetailNotifier()..selectedItem = selectedItem,
          from: itemDetailNotifierProvider,
          name: r'itemDetailNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$itemDetailNotifierHash,
          dependencies: ItemDetailNotifierFamily._dependencies,
          allTransitiveDependencies:
              ItemDetailNotifierFamily._allTransitiveDependencies,
          selectedItem: selectedItem,
        );

  ItemDetailNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.selectedItem,
  }) : super.internal();

  final String selectedItem;

  @override
  FutureOr<String> runNotifierBuild(
    covariant ItemDetailNotifier notifier,
  ) {
    return notifier.build(
      selectedItem,
    );
  }

  @override
  Override overrideWith(ItemDetailNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ItemDetailNotifierProvider._internal(
        () => create()..selectedItem = selectedItem,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        selectedItem: selectedItem,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ItemDetailNotifier, String>
      createElement() {
    return _ItemDetailNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ItemDetailNotifierProvider &&
        other.selectedItem == selectedItem;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, selectedItem.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ItemDetailNotifierRef on AutoDisposeAsyncNotifierProviderRef<String> {
  /// The parameter `selectedItem` of this provider.
  String get selectedItem;
}

class _ItemDetailNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ItemDetailNotifier, String>
    with ItemDetailNotifierRef {
  _ItemDetailNotifierProviderElement(super.provider);

  @override
  String get selectedItem =>
      (origin as ItemDetailNotifierProvider).selectedItem;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
