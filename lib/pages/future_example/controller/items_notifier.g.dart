// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemsHash() => r'eeea9e177380c871af3cbc3e00f19d35b84d5d11';

/// See also [items].
@ProviderFor(items)
final itemsProvider = AutoDisposeFutureProvider<List<String>>.internal(
  items,
  name: r'itemsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$itemsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ItemsRef = AutoDisposeFutureProviderRef<List<String>>;
String _$itemDetailHash() => r'a8bbc33927ccb4a9189785cc5d36003d1d410262';

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

/// See also [itemDetail].
@ProviderFor(itemDetail)
const itemDetailProvider = ItemDetailFamily();

/// See also [itemDetail].
class ItemDetailFamily extends Family<AsyncValue<List<String>>> {
  /// See also [itemDetail].
  const ItemDetailFamily();

  /// See also [itemDetail].
  ItemDetailProvider call(
    String selectedItem,
  ) {
    return ItemDetailProvider(
      selectedItem,
    );
  }

  @override
  ItemDetailProvider getProviderOverride(
    covariant ItemDetailProvider provider,
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
  String? get name => r'itemDetailProvider';
}

/// See also [itemDetail].
class ItemDetailProvider extends AutoDisposeFutureProvider<List<String>> {
  /// See also [itemDetail].
  ItemDetailProvider(
    String selectedItem,
  ) : this._internal(
          (ref) => itemDetail(
            ref as ItemDetailRef,
            selectedItem,
          ),
          from: itemDetailProvider,
          name: r'itemDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$itemDetailHash,
          dependencies: ItemDetailFamily._dependencies,
          allTransitiveDependencies:
              ItemDetailFamily._allTransitiveDependencies,
          selectedItem: selectedItem,
        );

  ItemDetailProvider._internal(
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
  Override overrideWith(
    FutureOr<List<String>> Function(ItemDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ItemDetailProvider._internal(
        (ref) => create(ref as ItemDetailRef),
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
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _ItemDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ItemDetailProvider && other.selectedItem == selectedItem;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, selectedItem.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ItemDetailRef on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `selectedItem` of this provider.
  String get selectedItem;
}

class _ItemDetailProviderElement
    extends AutoDisposeFutureProviderElement<List<String>> with ItemDetailRef {
  _ItemDetailProviderElement(super.provider);

  @override
  String get selectedItem => (origin as ItemDetailProvider).selectedItem;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
