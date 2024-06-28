part of '_index.dart';

class ProductInputCtrl {
  init() => logxx.i(ProductInputCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future createProduct() async {
    final id = const Uuid().v1();
    final product = Product(
      id: id,
      name: _dt.rxName.value,
      price: int.parse(_dt.rxPrice.value),
      quantity: int.parse(_dt.rxQuantity.value),
      description: _dt.rxDescription.value,
      createdAt: DateTime.now().toString(),
      imageUrl: "",
      updatedAt: "",
    );
    await _sv.createProduct(product);
    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, product);
    nav.back();
  }

  submit() => _dt.rxForm.submit();
}
