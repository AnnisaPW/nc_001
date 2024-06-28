part of '_index.dart';

class ProductDetailCtrl {
  init() => logxx.i(ProductDetailCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  delete() async {
    await _sv.delete();
    await Future.delayed(200.milliseconds);
    nav.back();
  }
}
