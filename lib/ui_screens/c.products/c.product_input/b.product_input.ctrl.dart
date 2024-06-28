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
    );
    final imageUrl = await _sv.uploadImage(_dt.rxPickedFile.st, product.id);
    final productWithImage = product.copyWith(imageUrl: imageUrl);
    await _sv.createProduct(productWithImage);
    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, productWithImage);
    nav.back();
  }

  submit() => _dt.rxForm.submit();

  pickImage() async {
    final imagePicker = await ImagePicker().pickImage(source: ImageSource.gallery);
    _dt.rxPickedFile.st = imagePicker;
  }
}
