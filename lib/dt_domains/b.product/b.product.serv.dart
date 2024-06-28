part of '_index.dart';

class ProductServ {
  void init() {
    logxx.i(ProductServ, '...');
  }

  setSelectedId(String id) {
    _pv.rxSelectedId.refresh();
    _pv.rxSelectedId.setState((s) => id);
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

  initProductDetail() {
    _pv.rxProductDetail.stateAsync = _rp.readProduct(_pv.rxSelectedId.st);
  }

  Future delete() async {
    await _rp.deleteProduct(_pv.rxSelectedId.st);
    _pv.rxProductList.st = [..._pv.rxProductList.st]..removeWhere((element) => element.id == _pv.rxSelectedId.st);
  }
}
