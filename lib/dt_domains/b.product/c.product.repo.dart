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

  Future<dynamic> createProduct(Product product) async {
    await x1FbFirestore.st.createDocument(_pv.coll, product.id, product.toMap());
  }

  Future<Product> readProduct(String doc) async {
    final result = await x1FbFirestore.st.readDocument(_pv.coll, doc);
    return Product.fromMap(result.data() ?? {});
  }

  Future<dynamic> deleteProduct(String doc) async {
    await x1FbFirestore.st.deleteDocument(_pv.coll, doc);
  }

  Future<dynamic> updateProduct(Product product) async {
    await x1FbFirestore.st.createDocument(_pv.coll, product.id, product.toMap());
  }

  Future<String> uploadImage(XFile? pickedFile, String doc) async {
    final result = await x1FbStorage.st.uploadFile(
      pickedFile: pickedFile,
      ref: '${_pv.coll}/${_pv.rxSelectedId.st}',
    );
    return result;
  }

  Future<void> deleteImage() async {
    await x1FbStorage.st.deleteFile('${_pv.coll}/${_pv.rxSelectedId.st}');
  }
}
