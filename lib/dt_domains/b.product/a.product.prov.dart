part of '_index.dart';

class ProductProv {
  final rxRandom = RM.inject<int>(
    () => 0,
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (p0) => _sv.onSetState(),
    ),
  );

  final coll = 'products';

  final rxSelectedId = RM.inject(() => '');

  final rxProductLoader = RM.injectFuture<List<Product>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.initProductLoader(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProducts = snap.data;
          _sv.addToList(moreProducts!);
        }
      },
    ),
  );

  final rxProductList = RM.inject<List<Product>>(() => []);

  final rxProductDetail = RM.injectFuture<Product?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => _sv.initProductDetail(),
    ),
  );
}
