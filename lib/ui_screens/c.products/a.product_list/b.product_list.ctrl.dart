part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  select(String id) {
    _sv.setSelectedId(id);
    nav.to(Routes.productDetail);
  }

  signOut() async {
    await Serv.auth.signOut();
  }
}
