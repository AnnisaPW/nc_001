part of '_index.dart';

class ProductEditCtrl {
  init() => logxx.i(ProductEditCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future updateProduct() async {
    final productEdit = Product(
      id: _dt.rxProductDetail.st!.id,
      name: _dt.rxName.st.value,
      description: _dt.rxDescription.st.value,
      price: int.parse(_dt.rxPrice.st.value),
      quantity: int.parse(_dt.rxQuantity.st.value),
      createdAt: _dt.rxProductDetail.st!.createdAt,
      updatedAt: DateTime.now().toString(),
    );

    await _sv.updateProduct(productEdit);
    nav.back();
    nav.back();
  }

  submit() => _dt.rxForm.st.submit();
}
