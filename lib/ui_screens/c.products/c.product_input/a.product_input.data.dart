part of '_index.dart';

class ProductInputData {
  final rxTitle = 'Product Input'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxProductList = _pv.rxProductList;
}
