part of '_index.dart';

class ProductRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from ProductRepo');
    return x;
  }

  Future<List<Product>> readProducts() async {
    List<Product> products = [];
    final result = await x1FbFirestore.st.readCollection(_pv.coll);
    for (var product in result.docs) {
      products.add(Product.fromMap(product.data()));
    }
    return products;
  }
}
