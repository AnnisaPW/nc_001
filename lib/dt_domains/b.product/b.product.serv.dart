part of '_index.dart';

class ProductServ {
  void init() {
    logxx.i(ProductServ, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(ProductServ, 'rxCounter setState success');
  }

  initProductLoader() {
    _pv.rxProductLoader.stateAsync = _rp.readProducts();
  }

  addToList(List<Product> moreProducts) {
    _pv.rxProductList.st = [..._pv.rxProductList.st, ...moreProducts];
  }

  Future createProduct(Product product) async {
    await _rp.createProduct(product);
  }
}
