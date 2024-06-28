part of '_index.dart';

class ProductInputCtrl {
  init() => logxx.i(ProductInputCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future createProduct() async {
    final id = const Uuid().v1();
    final product = Product(
      id: id,
      name: generateWordPairs().take(2).join(' '),
      price: Random().nextInt(100000),
      quantity: Random().nextInt(1000),
      description: generateWordPairs().take(4).join(' '),
      createdAt: DateTime.now().toString(),
      imageUrl: "",
      updatedAt: "",
    );
    await _sv.createProduct(product);
    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, product);
    nav.back();
  }
}
